unit EntidadeFilial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFEntidadeFilial = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    Label1: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    BtCep: TcxButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    BtCodmunic: TcxButton;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtCepClick(Sender: TObject);
    procedure BtCodmunicClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntidadeFilial: TFEntidadeFilial;

implementation

uses Principal,  DB,  metodosServ, UBiblio, Municipio, DM, DMGerLicitacao, Entidade;

{$R *.dfm}

procedure TFEntidadeFilial.BtCepClick(Sender: TObject);
var
  temp : TStringList;
begin
    if (FDMGerLicitacao.TEntidadeFilialCEP.Value <> '') and (length(FDMGerLicitacao.TEntidadeFilialCEP.Value) = 9) and (IsConnectedToInternet) then
    begin
      temp := TStringList.Create;
      temp.Assign(buscaCep(StringReplace(FDMGerLicitacao.TEntidadeFilialCEP.Value, '-', '',[rfReplaceAll])));
      if temp.Strings[0] = 'CEP não encontrado!' then
      begin
        showmessage('CEP não encontrado!');
        abort;
      end;

      if temp.Strings[0] <> null then
        FDMGerLicitacao.TEntidadeFilialENDERECO.Value := UpperCase(temp.Strings[0])
      else
        FDMGerLicitacao.TEntidadeFilialENDERECO.Value := '';

      if temp.Strings[1] <> null then
        FDMGerLicitacao.TEntidadeFilialBAIRRO.Value := UpperCase(temp.Strings[1])
      else
        FDMGerLicitacao.TEntidadeFilialBAIRRO.Value := '';

      if temp.Strings[2] <> null then
        FDMGerLicitacao.TEntidadeFilialCIDADE.Value := UpperCase(temp.Strings[2])
      else
        FDMGerLicitacao.TEntidadeFilialCIDADE.Value := '';

      if temp.Strings[3] <> null then
        FDMGerLicitacao.TEntidadeFilialUF.Value := UpperCase(temp.Strings[3])
      else
        FDMGerLicitacao.TEntidadeFilialUF.Value := '';



      if FDMGerLicitacao.TEntidadeFilialCIDADE.Value <> '' then
      begin
        fdm.QBuscaMunic.Close;
        fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := FDMGerLicitacao.TEntidadeFilialCIDADE.Value;
        fdm.QBuscaMunic.Open;
        FDMGerLicitacao.TEntidadeFilialCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
        FDMGerLicitacao.TEntidadeFilialCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;
        FDMGerLicitacao.TEntidadeFilialCODMUNICUF.Value := fdm.QBuscaMunicCODMUNICUF.value;

      end;
      dbedit6.SetFocus;

    end;
end;

procedure TFEntidadeFilial.BtCodmunicClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFMunicipio,FMunicipio);
      FMunicipio.PConsulta.Visible := true;
      if FMunicipio.ShowModal = mrok then
      begin
        FDMGerLicitacao.TEntidadeFilialCODESTADO.Value := fdm.TMunicipioID_ESTADO.Value;
        FDMGerLicitacao.TEntidadeFilialCODMUNICUF.Value := fdm.TMunicipioCODMUNICUF.Value;
        FDMGerLicitacao.TEntidadeFilialCODMUNIC.Value := fdm.TMunicipioID_MUNICIPIO.value;
        FDMGerLicitacao.TEntidadeFilialCIDADE.Value := fdm.TMunicipioDESCRICAO.value;
        FDMGerLicitacao.TEntidadeFilialUF.Value := fdm.TMunicipioUF.value;
      end;
    finally
      FMunicipio.Free;
    end;
end;

procedure TFEntidadeFilial.BtFecharClick(Sender: TObject);
begin
    FDMGerLicitacao.TEntidadeFilial.Cancel;
    close;
end;

procedure TFEntidadeFilial.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if FDMGerLicitacao.TEntidadeFilialENDERECO.value = '' then
    begin
      showmessage('O endereço é obrigatório!');
      DBEdit1.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o local de entrega '+FDMGerLicitacao.TEntidadeFilialENDERECO.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if FDMGerLicitacao.TEntidadeFilial.State = dsinsert then
        FEntidade.codultfilial := FEntidade.codultfilial + 1
      else
        editando := true;
      FDMGerLicitacao.TEntidadeFilialITEM.Value := FEntidade.codultfilial;
      FDMGerLicitacao.TEntidadeFilial.Post;
      if editando then
      begin
        FDMGerLicitacao.TEntidadeFilial.Last;
        FEntidade.codultfilial := FDMGerLicitacao.TEntidadeFilialITEM.Value;
      end;
      FDMGerLicitacao.TEntidadeFilial.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if FDMGerLicitacao.TEntidadeFilial.State = dsedit then
        editando := true;

      FDMGerLicitacao.TEntidadeFilial.cancel;
      if editando then
      begin
        FDMGerLicitacao.TEntidadeFilial.Last;
        FEntidade.codultfilial := FDMGerLicitacao.TEntidadeFilialITEM.Value;
      end;
      FDMGerLicitacao.TEntidadeFilial.Append;
      DBEdit2.SetFocus;


    end;
end;

end.

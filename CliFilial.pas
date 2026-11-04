unit CliFilial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFCliFilial = class(TForm)
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
  FCliFilial: TFCliFilial;

implementation

uses Principal, DMCliente, DB, Cliente, metodosServ, UBiblio, Municipio, DM;

{$R *.dfm}

procedure TFCliFilial.BtCepClick(Sender: TObject);
var
  temp : TStringList;
begin
    if (fdmcliente.TCliFilialCEP.Value <> '') and (length(fdmcliente.TCliFilialCEP.Value) = 9) and (IsConnectedToInternet) then
    begin
      temp := TStringList.Create;
      temp.Assign(buscaCep(StringReplace(fdmcliente.TCliFilialCEP.Value, '-', '',[rfReplaceAll])));
      if temp.Strings[0] = 'CEP não encontrado!' then
      begin
        showmessage('CEP não encontrado!');
        abort;
      end;

      if temp.Strings[0] <> null then
        fdmcliente.TCliFilialENDERECO.Value := UpperCase(temp.Strings[0])
      else
        fdmcliente.TCliFilialENDERECO.Value := '';

      if temp.Strings[1] <> null then
        fdmcliente.TCliFilialBAIRRO.Value := UpperCase(temp.Strings[1])
      else
        fdmcliente.TCliFilialBAIRRO.Value := '';

      if temp.Strings[2] <> null then
        fdmcliente.TCliFilialCIDADE.Value := UpperCase(temp.Strings[2])
      else
        fdmcliente.TCliFilialCIDADE.Value := '';

      if temp.Strings[3] <> null then
        fdmcliente.TCliFilialUF.Value := UpperCase(temp.Strings[3])
      else
        fdmcliente.TCliFilialUF.Value := '';



      if fdmcliente.TCliFilialCIDADE.Value <> '' then
      begin
        fdm.QBuscaMunic.Close;
        fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := fdmcliente.TCliFilialCIDADE.Value;
        fdm.QBuscaMunic.Open;
        fdmcliente.TCliFilialCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
        fdmcliente.TCliFilialCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;
        fdmcliente.TCliFilialCODMUNICUF.Value := fdm.QBuscaMunicCODMUNICUF.value;

      end;
      dbedit6.SetFocus;

    end;
end;

procedure TFCliFilial.BtCodmunicClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFMunicipio,FMunicipio);
      FMunicipio.PConsulta.Visible := true;
      if FMunicipio.ShowModal = mrok then
      begin
        fdmcliente.TCliFilialCODESTADO.Value := fdm.TMunicipioID_ESTADO.Value;
        fdmcliente.TCliFilialCODMUNICUF.Value := fdm.TMunicipioCODMUNICUF.Value;
        fdmcliente.TCliFilialCODMUNIC.Value := fdm.TMunicipioID_MUNICIPIO.value;
        fdmcliente.TCliFilialCIDADE.Value := fdm.TMunicipioDESCRICAO.value;
        fdmcliente.TCliFilialUF.Value := fdm.TMunicipioUF.value;
      end;
    finally
      FMunicipio.Free;
    end;
end;

procedure TFCliFilial.BtFecharClick(Sender: TObject);
begin
    fdmcliente.TCliFilial.Cancel;
    close;
end;

procedure TFCliFilial.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if fdmcliente.TCliFilialENDERECO.value = '' then
    begin
      showmessage('O endereço é obrigatório!');
      DBEdit1.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o local de entrega '+fdmcliente.TCliFilialENDERECO.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if fdmcliente.TCliFilial.State = dsinsert then
        FCliente.codultfilial := FCliente.codultfilial + 1
      else
        editando := true;
      fdmcliente.TCliFilialITEM.Value := FCliente.codultfilial;
      fdmcliente.TCliFilial.Post;
      if editando then
      begin
        fdmcliente.TCliFilial.Last;
        FCliente.codultfilial := fdmcliente.TCliFilialITEM.Value;
      end;
      fdmcliente.TCliFilial.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if fdmcliente.TCliFilial.State = dsedit then
        editando := true;

      fdmcliente.TCliFilial.cancel;
      if editando then
      begin
        fdmcliente.TCliFilial.Last;
        FCliente.codultfilial := fdmcliente.TCliFilialITEM.Value;
      end;
      fdmcliente.TCliFilial.Append;
      DBEdit2.SetFocus;


    end;
end;

end.

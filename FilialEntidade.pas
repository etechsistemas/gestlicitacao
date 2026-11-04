unit FilialEntidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, Grids, DBGrids, dxSkinsCore,
  dxSkinBlack;

type
  TFFilialEntidade = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
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
    BtAddCont: TcxButton;
    BtRevCont: TcxButton;
    DBGrid4: TDBGrid;
    Panel2: TPanel;
    cxButton4: TcxButton;
    BtCancel: TcxButton;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtCepClick(Sender: TObject);
    procedure BtAddContClick(Sender: TObject);
    procedure BtRevContClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codcliente : Integer;
  end;

var
  FFilialEntidade: TFFilialEntidade;

implementation

uses Principal, DB, Cliente, metodosServ, UBiblio, DMGerLicitacao;

{$R *.dfm}

procedure TFFilialEntidade.BtAddContClick(Sender: TObject);
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
      if checaform(Fcliente) then
      begin
        if FDMGerLicitacao.TEntidadeFilial.State = dsinsert then
          FCliente.codultfilial := FCliente.codultfilial + 1
        else
          editando := true;
        FDMGerLicitacao.TEntidadeFilialITEM.Value := FCliente.codultfilial;
        FDMGerLicitacao.TEntidadeFilial.Post;
        FDMGerLicitacao.QConFilial.Refresh;
        if editando then
        begin
          FDMGerLicitacao.TEntidadeFilial.Last;
          FCliente.codultfilial := FDMGerLicitacao.TEntidadeFilialITEM.Value;
        end;
      end
      else
      begin
        if FDMGerLicitacao.QConFilial.RecordCount > 0 then
        begin
          FDMGerLicitacao.QConFilial.Last;
          FDMGerLicitacao.TEntidadeFilialITEM.Value := FDMGerLicitacao.QConFilialITEM.Value + 1;
          FDMGerLicitacao.TEntidadeFilial.Post;
          FDMGerLicitacao.TEntidadeFilial.ApplyUpdates(0);
        end
        else
        begin
          FDMGerLicitacao.TEntidadeFilialITEM.Value := 1;
          FDMGerLicitacao.TEntidadeFilial.Post;
          FDMGerLicitacao.TEntidadeFilial.ApplyUpdates(0);
        end;
        FDMGerLicitacao.QConFilial.Refresh;
      end;
      FDMGerLicitacao.TEntidadeFilial.Append;
      DBEdit4.SetFocus;
    end
    else
    begin
      if FDMGerLicitacao.TEntidadeFilial.State = dsedit then
        editando := true;

      FDMGerLicitacao.TEntidadeFilial.cancel;
      if editando then
      begin
        FDMGerLicitacao.TEntidadeFilial.Last;
        FCliente.codultfilial := FDMGerLicitacao.TEntidadeFilialITEM.Value;
      end;
      FDMGerLicitacao.TEntidadeFilial.Append;
      DBEdit4.SetFocus;


    end;
end;

procedure TFFilialEntidade.BtCancelClick(Sender: TObject);
begin
    modalresult := mrcancel;
end;

procedure TFFilialEntidade.BtCepClick(Sender: TObject);
var
  temp : TStringList;
begin
    if (FDMGerLicitacao.TEntidadeFilialCEP.Value <> '') and (length(FDMGerLicitacao.TEntidadeFilialCEP.Value)=9) and (IsConnectedToInternet) then
    begin
      temp := TStringList.Create;
      temp.Assign(buscaCep(StringReplace(FDMGerLicitacao.TEntidadeFilialCEP.Value,'-','',[rfReplaceAll])));
      if temp.Strings[0] = 'CEP não encontrado!' then
      begin
        showmessage('CEP não encontrado!');
        abort;
      end;
      FDMGerLicitacao.TEntidadeFilialENDERECO.Value := temp.Strings[0];
      FDMGerLicitacao.TEntidadeFilialBAIRRO.Value := temp.Strings[1];
      FDMGerLicitacao.TEntidadeFilialCIDADE.Value := temp.Strings[2];
      FDMGerLicitacao.TEntidadeFilialUF.Value := temp.Strings[3];
      dbedit6.SetFocus;
    end;
end;

procedure TFFilialEntidade.BtFecharClick(Sender: TObject);
begin
    FDMGerLicitacao.TEntidadeFilial.Cancel;
    close;
end;

procedure TFFilialEntidade.BtRevContClick(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeFilial.Locate('CODCLI;CODUSU;ITEM',VarArrayOf([FDMGerLicitacao.QConFilialCODCLI.Value,FDMGerLicitacao.QConFilialCODUSU.Value,FDMGerLicitacao.QConFilialITEM.Value]),[]) then
  begin
    FDMGerLicitacao.TEntidadeFilial.Delete;
    FDMGerLicitacao.TEntidadeFilial.ApplyUpdates(0);
    FDMGerLicitacao.QConFilial.Refresh;
  end
  else
    ShowMessage('Não é possível excluir este item!');
end;

procedure TFFilialEntidade.cxButton1Click(Sender: TObject);
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
        FCliente.codultfilial := FCliente.codultfilial + 1
      else
        editando := true;
      FDMGerLicitacao.TEntidadeFilialITEM.Value := FCliente.codultfilial;
      FDMGerLicitacao.TEntidadeFilial.Post;
      if editando then
      begin
        FDMGerLicitacao.TEntidadeFilial.Last;
        FCliente.codultfilial := FDMGerLicitacao.TEntidadeFilialITEM.Value;
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
        FCliente.codultfilial := FDMGerLicitacao.TEntidadeFilialITEM.Value;
      end;
      FDMGerLicitacao.TEntidadeFilial.Append;
      DBEdit2.SetFocus;


    end;
end;

procedure TFFilialEntidade.cxButton4Click(Sender: TObject);
begin
    ModalResult := mrok;
end;

procedure TFFilialEntidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDMGerLicitacao.TEntidadeFilial.Cancel;
end;

procedure TFFilialEntidade.FormShow(Sender: TObject);
begin
  FDMGerLicitacao.TEntidadeFilial.Open;
  FDMGerLicitacao.TEntidadeFilial.Append;
  DBEdit4.SetFocus;
end;

end.

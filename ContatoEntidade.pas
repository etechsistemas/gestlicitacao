unit ContatoEntidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinBlack, cxPC, cxControls, ExtCtrls,
  Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Buttons,
  cxContainer, cxGroupBox, cxRadioGroup, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxNavigator, cxDBNavigator, cxButtons, DBCtrls,
  Mask, Grids, DBGrids, cxCheckBox, cxDBEdit, cxLookAndFeels, dxSkinsCore,
  dxSkinscxPCPainter, SQLTimSt, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFContatoEntidade = class(TForm)
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    BtAddCont: TcxButton;
    BtRevCont: TcxButton;
    cxButton4: TcxButton;
    procedure BtAddContClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure BtRevContClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codcliente : integer;
  end;

var
  FContatoEntidade: TFContatoEntidade;

implementation

uses Principal, ubiblio, DMGerLicitacao;

{$R *.dfm}

procedure TFContatoEntidade.BtAddContClick(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeContNOME.Value <> '' then
  begin
   //FDMGerLicitacao.TEntidadeContCODCLI.Value := codcliente;
   // FDMGerLicitacao.TEntidadeContCODUSU.Value := FdmCliente.QCliPesqCODUSU.Value;

    if FDMGerLicitacao.QConContatos.RecordCount > 0 then
    begin
      FDMGerLicitacao.QConContatos.Last;
      FDMGerLicitacao.TEntidadeContITEM.Value := FDMGerLicitacao.QConContatosITEM.Value + 1;
    end
    else
    begin
      FDMGerLicitacao.TEntidadeContITEM.Value := 1;
    end;

    FDMGerLicitacao.TEntidadeCont.Post;
    FDMGerLicitacao.TEntidadeCont.ApplyUpdates(0);
    FDMGerLicitacao.QConContatos.Refresh;
    FDMGerLicitacao.TEntidadeCont.Append;
    DBEdit2.SetFocus;
  end
  else
    ShowMessage('Favor preencher o campo nome!');

end;

procedure TFContatoEntidade.BtRevContClick(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeCont.Locate('CODCLI;CODUSU;ITEM',VarArrayOf([FDMGerLicitacao.QConContatosCODCLI.Value,FDMGerLicitacao.QConContatosCODUSU.Value,FDMGerLicitacao.QConContatosITEM.Value]),[]) then
  begin
    FDMGerLicitacao.TEntidadeCont.Delete;
    FDMGerLicitacao.TEntidadeCont.ApplyUpdates(0);
    FDMGerLicitacao.QConContatos.Refresh;
  end
  else
    ShowMessage('Não é possível excluir este item!');
end;

procedure TFContatoEntidade.cxButton4Click(Sender: TObject);
begin
  ModalResult := mrok;
end;

procedure TFContatoEntidade.cxButton5Click(Sender: TObject);
begin
  ModalResult := mrno;
end;

procedure TFContatoEntidade.DBGrid3DblClick(Sender: TObject);
begin
  if Panel2.Visible then
    ModalResult := mrok;
end;

procedure TFContatoEntidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDMGerLicitacao.TEntidadeCont.Cancel;
end;

procedure TFContatoEntidade.FormShow(Sender: TObject);
begin
 { if not (codcliente > 0) then
  begin
    showmessage('É necessário selecionar um cliente!');
    PostMessage(FContato.Handle,WM_CLOSE,0,0);
    abort;
  end;}


  FDMGerLicitacao.TEntidadeCont.Open;
  FDMGerLicitacao.TEntidadeCont.Append;
  DBEdit2.SetFocus;
end;

end.

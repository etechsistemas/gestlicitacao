unit TipoEntidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxCheckBox,
  cxDBEdit, Mask, DBCtrls, cxButtons, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, cxStyles,
  dxSkinscxPCPainter, SQLTimSt;

type
  TFTipoEntidade = class(TForm)
    Panel2: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PConsulta: TPanel;
    BtOk: TBitBtn;
    BtCancel: TBitBtn;
    Panel6: TPanel;
    Label3: TLabel;
    EdNome: TEdit;
    CkInativas: TCheckBox;
    PDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtInsereClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CkInativasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTipoEntidade: TFTipoEntidade;

implementation

uses DM, Principal, UBiblio, metodosServ, relatorio, DMGerLicitacao;
{$R *.dfm}

procedure TFTipoEntidade.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FDMGerLicitacao.TTipoEntidade.Filtered := false;
  FDMGerLicitacao.TTipoEntidade.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDMGerLicitacao.TTipoEntidade.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not CkInativas.Checked then
  begin
    if FDMGerLicitacao.TTipoEntidade.Filter <> '' then
      FDMGerLicitacao.TTipoEntidade.Filter := FDMGerLicitacao.TTipoEntidade.Filter + ' and ';
    FDMGerLicitacao.TTipoEntidade.Filter := FDMGerLicitacao.TTipoEntidade.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDMGerLicitacao.TTipoEntidade.Filtered := true;
  if (PConsulta.Visible = true) and (Key = 13) then
    ModalResult := mrok;
end;

procedure TFTipoEntidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDMGerLicitacao.TTipoEntidade.State in [dsInsert, dsEdit] then
  begin
    ShowMessage(
      'Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;
end;

procedure TFTipoEntidade.FormShow(Sender: TObject);
begin
  FDMGerLicitacao.TTipoEntidade.Open;
  FDMGerLicitacao.TTipoEntidade.Filtered := false;
  FDMGerLicitacao.TTipoEntidade.Filter := '';
  FDMGerLicitacao.TTipoEntidade.Filter := ' STATUS = ' + QuotedStr('A');
  FDMGerLicitacao.TTipoEntidade.Filtered := true;
  EdNome.SetFocus;
end;

procedure TFTipoEntidade.BtInsereClick(Sender: TObject);
begin
  FDMGerLicitacao.TTipoEntidade.Append;
  FDMGerLicitacao.TTipoEntidadeCODIGO.Value := 0;
  FDMGerLicitacao.TTipoEntidadeCODUSU.Value := usulogado;
  FDMGerLicitacao.TTipoEntidadeSTATUS.Value := 'A';
  FDMGerLicitacao.TTipoEntidadeDATACAD.Value := Date;
  PDados.Enabled := true;
  Panel4.Enabled := false;
  desativa;
  DBEdit2.SetFocus;
end;

procedure TFTipoEntidade.CkInativasClick(Sender: TObject);
begin
  FDMGerLicitacao.TTipoEntidade.Filtered := false;
  FDMGerLicitacao.TTipoEntidade.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDMGerLicitacao.TTipoEntidade.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not (CkInativas.Checked) then
  begin
    if FDMGerLicitacao.TTipoEntidade.Filter <> '' then
      FDMGerLicitacao.TTipoEntidade.Filter := FDMGerLicitacao.TTipoEntidade.Filter + ' and ';
    FDMGerLicitacao.TTipoEntidade.Filter := FDMGerLicitacao.TTipoEntidade.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDMGerLicitacao.TTipoEntidade.Filtered := true;
end;

procedure TFTipoEntidade.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFTipoEntidade.BtEditaClick(Sender: TObject);
begin
  if not (FDMGerLicitacao.TTipoEntidade.RecordCount > 0) then
  begin
    FDMGerLicitacao.TTipoEntidade.Edit;
    PDados.Enabled := true;
    Panel4.Enabled := false;
    desativa;
    DBEdit2.SetFocus;
  end
  else
  begin
    showmessage('Nenhum registro selecionado!');
  end;
end;

procedure TFTipoEntidade.BtCancelaClick(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    FDMGerLicitacao.TTipoEntidade.Cancel;
    PDados.Enabled := false;
    Panel4.Enabled := true;
    ativa;
  end;
end;

procedure TFTipoEntidade.BtConfirmaClick(Sender: TObject);
var
  codigo: integer;
begin
  if FDMGerLicitacao.TTipoEntidadeNOME.Value = '' then
  begin
    ShowMessage('O nome é obrigatório!');
    DBEdit2.SetFocus;
    abort;
  end;

  if messagedlg('Confirmar o tipo de entidade ' + FDMGerLicitacao.TTipoEntidadeNOME.Value + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (FDMGerLicitacao.TTipoEntidadeCODIGO.Value = 0) then
      codigo := ultimo('tipoentidade', 'CODIGO')
    else
      codigo := FDMGerLicitacao.TTipoEntidadeCODIGO.Value;

    if (FDMGerLicitacao.TTipoEntidadeCODIGO.Value = 0) then
      FDMGerLicitacao.TTipoEntidadeCODIGO.Value := codigo;
    FDMGerLicitacao.TTipoEntidade.Post;
    FDMGerLicitacao.TTipoEntidade.ApplyUpdates(0);

    if   FDMGerLicitacao.QTipoEntidadePesq.active then
        FDMGerLicitacao.QTipoEntidadePesq.Refresh;

    ativa;
    PDados.Enabled := false;
    Panel4.Enabled := true;
    BtInsere.SetFocus;
  end;
end;

procedure TFTipoEntidade.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if PConsulta.Visible = true then
    ModalResult := mrok;
end;

procedure TFTipoEntidade.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
{  if PConsulta.Visible = true then
    ModalResult := mrok;
}end;

end.

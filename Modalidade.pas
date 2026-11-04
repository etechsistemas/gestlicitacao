unit Modalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxCheckBox,
  cxDBEdit, Mask, DBCtrls, cxNavigator, cxDBNavigator, cxButtons, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, cxStyles,
  dxSkinscxPCPainter, SQLTimSt;

type
  TFModalidade = class(TForm)
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
  FModalidade: TFModalidade;

implementation

uses DM, Principal, UBiblio, metodosServ, relatorio, DMGerLicitacao;
{$R *.dfm}

procedure TFModalidade.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FDMGerLicitacao.TModalidade.Filtered := false;
  FDMGerLicitacao.TModalidade.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDMGerLicitacao.TModalidade.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not CkInativas.Checked then
  begin
    if FDMGerLicitacao.TModalidade.Filter <> '' then
      FDMGerLicitacao.TModalidade.Filter := FDMGerLicitacao.TModalidade.Filter + ' and ';
    FDMGerLicitacao.TModalidade.Filter := FDMGerLicitacao.TModalidade.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDMGerLicitacao.TModalidade.Filtered := true;
  if (PConsulta.Visible = true) and (Key = 13) then
    ModalResult := mrok;
end;

procedure TFModalidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDMGerLicitacao.TModalidade.State in [dsInsert, dsEdit] then
  begin
    ShowMessage(
      'Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;
end;

procedure TFModalidade.FormShow(Sender: TObject);
begin
  FDMGerLicitacao.TModalidade.Open;
  FDMGerLicitacao.TModalidade.Filtered := false;
  FDMGerLicitacao.TModalidade.Filter := '';
  FDMGerLicitacao.TModalidade.Filter := ' STATUS = ' + QuotedStr('A');
  FDMGerLicitacao.TModalidade.Filtered := true;
  EdNome.SetFocus;
end;

procedure TFModalidade.BtInsereClick(Sender: TObject);
begin
  FDMGerLicitacao.TModalidade.Append;
  FDMGerLicitacao.TModalidadeCODIGO.Value := 0;
  FDMGerLicitacao.TModalidadeCODUSU.Value := usulogado;
  FDMGerLicitacao.TModalidadeSTATUS.Value := 'A';
  FDMGerLicitacao.TModalidadeDATACAD.Value := Date;
  PDados.Enabled := true;
  Panel4.Enabled := false;
  desativa;
  DBEdit2.SetFocus;
end;

procedure TFModalidade.CkInativasClick(Sender: TObject);
begin
  FDMGerLicitacao.TModalidade.Filtered := false;
  FDMGerLicitacao.TModalidade.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDMGerLicitacao.TModalidade.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not CkInativas.Checked then
  begin
    if FDMGerLicitacao.TModalidade.Filter <> '' then
      FDMGerLicitacao.TModalidade.Filter := FDMGerLicitacao.TModalidade.Filter + ' and ';
    FDMGerLicitacao.TModalidade.Filter := FDMGerLicitacao.TModalidade.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDMGerLicitacao.TModalidade.Filtered := true;
end;

procedure TFModalidade.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFModalidade.BtEditaClick(Sender: TObject);
begin
  FDMGerLicitacao.TModalidade.Edit;
  PDados.Enabled := true;
  Panel4.Enabled := false;
  desativa;
  DBEdit2.SetFocus;
end;

procedure TFModalidade.BtCancelaClick(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    FDMGerLicitacao.TModalidade.Cancel;
    PDados.Enabled := false;
    Panel4.Enabled := true;
    ativa;
  end;
end;

procedure TFModalidade.BtConfirmaClick(Sender: TObject);
var
  codigo: integer;
begin
  if FDMGerLicitacao.TModalidadeNOME.Value = '' then
  begin
    ShowMessage('O nome é obrigatório!');
    DBEdit2.SetFocus;
    abort;
  end;

  if messagedlg('Confirmar a modalidade ' + FDMGerLicitacao.TModalidadeNOME.Value + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (FDMGerLicitacao.TModalidadeCODIGO.Value = 0) then
      codigo := ultimo('tipolic', 'CODIGO')
    else
      codigo := FDMGerLicitacao.TModalidadeCODIGO.Value;

    if (FDMGerLicitacao.TModalidadeCODIGO.Value = 0) then
      FDMGerLicitacao.TModalidadeCODIGO.Value := codigo;
    FDMGerLicitacao.TModalidade.Post;
    FDMGerLicitacao.TModalidade.ApplyUpdates(0);

    if FDMGerLicitacao.qmodalidadepesq.Active then
       FDMGerLicitacao.qmodalidadepesq.refresh;

    ativa;
    PDados.Enabled := false;
    Panel4.Enabled := true;
    BtInsere.SetFocus;
  end;
end;

procedure TFModalidade.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if PConsulta.Visible = true then
    ModalResult := mrok;
end;

procedure TFModalidade.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
{  if PConsulta.Visible = true then
    ModalResult := mrok;
}end;

end.

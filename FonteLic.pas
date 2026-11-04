unit FonteLic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxCheckBox,
  cxDBEdit, Mask, DBCtrls, cxButtons, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, cxStyles,
  dxSkinscxPCPainter;

type
  TFFonteLic = class(TForm)
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
  FFonteLic: TFFonteLic;

implementation

uses DM, Principal, UBiblio, metodosServ, relatorio, DMGerLicitacao;
{$R *.dfm}

procedure TFFonteLic.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FDMGerLicitacao.TFonteLic.Filtered := false;
  FDMGerLicitacao.TFonteLic.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDMGerLicitacao.TFonteLic.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not CkInativas.Checked then
  begin
    if FDMGerLicitacao.TFonteLic.Filter <> '' then
      FDMGerLicitacao.TFonteLic.Filter := FDMGerLicitacao.TFonteLic.Filter + ' and ';
    FDMGerLicitacao.TFonteLic.Filter := FDMGerLicitacao.TFonteLic.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDMGerLicitacao.TFonteLic.Filtered := true;
  if (PConsulta.Visible = true) and (Key = 13) then
    ModalResult := mrok;
end;

procedure TFFonteLic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDMGerLicitacao.TFonteLic.State in [dsInsert, dsEdit] then
  begin
    ShowMessage(
      'Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;
end;

procedure TFFonteLic.FormShow(Sender: TObject);
begin
  FDMGerLicitacao.TFonteLic.Open;
  FDMGerLicitacao.TFonteLic.Filtered := false;
  FDMGerLicitacao.TFonteLic.Filter := '';
  FDMGerLicitacao.TFonteLic.Filter := ' STATUS = ' + QuotedStr('A');
  FDMGerLicitacao.TFonteLic.Filtered := true;
  EdNome.SetFocus;
end;

procedure TFFonteLic.BtInsereClick(Sender: TObject);
begin
  FDMGerLicitacao.TFonteLic.Append;
  FDMGerLicitacao.TFonteLicCODIGO.Value := 0;
  FDMGerLicitacao.TFonteLicCODUSU.Value := usulogado;
  FDMGerLicitacao.TFonteLicSTATUS.Value := 'A';
  FDMGerLicitacao.TFonteLicDATACAD.Value := Date;
  PDados.Enabled := true;
  Panel4.Enabled := false;
  desativa;
  DBEdit2.SetFocus;
end;

procedure TFFonteLic.CkInativasClick(Sender: TObject);
begin
  FDMGerLicitacao.TFonteLic.Filtered := false;
  FDMGerLicitacao.TFonteLic.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDMGerLicitacao.TFonteLic.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not CkInativas.Checked then
  begin
    if FDMGerLicitacao.TFonteLic.Filter <> '' then
      FDMGerLicitacao.TFonteLic.Filter := FDMGerLicitacao.TFonteLic.Filter + ' and ';
    FDMGerLicitacao.TFonteLic.Filter := FDMGerLicitacao.TFonteLic.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDMGerLicitacao.TFonteLic.Filtered := true;
end;

procedure TFFonteLic.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFFonteLic.BtEditaClick(Sender: TObject);
begin
  FDMGerLicitacao.TFonteLic.Edit;
  PDados.Enabled := true;
  Panel4.Enabled := false;
  desativa;
  DBEdit2.SetFocus;
end;

procedure TFFonteLic.BtCancelaClick(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    FDMGerLicitacao.TFonteLic.Cancel;
    PDados.Enabled := false;
    Panel4.Enabled := true;
    ativa;
  end;
end;

procedure TFFonteLic.BtConfirmaClick(Sender: TObject);
var
  codigo: integer;
begin
  if FDMGerLicitacao.TFonteLicNOME.Value = '' then
  begin
    ShowMessage('O nome é obrigatório!');
    DBEdit2.SetFocus;
    abort;
  end;

  if messagedlg('Confirmar a fonte de dados ' + FDMGerLicitacao.TFonteLicNOME.Value + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (FDMGerLicitacao.TFonteLicCODIGO.Value = 0) then
      codigo := ultimo('fontelic', 'CODIGO')
    else
      codigo := FDMGerLicitacao.TFonteLicCODIGO.Value;

    if (FDMGerLicitacao.TFonteLicCODIGO.Value = 0) then
      FDMGerLicitacao.TFonteLicCODIGO.Value := codigo;
    FDMGerLicitacao.TFonteLic.Post;
    FDMGerLicitacao.TFonteLic.ApplyUpdates(0);

    if FDMGerLicitacao.QFonteLicPesq.Active then
       FDMGerLicitacao.QFonteLicPesq.refresh;
    ativa;
    PDados.Enabled := false;
    Panel4.Enabled := true;
    BtInsere.SetFocus;
  end;
end;

procedure TFFonteLic.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if PConsulta.Visible = true then
    ModalResult := mrok;
end;

procedure TFFonteLic.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
{  if PConsulta.Visible = true then
    ModalResult := mrok;
}end;

end.

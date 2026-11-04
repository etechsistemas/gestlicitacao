unit TipoCliente;

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
  TFTipoCliente = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CkInativasClick(Sender: TObject);
    procedure geraregra;
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    inserir : boolean;
  public
    { Public declarations }
  end;

var
  FTipoCliente: TFTipoCliente;

implementation

uses DMCliente, Principal, UBiblio, metodosServ, DM, relatorio;
{$R *.dfm}

procedure TFTipoCliente.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down)then
  begin
    FDMCliente.TTipoCliente.Next;
  end;

  if (key = vk_up)then
  begin
    FDMCliente.TTipoCliente.Prior;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
  begin
    cxGrid1DBTableView1DblClick(sender);
  end;
end;

procedure TFTipoCliente.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var codigo : integer;
begin
  codigo := FDMCliente.TTipoClienteCODIGO.Value;

  FDMCliente.TTipoCliente.Filtered := false;
  FDMCliente.TTipoCliente.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDMCliente.TTipoCliente.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not CkInativas.Checked then
  begin
    if FDMCliente.TTipoCliente.Filter <> '' then
      FDMCliente.TTipoCliente.Filter := FDMCliente.TTipoCliente.Filter + ' and ';
    FDMCliente.TTipoCliente.Filter := FDMCliente.TTipoCliente.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDMCliente.TTipoCliente.Filtered := true;

  FDMCliente.TTipoCliente.Locate('CODIGO',codigo,[]);
end;

procedure TFTipoCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDMCliente.TTipoCliente.State in [dsInsert, dsEdit] then
  begin
    ShowMessage(
      'Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;
end;

procedure TFTipoCliente.FormShow(Sender: TObject);
begin
  FDMCliente.TTipoCliente.Open;
  FDMCliente.TTipoCliente.Filtered := false;
  FDMCliente.TTipoCliente.Filter := '';
  FDMCliente.TTipoCliente.Filter := ' STATUS = ' + QuotedStr('A');
  FDMCliente.TTipoCliente.Filtered := true;
  FDMCliente.TTipoCliente.IndexFieldNames := 'NOME';
  EdNome.SetFocus;
  inserir := false;
end;

procedure TFTipoCliente.BtInsereClick(Sender: TObject);
begin
  FDMCliente.TTipoCliente.Append;
  FDMCliente.TTipoClienteCODIGO.Value := 0;
  FDMCliente.TTipoClienteCODUSU.Value := usulogado;
  FDMCliente.TTipoClienteSTATUS.Value := 'A';
  FDMCliente.TTipoClienteDATACAD.Value := DateTimeToSQLTimeStamp(now);
  PDados.Enabled := true;
  inserir := true;
  desativa;
  DBEdit2.SetFocus;
end;

procedure TFTipoCliente.CkInativasClick(Sender: TObject);
begin
  FDMCliente.TTipoCliente.Filtered := false;
  FDMCliente.TTipoCliente.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDMCliente.TTipoCliente.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not (CkInativas.Checked) then
  begin
    if FDMCliente.TTipoCliente.Filter <> '' then
      FDMCliente.TTipoCliente.Filter := FDMCliente.TTipoCliente.Filter + ' and ';
    FDMCliente.TTipoCliente.Filter := FDMCliente.TTipoCliente.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDMCliente.TTipoCliente.Filtered := true;
end;

procedure TFTipoCliente.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFTipoCliente.BtEditaClick(Sender: TObject);
begin
  if not (FDMCliente.TTipoCliente.RecordCount > 0) then
  begin
  FDMCliente.TTipoCliente.Edit;
  PDados.Enabled := true;
  inserir := false;
  desativa;
  DBEdit2.SetFocus;
  end
  else
  begin
    showmessage('Nenhum registro selecionado!')
  end;
end;

procedure TFTipoCliente.BtCancelaClick(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    FDMCliente.TTipoCliente.Cancel;
    PDados.Enabled := false;
    inserir := false;
    ativa;
  end;
end;

procedure TFTipoCliente.BtConfirmaClick(Sender: TObject);
var
  codigo: integer;
begin
  if FDMCliente.TTipoClienteNOME.Value = '' then
  begin
    ShowMessage('O nome é obrigatório!');
    DBEdit2.SetFocus;
    abort;
  end;

  if messagedlg('Confirmar o tipo de mensagem ' + FDMCliente.TTipoClienteNOME.Value + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (FDMCliente.TTipoClienteCODIGO.Value = 0) then
      codigo := ultimo('tipocliente', 'CODIGO')
    else
      codigo := FDMCliente.TTipoClienteCODIGO.Value;

    if (FDMCliente.TTipoClienteCODIGO.Value = 0) then
      FDMCliente.TTipoClienteCODIGO.Value := codigo;
    FDMCliente.TTipoCliente.Post;
    FDMCliente.TTipoCliente.ApplyUpdates(0);
    ativa;
    PDados.Enabled := false;
    BtInsere.SetFocus;
    if inserir then
      geraregra;
    inserir := false;
  end;
end;

procedure TFTipoCliente.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if PConsulta.Visible = true then
    ModalResult := mrok;
end;

procedure TFTipoCliente.geraregra;
var sql : string;
    i : integer;
begin
  sql := '';
  sql := sql + ' insert into regrafiscalsaida(CODSITFISCAL,NOMESITFISCAL,CODTIPOCLI,NOMETIPOCLI,DATACAD,CODUSU,STATUS) ';
  sql := sql + ' select CODIGO,NOME,'+IntToStr(FdmCliente.TTipoClienteCODIGO.Value)+','+QuotedStr(FdmCliente.TTipoClienteNOME.Value)+',getdate(),'+IntToStr(usulogado)+','+QuotedStr('A')+' from sitsaida;';
  ExecSQL(sql);
end;

end.

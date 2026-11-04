unit Pais;

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
  TFPais = class(TForm)
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
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
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
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    DBEdit3: TDBEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPais: TFPais;

implementation

uses Principal, UBiblio, metodosServ, relatorio, DM2;
{$R *.dfm}

procedure TFPais.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FDM2.TPais.Filtered := false;
  FDM2.TPais.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDM2.TPais.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not (CkInativas.Checked) then
  begin
    if FDM2.TPais.Filter <> '' then
      FDM2.TPais.Filter := FDM2.TPais.Filter + ' and ';
    FDM2.TPais.Filter := FDM2.TPais.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDM2.TPais.Filtered := true;
  if (PConsulta.Visible = true) and (Key = 13) then
    ModalResult := mrok;
end;

procedure TFPais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDM2.TPais.State in [dsInsert, dsEdit] then
  begin
    ShowMessage(
      'Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;
end;

procedure TFPais.FormShow(Sender: TObject);
begin
  FDM2.TPais.Open;
  FDM2.TPais.Filtered := false;
  FDM2.TPais.Filter := '';
  FDM2.TPais.Filter := ' STATUS = ' + QuotedStr('A');
  FDM2.TPais.Filtered := true;
  EdNome.SetFocus;
end;

procedure TFPais.BtInsereClick(Sender: TObject);
begin
  FDM2.TPais.Append;
  FDM2.TPaisCODIGO.Value := 0;
  FDM2.TPaisCODUSU.Value := usulogado;
  FDM2.TPaisSTATUS.Value := 'A';
  FDM2.TPaisDATACAD.Value := Date;
  PDados.Enabled := true;
  Panel4.Enabled := false;
  desativa;
  DBEdit3.SetFocus;
end;

procedure TFPais.CkInativasClick(Sender: TObject);
begin
  FDM2.TPais.Filtered := false;
  FDM2.TPais.Filter := '';
  if EdNome.Text <> '' then
  begin
    FDM2.TPais.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
  end;
  if not (CkInativas.Checked) then
  begin
    if FDM2.TPais.Filter <> '' then
      FDM2.TPais.Filter := FDM2.TPais.Filter + ' and ';
    FDM2.TPais.Filter := FDM2.TPais.Filter + ' STATUS = ' + QuotedStr('A');
  end;
  if (EdNome.Text <> '') or not(CkInativas.Checked) then
    FDM2.TPais.Filtered := true;
end;

procedure TFPais.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFPais.BtEditaClick(Sender: TObject);
begin
  if FDM2.TPais.RecordCount > 0 then
  begin
    FDM2.TPais.Edit;
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

procedure TFPais.BtCancelaClick(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    FDM2.TPais.Cancel;
    PDados.Enabled := false;
    Panel4.Enabled := true;
    ativa;
  end;
end;

procedure TFPais.BtConfirmaClick(Sender: TObject);
var
  codigo: integer;
begin
  if FDM2.TPaisNOME.Value = '' then
  begin
    ShowMessage('O nome é obrigatório!');
    DBEdit2.SetFocus;
    abort;
  end;

  if messagedlg('Confirmar o país ' + FDM2.TPaisNOME.Value + '?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (FDM2.TPaisCODIGO.Value = 0) then
      codigo := ultimo('pais', 'CODIGO')
    else
      codigo := FDM2.TPaisCODIGO.Value;

    if (FDM2.TPaisCODIGO.Value = 0) then
      FDM2.TPaisCODIGO.Value := codigo;
    FDM2.TPais.Post;
    FDM2.TPais.ApplyUpdates(0);
    ativa;
    PDados.Enabled := false;
    Panel4.Enabled := true;
    BtInsere.SetFocus;
  end;
end;

procedure TFPais.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if PConsulta.Visible = true then
    ModalResult := mrok;
end;

end.

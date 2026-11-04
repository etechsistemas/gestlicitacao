unit Municipio;

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
  TFMunicipio = class(TForm)
    Panel2: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    BtExcluir: TcxButton;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID_ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_MUNICIPIO: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PConsulta: TPanel;
    BtOk: TBitBtn;
    BtCancel: TBitBtn;
    Panel6: TPanel;
    Label3: TLabel;
    Label13: TLabel;
    EdNome: TEdit;
    CbUf: TComboBox;
    PDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBComboBox2: TDBComboBox;
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtInsereClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CkInativClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CbUfChange(Sender: TObject);
    procedure filtrar();
    procedure BtExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMunicipio: TFMunicipio;

implementation

uses DM, Principal, UBiblio, metodosServ;

{$R *.dfm}

procedure TFMunicipio.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    filtrar;

    if (PConsulta.Visible = true) and (key = 13) then
      ModalResult := mrok;
end;

procedure TFMunicipio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fdm.TMunicipio.State in [dsInsert,dsEdit] then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;
end;

procedure TFMunicipio.FormDestroy(Sender: TObject);
begin
    fdm.TMunicipio.Filtered := false;
    fdm.TMunicipio.Filter := '';
end;

procedure TFMunicipio.FormShow(Sender: TObject);
begin
    FDM.TMunicipio.Open;
    EdNome.SetFocus;
end;

procedure TFMunicipio.BtInsereClick(Sender: TObject);
begin
    FDM.TMunicipio.Append;
    PDados.Enabled := true;
    desativa;
    DBEdit2.SetFocus;
end;

procedure TFMunicipio.CbUfChange(Sender: TObject);
begin
  filtrar;
end;

procedure TFMunicipio.CkInativClick(Sender: TObject);
begin
  filtrar;
end;

procedure TFMunicipio.filtrar();
begin
    fdm.TMunicipio.Filtered := false;
    fdm.TMunicipio.Filter := '';
    if EdNome.Text <> '' then
    begin
        fdm.TMunicipio.Filter := 'DESCRICAO like '+QuotedStr('%'+EdNome.Text+'%');
    end;
    if cbuf.Text <> '' then
    begin
      if fdm.TMunicipio.Filter <> '' then
        fdm.TMunicipio.Filter := fdm.TMunicipio.Filter +' and ';
      fdm.TMunicipio.Filter := fdm.TMunicipio.Filter + ' UF = '+QuotedStr(cbuf.Text);
    end;

    if (EdNome.Text <> '') or (cbuf.Text <> '') then
      fdm.TMunicipio.Filtered := true;
end;

procedure TFMunicipio.cxButton3Click(Sender: TObject);
begin
    close;
end;

procedure TFMunicipio.BtEditaClick(Sender: TObject);
begin
    if FDM.TMunicipio.RecordCount > 0 then
    begin
      FDM.TMunicipio.Edit;
      PDados.Enabled := true;
      desativa;
      DBEdit2.SetFocus;
    end
    else
    begin
      showmessage('Nenhum registro selecionado!');
    end;
end;

procedure TFMunicipio.BtExcluirClick(Sender: TObject);
begin
    if FDM.TMunicipio.RecordCount > 0 then
    begin
      if MessageDlg('Você tem certeza que deseja excluir o registro?',mtConfirmation,[mbYes, mbNo],0) = mrok then
      begin
        FDM.TMunicipio.Delete;
        FDM.TMunicipio.ApplyUpdates(0);
      end;
    end
    else
    begin
      showmessage('Nenhum registro selecionado!');
    end;
end;

procedure TFMunicipio.BtCancelaClick(Sender: TObject);
begin
    if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      FDM.TMunicipio.Cancel;
      PDados.Enabled := false;
      ativa;
    end;
end;

procedure TFMunicipio.BtConfirmaClick(Sender: TObject);
begin
    if messagedlg('Confirmar o município '+FDM.TMunicipioDESCRICAO.Value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      FDM.TMunicipio.Post;
      FDM.TMunicipio.ApplyUpdates(0);

      if FDM.QMunicPesq.Active then
        FDM.QMunicPesq.Refresh;

      ativa;
      PDados.Enabled := False;
      BtInsere.SetFocus;
    end;
end;

procedure TFMunicipio.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if PConsulta.Visible = true then
      ModalResult := mrok;
end;

end.

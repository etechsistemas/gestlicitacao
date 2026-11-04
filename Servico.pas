unit Servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxCustomData, cxGraphics, cxFilter, ComCtrls, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxCheckBox,
  cxDBEdit, Mask, DBCtrls, cxNavigator, cxDBNavigator, cxButtons, ExtCtrls,
  cxPC, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinscxPCPainter, cxStyles, SQLTimSt,
  cxPCdxBarPopupMenu;


type
  TFServico = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    PDados: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    EdNome: TEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    PConsulta: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit20: TDBEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1VALORMEDIO: TcxGridDBColumn;
    cxGrid1DBTableView1CODGRUPO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEGRUPO: TcxGridDBColumn;
    CkInativ: TcxCheckBox;
    cxButton39: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtInsereClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtInativClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControl1Change(Sender: TObject);
    procedure CkInativClick(Sender: TObject);
    procedure cxButton39Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    sql: string;
    codpesq: integer;
    { Public declarations }
  end;

var
  FServico: TFServico;

implementation

uses DM, Principal, UBiblio, metodosServ, relatorio, DMSistema;

{$R *.dfm}

procedure TFServico.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  fdm.QConServico.Filtered := false;

  if EdNome.Text <> '' then
  begin
    fdm.QConServico.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    fdm.QConServico.Filtered:=true;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
    ModalResult := mrok;
end;

procedure TFServico.FormShow(Sender: TObject);
begin
    FDM.TServico.Close;
    FDM.TServico.Filtered := false;
    FDM.TServico.Filter := ' STATUS = '+QuotedStr('A');
    FDM.TServico.Filtered := true;
    FDM.TServico.Open;

    FDM.QConServico.close;
    sql := '';
    sql := sql + ' select CODIGO, DATA, NOME, STATUS, OBSERVACAO, VALORMEDIO';
    sql := sql + ' , SETOR, CODGRUPO, CODUSU, NOMESETOR, NOMEGRUPO';
    sql := sql + ' from servico where status = '+QuotedStr('A');
    FDM.QConServico.Open;

    cxPageControl1.ActivePageIndex := 1;
    EdNome.SetFocus;
end;

procedure TFServico.BtInsereClick(Sender: TObject);
begin
    FDM.TServico.Append;
    FDM.TServicoCODIGO.Value := 0;
    FDM.TServicoCODUSU.Value := usulogado;
    FDM.TServicoSTATUS.Value := 'A';
    FDM.TServicoDATA.Value := DateTimeToSQLTimeStamp(now);
    PDados.Enabled := true;
    desativa;
    DBEdit2.SetFocus;
end;

procedure TFServico.cxButton39Click(Sender: TObject);
var
  sql : String;
  codigo : integer;
begin
  if FDM.TServico.RecordCount > 0 then
  begin
    codigo := ultimo('servico', 'CODIGO');
    sql := '';
    sql := sql + ' INSERT INTO servico(CODIGO,DATA,NOME,STATUS,OBSERVACAO,VALORMEDIO,SETOR,CODGRUPO,CODUSU';
    sql := sql + ' ,NOMESETOR,NOMEGRUPO,CODREGRAFISC,CODREGRAPIS';
    sql := sql + ' ,CODREGRACOFINS,CODGENERO,NOMEGENERO,CODSERVICOLISTA';
    sql := sql + ' ,COMISSAO,TEMPO,DESCSOBPROD, USUALT, DATAALT, RECORRENTE, DIAS)';
    sql := sql + ' select '+inttostr(codigo)+',getdate(),NOME,'+QuotedStr('A')+',OBSERVACAO,VALORMEDIO,SETOR,CODGRUPO,'+inttostr(usulogado);
    sql := sql + ' ,NOMESETOR,NOMEGRUPO,CODREGRAFISC,CODREGRAPIS';
    sql := sql + ' ,CODREGRACOFINS,CODGENERO,NOMEGENERO,CODSERVICOLISTA';
    sql := sql + ' ,COMISSAO,TEMPO,DESCSOBPROD, '+inttostr(usulogado)+', getdate(), RECORRENTE, DIAS';
    sql := sql + ' from servico';
    sql := sql + ' where codigo = '+inttostr(FDM.TServicoCODIGO.Value);

    execsql(sql);
    FDM.TServico.close;
    FDM.TServico.params.ParamByName('CODIGO').AsInteger := codigo;
    FDM.TServico.open;

    showmessage('Serviço duplicado para o código '+inttostr(codigo)+', favor atualizar os dados!');

    BtEditaClick(sender);
  end
  else
  begin
    showmessage('Nenhum registro selecionado!');
  end;
end;

procedure TFServico.cxButton3Click(Sender: TObject);
begin
    close;
end;

procedure TFServico.cxButton8Click(Sender: TObject);
begin
  FDM.TServico.Close;
  FDM.TServico.Params.ParamByName('CODIGO').AsInteger := fdm.QConServicoCODIGO.Value;
  FDM.TServico.Open;
  ModalResult := mrok;
end;

procedure TFServico.cxButton9Click(Sender: TObject);
begin
  ModalResult := mrno;
end;

procedure TFServico.BtEditaClick(Sender: TObject);
begin
    FDM.TServico.Edit;
    PDados.Enabled := true;
    desativa;
    DBEdit2.SetFocus;
end;

procedure TFServico.BtCancelaClick(Sender: TObject);
begin
    if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      FDM.TServico.Cancel;
      PDados.Enabled := false;
      ativa;
    end;
end;

procedure TFServico.BtConfirmaClick(Sender: TObject);
begin
    if FDM.TServicoNOME.Value = '' then
    begin
      showmessage('o nome é obrigatório!');
      DBEdit2.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o serviço '+FDM.TServicoNOME.Value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if (FDM.TServicoCODIGO.Value = 0) then
        FDM.TServicoCODIGO.Value := ultimo('servico','CODIGO');
      FDM.TServico.Post;
      FDM.TServico.ApplyUpdates(0);
      ativa;
      PDados.Enabled := False;
      BtInsere.SetFocus;
      FDM.QConServico.Refresh
    end;
end;

procedure TFServico.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if PConsulta.Visible = true then
    cxButton8Click(sender)
  else
    cxPageControl1.ActivePageIndex := 0;
end;

procedure TFServico.cxPageControl1Change(Sender: TObject);
begin
  if (FDM.TServico.State in [dsinsert, dsedit]) and (cxPageControl1.ActivePageIndex <> 0) then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    cxPageControl1.ActivePageIndex := 0;
  end
  else
  begin
    if (cxPageControl1.ActivePageIndex = 0) and not (FDM.TServico.State in [dsinsert, dsedit]) then
    begin
      FDM.TServico.Close;
      FDM.TServico.Params.ParamByName('CODIGO').AsInteger := fdm.QConServicoCODIGO.Value;
      FDM.TServico.Open;
    end;
  end;
end;

procedure TFServico.cxButton2Click(Sender: TObject);
begin
    //RelCustGrid3(self,cxGrid1DBTableView1,'',fdm.QConServico.RecordCount);
end;

procedure TFServico.cxButton1Click(Sender: TObject);
begin
    close;
end;

procedure TFServico.BtInativClick(Sender: TObject);
begin
  if Fdm.TServico.Filtered then
    Fdm.TServico.Filtered := False
  else
  begin
    Fdm.TServico.Filter := 'STATUS = '+QuotedStr('A');
    Fdm.TServico.Filtered := true;
  end;
end;

procedure TFServico.CkInativClick(Sender: TObject);
begin
  sql := '';
  FDM.QConServico.close;

  if CkInativ.Checked then
  begin
      sql := sql + ' select CODIGO, DATA, NOME, STATUS, OBSERVACAO, VALORMEDIO';
      sql := sql + ' , SETOR, CODGRUPO, CODUSU, NOMESETOR, NOMEGRUPO';
      sql := sql + ' from servico';
  end
  else
  begin
      sql := sql + ' select CODIGO, DATA, NOME, STATUS, OBSERVACAO, VALORMEDIO';
      sql := sql + ' , SETOR, CODGRUPO, CODUSU, NOMESETOR, NOMEGRUPO';
      sql := sql + ' from servico';
      sql := sql + ' where status = '+QuotedStr('A');
  end;
  FDM.QConServico.Open;

  BtInativClick(SENDER);
end;

procedure TFServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDM.TServico.State in [dsInsert,dsEdit] then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;
end;

end.

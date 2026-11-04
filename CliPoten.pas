unit CliPoten;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu;

type
  TFCliPoten = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    PageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Panel2: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    EdNome: TEdit;
    RgFiltro: TcxRadioGroup;
    PConsulta: TPanel;
    PDados: TPanel;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1FONE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEFANTA: TcxGridDBColumn;
    BtImprimir: TcxButton;
    cxTabSheet9: TcxTabSheet;
    Panel6: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label44: TLabel;
    EdCFP: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit39: TDBEdit;
    Panel7: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    EdCnpj: TDBEdit;
    DBEdit22: TDBEdit;
    Panel12: TPanel;
    CkInativ: TcxCheckBox;
    cxButton16: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    DBGrid6: TDBGrid;
    Label16: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    Label42: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    DBEdit4: TDBEdit;
    BtAddCont: TcxButton;
    BtRevCont: TcxButton;
    BtCep: TcxButton;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    BtCodmunic: TcxButton;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    DBGrid3: TDBGrid;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure BtInsereClick(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CkInativosClick(Sender: TObject);
    procedure BtAddContClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure BtRevContClick(Sender: TObject);
    procedure BtCepClick(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure BtInativClick(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxDBLookupComboBox5Exit(Sender: TObject);
    procedure BtCodmunicClick(Sender: TObject);
    procedure cxDBLookupComboBox6Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     codultcont, codpesq: integer;
    sql: String;
  end;

var
  FCliPoten: TFCliPoten;

implementation

uses DMCliente, Principal, UBiblio, DMSistema, DM, metodosServ, relatorio,
  TipoCliente, Municipio, DMCRM, CliPotenCont;
{$R *.dfm}

procedure TFCliPoten.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFCliPoten.cxButton4Click(Sender: TObject);
begin
    ModalResult := mrok;
end;

procedure TFCliPoten.cxButton5Click(Sender: TObject);
begin
  ModalResult := mrNo;
end;

procedure TFCliPoten.cxButton6Click(Sender: TObject);
var
  sql : String;
  codigo : integer;
begin
    sql := '';

    if fdmcrm.TCliPoten.RecordCount > 0 then
    begin
      if not (fdmcrm.TCliPotencodcli.Value > 0) then
      begin
        showmessage('Cliente já gerado, não é possivel gerar novamente!');
        abort;
      end;

      fdmcrm.qconclibusca.close;
      fdmcrm.qconclibusca.params.parambyname('cnpj').asstring := fdmcrm.TCliPotencnpj.Value;
      fdmcrm.qconclibusca.params.parambyname('cpf').asstring := fdmcrm.TCliPotencpf.Value;
      fdmcrm.qconclibusca.params.parambyname('pessoa').asstring := fdmcrm.TCliPotenpessoa.Value;
      fdmcrm.qconclibusca.open;

      if fdmcrm.qconclibusca.recordcount > 0 then
      begin
        showmessage('Cliente já cadastrado, codigo: '+inttostr(fdmcrm.qconclibuscacodigo.value));
        abort;
      end;

      codigo := ultimo('cliente','CODIGO');

      sql := sql + ' insert into cliente(CODIGO,CODUSU,USUALT,NOME,CNPJ,INSCEST,CPF,RG,ENDERECO';
      sql := sql + ',NUMERO,BAIRRO,CIDADE,UF,STATUS,EMAIL,FONE,FONE2,SITE,NOMEFANTA';
      sql := sql + ',OBSERVACAO,PESSOA,CEP,MAE,PAI,ORGAOESP,CPFAVAL,DATACAD,DATAALT';
      sql := sql + ',DTNASC,DTNASCCONJU,RENDA,TRABALHO,CONJUGE,TRABCONJU,FONECONJU,SEXO';
      sql := sql + ',ESTCIVIL,ESCOLARIDADE,SALCONJU,SALARIO,COMPLEMENTO,CODATIV,NOMEATIV';
      sql := sql + ',CODVEND,NOMEVEND,CODVEND2,NOMEVEND2,LIMITECREDITO,VALIDADE';
      sql := sql + ',CODATEND,NOMEATEND,CODATEND2,NOMEATEND2,ULTIMANOTA,DATAULTNOTA,CODLOCAL';
      sql := sql + ',NOMELOCAL,CODESTADO,CODMUNIC,TIPOCLI,DESCTIPOCLI,CODMUNICUF)';

      sql := sql + ' select '+inttostr(codigo)+','+inttostr(usulogado)+','+inttostr(usulogado)+',';
      sql := sql + ' NOME,CNPJ,INSCEST,CPF,RG,ENDERECO';
      sql := sql + ' ,NUMERO,BAIRRO,CIDADE,UF,STATUS,EMAIL,FONE,FONE2,SITE,NOMEFANTA';
      sql := sql + ' ,OBSERVACAO,PESSOA,CEP,MAE,PAI,ORGAOESP,CPFAVAL,getdate(),getdate()';
      sql := sql + ' ,DTNASC,DTNASCCONJU,RENDA,TRABALHO,CONJUGE,TRABCONJU,FONECONJU,SEXO';
      sql := sql + ' ,ESTCIVIL,ESCOLARIDADE,SALCONJU,SALARIO,COMPLEMENTO,CODATIV,NOMEATIV';
      sql := sql + ' ,CODVEND,NOMEVEND,CODVEND2,NOMEVEND2,LIMITECREDITO,VALIDADE';
      sql := sql + ' ,CODATEND,NOMEATEND,CODATEND2,NOMEATEND2,ULTIMANOTA,DATAULTNOTA,CODLOCAL';
      sql := sql + ' ,NOMELOCAL,CODESTADO,CODMUNIC,TIPOCLI,DESCTIPOCLI,CODMUNICUF';
      sql := sql + ' from clientepoten where codigo = '+inttostr(fdmcrm.TCliPotenCODIGO.Value);

      fdmcrm.TCliPoten.Edit;
      fdmcrm.TCliPotenSITUACAO.Value := 'APROVADO';
      fdmcrm.TCliPotenCODCLI.Value := codigo;
      fdmcrm.TCliPoten.Post;
      fdmcrm.TCliPoten.ApplyUpdates(0);

      showmessage('Cliente gerado com sucesso, codigo: '+inttostr(codigo)+'!');
    end;
end;

procedure TFCliPoten.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  if FDMCRM.TCliPotenCODATIV.Value > 0 then
  begin
    fdm.TAtividade.Locate('CODIGO', FDMCRM.TCliPotenCODATIV.Value, []);
    FDMCRM.TCliPotenNOMEATIV.Value := fdm.TAtividadeNOME.Value;
  end;
end;

procedure TFCliPoten.cxDBLookupComboBox5Exit(Sender: TObject);
begin
  if FDMCRM.TCliPotenTIPOCLI.Value > 0 then
  begin
    FdmCliente.TTipoCliente.Locate('CODIGO', FDMCRM.TCliPotenTIPOCLI.Value, []);
    FDMCRM.TCliPotenDESCTIPOCLI.Value := FdmCliente.TTipoClienteNOME.Value;
  end;
end;

procedure TFCliPoten.cxDBLookupComboBox6Exit(Sender: TObject);
begin
    if FDMCRM.TCliPotenCODMUNICUF.Value > 0 then
    begin
      fdm.QMunicPesq.Locate('CODMUNICUF',FDMCRM.TCliPotenCODMUNICUF.Value,[] );
      FDMCRM.TCliPotenCODESTADO.Value := fdm.QMunicPesqID_ESTADO.value;
      FDMCRM.TCliPotenCODMUNIC.Value := fdm.QMunicPesqID_MUNICIPIO.value;
      FDMCRM.TCliPotenCODMUNICUF.Value := fdm.QMunicPesqCODMUNICUF.value;
      FDMCRM.TCliPotenCIDADE.Value := fdm.QMunicPesqDESCRICAO.value;
      FDMCRM.TCliPotenUF.Value := fdm.QMunicPesqUF.value;
    end;
end;

procedure TFCliPoten.cxButton16Click(Sender: TObject);
var
  cliente : String;
begin
    cliente := inputbox('E-Tech','Informe o código do cliente:','');
    if (trim(cliente) <> '') then
    begin
      FDMCRM.TCliPoten.Close;
      FDMCRM.TCliPoten.Params.ParamByName('CODIGO').AsInteger := strtoint(cliente);
      FDMCRM.TCliPoten.Open;

      if FDMCRM.TCliPoten.recordcount = 0 then
        ShowMessage('Nenhum cliente encontrado com o código: '+cliente);
    end;
end;

procedure TFCliPoten.cxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFCliPoten.cxButton2Click(Sender: TObject);
begin
  RelCustGrid3(self,cxGrid1DBTableView1,'',FDMCRM.QConCliPoten.RecordCount,1);
end;

procedure TFCliPoten.BtInativClick(Sender: TObject);
begin
  if FDMCRM.TCliPoten.Filtered then
    FDMCRM.TCliPoten.Filtered := False
  else
    FDMCRM.TCliPoten.Filtered := true;
end;

procedure TFCliPoten.BtInsereClick(Sender: TObject);
begin
  desativa;
  PDados.Enabled := true;

  FDMCRM.TCliPoten.Append;
  FDMCRM.TCliPotenCODIGO.Value := 0;
//  fdmcliente.TCliCont.Refresh;
  FDMCRM.TCliPotenSTATUS.Value := 'A';
  FDMCRM.TCliPotenDATACAD.Value := DateTimeToSQLTimeStamp(now);
  FDMCRM.TCliPotenDATAALT.Value := DateTimeToSQLTimeStamp(now);
  FDMCRM.TCliPotenCODUSU.Value := usulogado;
  FDMCRM.TCliPotenUSUALT.Value := usulogado;
  FDMCRM.TCliPotenSITUACAO.Value := 'POTENCIAL';

  codultcont := 0;
  
  marcaCamposChave(true);

  BtCodmunic.Enabled := true;
  BtAddCont.Enabled := true;
  BtRevCont.Enabled := true;

  BtCep.Enabled := true;

  Panel6.Enabled := True;
  Panel7.Enabled := True;
  Panel12.Enabled := True;
  DBComboBox1.SetFocus;

end;

procedure TFCliPoten.BtEditaClick(Sender: TObject);
begin
  desativa;
  BtAddCont.Enabled := true;
  BtRevCont.Enabled := true;

  BtCep.Enabled := true;
  BtCodmunic.Enabled := true;

  PDados.Enabled := true;
  FDMCRM.TCliPoten.Edit;
  FDMCRM.TCliPotenDATAALT.Value := DateTimeToSQLTimeStamp(now);
  FDMCRM.TCliPotenUSUALT.Value := usulogado;
  marcaCamposChave(true);

  Panel6.Enabled := True;
  Panel7.Enabled := True;
  Panel12.Enabled := True;
  DBComboBox1.SetFocus;
end;

procedure TFCliPoten.BtCancelaClick(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja cancelar a inserção/edição de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (FDMCRM.TCliPoten.State in [dsinsert]) then
    begin
      FDMCRM.TCliPotenCont.CancelUpdates;
    end;

    FDMCRM.TCliPoten.Cancel;
    PDados.Enabled := false;
    ativa;
    BtInsere.SetFocus;

    BtCodmunic.Enabled := false;

    BtAddCont.Enabled := false;
    BtRevCont.Enabled := false;

    BtCep.Enabled := false;
    marcaCamposChave(false);

    Panel6.Enabled := False;
    Panel7.Enabled := False;
    Panel12.Enabled := False;
  end;
end;

procedure TFCliPoten.BtCepClick(Sender: TObject);
var
  temp: TStringList;
begin
  if (FDMCRM.TCliPotenCEP.Value <> '') and
    (length(FDMCRM.TCliPotenCEP.Value) = 9) and (IsConnectedToInternet) then
  begin
    temp := TStringList.Create;
    temp.Assign(buscaCep(StringReplace(FDMCRM.TCliPotenCEP.Value, '-', '',
          [rfReplaceAll])));
    if temp.Strings[0] = 'CEP não encontrado!' then
    begin
      showmessage('CEP não encontrado!');
      abort;
    end;

    if temp.Strings[0] <> null then
      FDMCRM.TCliPotenENDERECO.Value := UpperCase(temp.Strings[0])
    else
      FDMCRM.TCliPotenENDERECO.Value := '';

    if temp.Strings[1] <> null then
      FDMCRM.TCliPotenBAIRRO.Value := UpperCase(temp.Strings[1])
    else
      FDMCRM.TCliPotenBAIRRO.Value := '';

    if temp.Strings[2] <> null then
      FDMCRM.TCliPotenCIDADE.Value := UpperCase(temp.Strings[2])
    else
      FDMCRM.TCliPotenCIDADE.Value := '';

    if temp.Strings[3] <> null then
      FDMCRM.TCliPotenUF.Value := UpperCase(temp.Strings[3])
    else
      FDMCRM.TCliPotenUF.Value := '';



    if FDMCRM.TCliPotenCIDADE.Value <> '' then
    begin
      fdm.QBuscaMunic.Close;
      fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := FDMCRM.TCliPotenCIDADE.Value;
      fdm.QBuscaMunic.Open;
      FDMCRM.TCliPotenCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      FDMCRM.TCliPotenCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;
      FDMCRM.TCliPotenCODMUNICUF.Value := fdm.QBuscaMunicCODMUNICUF.value;
    end;

    DBEdit6.SetFocus;
  end;
end;

procedure TFCliPoten.BtCodmunicClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFMunicipio,FMunicipio);
      FMunicipio.PConsulta.Visible := true;
      if FMunicipio.ShowModal = mrok then
      begin
        FDMCRM.TCliPotenCODESTADO.Value := fdm.TMunicipioID_ESTADO.Value;
        FDMCRM.TCliPotenCODMUNICUF.Value := fdm.TMunicipioCODMUNICUF.Value;
        FDMCRM.TCliPotenCODMUNIC.Value := fdm.TMunicipioID_MUNICIPIO.value;
        FDMCRM.TCliPotenCIDADE.Value := fdm.TMunicipioDESCRICAO.value;
        FDMCRM.TCliPotenUF.Value := fdm.TMunicipioUF.value;
      end;
    finally
      FMunicipio.Free;
      FMunicipio := nil;
    end;
end;

procedure TFCliPoten.BtConfirmaClick(Sender: TObject);
var
  codigo: integer;
begin
  if FDMCRM.TCliPotenNOME.Value = '' then
  begin
    showmessage('O campo Nome / Razão Social é obrigatório!');
    DBEdit2.SetFocus;
    abort;
  end;

  if messagedlg('Confirmar o cliente potencial ' + FDMCRM.TCliPotenNOME.Value + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin

    if (FDMCRM.TCliPotenCODIGO.Value = 0) then
    begin
      codigo := ultimo('clientepoten', 'codigo');
    end
    else
      codigo := FDMCRM.TCliPotenCODIGO.Value;

    if (FDMCRM.TCliPotenCODIGO.Value = 0) then
    begin

      fdmcrm.TCliPotenCont.First;
      while not fdmcrm.TCliPotenCont.Eof do
      begin
        fdmcrm.TCliPotenCont.Edit;
        fdmcrm.TCliPotenContCODCLIPOTEN.Value := codigo;
        fdmcrm.TCliPotenCont.Post;
        //fdmcliente.TCliCont.Next;
      end;

      FDMCRM.TCliPotenCODIGO.Value := codigo;
    end;

    FDMCRM.TCliPoten.Post;
    FDMCRM.TCliPoten.ApplyUpdates(-1);

    fdmcrm.TCliPotenCont.ApplyUpdates(-1);
    ativa;
    BtInsere.SetFocus;

    BtAddCont.Enabled := false;
    BtRevCont.Enabled := false;

    BtCep.Enabled := false;
    marcaCamposChave(false);
    BtCodmunic.Enabled := false;

    Panel6.Enabled := False;
    Panel7.Enabled := False;
    Panel12.Enabled := False;
    FDMCRM.QConCliPoten.Refresh;
  end;
end;

procedure TFCliPoten.BtRevContClick(Sender: TObject);
begin
  if fdmcrm.TCliPotenCont.RecordCount > 0 then
    fdmcrm.TCliPotenCont.Delete;
end;

procedure TFCliPoten.BtAddContClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliPotenCont, FCliPotenCont);
    IF fdmcrm.TCliPotenCont.RecordCount > 0 then
    begin
      fdmcrm.TCliPotenCont.Last;
      codultcont := fdmcrm.TClipotenContITEM.Value;
    end;
    fdmcrm.TClipotenCont.Append;
    FCliPotenCont.ShowModal;

  finally
    FCliPotenCont.Free;
    FCliPotenCont := nil;
  end;
end;

procedure TFCliPoten.DBGrid3DblClick(Sender: TObject);
begin
  IF fdmcrm.TCliPotenCont.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFCliPotenCont, FCliPotenCont);
      codultcont := fdmcrm.TClipotenContITEM.Value;
      fdmcrm.TCliPotenCont.Edit;
      FCliPotenCont.ShowModal;
    finally
      FCliPotenCont.Free;
      FCliPotenCont := nil;
    end;
  end;
end;

procedure TFCliPoten.FormShow(Sender: TObject);
begin
  fdm.TAtividade.Open;
  FDMCRM.QConCliPoten.close;
  FDMCRM.QConCliPoten.Filtered := False;
  sql := ' select CODIGO, NOME, NOMEFANTA, PESSOA, CPF, CIDADE, CNPJ, UF, STATUS, FONE, SITUACAO, FONE2, CLASSIFICACAO';
  sql := sql + ' from clientepoten';
  sql := sql + ' where status = ' + QuotedStr('A');

  if codpesq > 0 then
  begin
    FDMCRM.TCliPoten.Close;
    FDMCRM.TCliPoten.Params.ParamByName('CODIGO').AsInteger := codpesq;
    FDMCRM.TCliPoten.Open;
  end
  else
  begin
    FDMCRM.TCliPoten.Close;
    FDMCRM.TCliPoten.Params.ParamByName('CODIGO').AsInteger := 99999;
    FDMCRM.TCliPoten.Open;
  end;

  FDMCRM.QConCliPoten.Open;
  FDMCRM.QConCliPoten.IndexFieldNames := 'NOME';
  FDMCRM.QConCliPoten.First;

  cxPageControl1.ActivePageIndex := 1;

  fdm.QMunicPesq.Open;
  EdNome.SetFocus;
end;

procedure TFCliPoten.PageControl2Change(Sender: TObject);
begin
  if (FDMCRM.TCliPoten.State in [dsinsert, dsedit]) then
  begin
    if (PageControl2.ActivePageIndex = 1) and (DBComboBox1.ItemIndex = 0) then
    begin
      showmessage('Cliente sem dados juridicos!');
      PageControl2.ActivePageIndex := 0;
    end;

    if (PageControl2.ActivePageIndex = 0) and (DBComboBox1.ItemIndex = 1) then
    begin
      showmessage('Cliente sem dados fisicos!');
      PageControl2.ActivePageIndex := 1;
    end;
  end;
end;

procedure TFCliPoten.DBComboBox1Change(Sender: TObject);
begin
  if { fdm.TClienteTIPO.Value = 'F' } DBComboBox1.ItemIndex = 1 then
    PageControl2.ActivePageIndex := 1
  else
    PageControl2.ActivePageIndex := 0;
end;

procedure TFCliPoten.DBEdit12Exit(Sender: TObject);
begin
    if not (FDMCRM.TCliPotenCODMUNIC.Value >0) and (FDMCRM.TCliPotenCIDADE.Value <> '') then
    begin
      fdm.QBuscaMunic.Close;
      fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := FDMCRM.TCliPotenCIDADE.Value;
      fdm.QBuscaMunic.Open;
      FDMCRM.TCliPotenCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      FDMCRM.TCliPotenCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;

    end;
end;

procedure TFCliPoten.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down)then
  begin
    FDMCRM.QConCliPoten.Next;
  end;

  if (key = vk_up)then
  begin
    FDMCRM.QConCliPoten.Prior;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
  begin
    FDMCRM.TCliPoten.Close;
    FDMCRM.TCliPoten.Params.ParamByName('CODIGO').AsInteger := FDMCRM.QConCliPotenCODIGO.Value;
    FDMCRM.TCliPoten.Open;
    cxButton4Click(sender);
  end
  else if (PConsulta.Visible = false) and (Key = 13) then
  begin
      cxPageControl1.ActivePageIndex := 0;
  end;

end;

procedure TFCliPoten.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var codigo : integer;
begin
  codigo := FDMCRM.QConCliPotenCODIGO.Value;

  if (EdNome.Text <> '') and (key <> vk_back) then
  begin
    FDMCRM.QConCliPoten.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      FDMCRM.QConCliPoten.Filter:='nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      FDMCRM.QConCliPoten.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      FDMCRM.QConCliPoten.Filter:='nome like' +QuotedStr('%'+EdNome.Text);
    FDMCRM.QConCliPoten.Filtered:=true;
    FDMCRM.QConCliPoten.Locate('CODIGO',codigo,[]);
  end
  else if (key = vk_back) then
  begin
    FDMCRM.QConCliPoten.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      FDMCRM.QConCliPoten.Filter:='nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      FDMCRM.QConCliPoten.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      FDMCRM.QConCliPoten.Filter:='nome like' +QuotedStr('%'+EdNome.Text);
    FDMCRM.QConCliPoten.Filtered:=true;
    FDMCRM.QConCliPoten.First;
  end;

end;

procedure TFCliPoten.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    FDMCRM.TCliPoten.Close;
    FDMCRM.TCliPoten.Params.ParamByName('CODIGO').AsInteger := FDMCRM.QConCliPotenCODIGO.Value;
    FDMCRM.TCliPoten.Open;
    if PConsulta.Visible = true then
    begin
      cxButton4Click(sender);
    end
    else
    begin
      cxPageControl1.ActivePageIndex := 0;
    end;
end;

procedure TFCliPoten.cxPageControl1Change(Sender: TObject);
begin
  if (FDMCRM.TCliPoten.State in [dsinsert, dsedit]) and (cxPageControl1.ActivePageIndex <> 0) then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    cxPageControl1.ActivePageIndex := 0;
  end
  else
  begin
    if (cxPageControl1.ActivePageIndex = 0) and not (FDMCRM.TCliPoten.State in [dsinsert, dsedit]) then
    begin
      FDMCRM.TCliPoten.Close;
      FDMCRM.TCliPoten.Params.ParamByName('CODIGO').AsInteger := FDMCRM.QConCliPotenCODIGO.Value;
      FDMCRM.TCliPoten.Open;
    end;
  end;
end;

procedure TFCliPoten.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if FDMCRM.TCliPoten.State in [dsInsert,dsEdit] then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end
  else
  begin
    FDMCRM.QConCliPoten.close;
    FDMCRM.TCliPoten.Close;
    FDMCRM.TCliPotenCont.close;
    FDM.TAtividade.close;
    fdm.TMunicipio.Close;
    fdm.QMunicPesq.close;
//    fdm.TLocalizador.Close;
  end;
end;

procedure TFCliPoten.CkInativosClick(Sender: TObject);
begin
  sql := '';
  FDMCRM.QConCliPoten.close;

  sql := ' select CODIGO, NOME, NOMEFANTA, PESSOA, CPF, CIDADE, CNPJ, UF, STATUS, FONE, SITUACAO, FONE2, CLASSIFICACAO';
  sql := sql + ' from clientepoten';

  if not (CkInativ.Checked) then
  begin
    sql := sql + ' where status = ' + QuotedStr('A');
  end;
  FDMCRM.QConCliPoten.Open;

end;

end.

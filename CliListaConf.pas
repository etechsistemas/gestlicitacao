unit CliListaConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCheckBox, cxGroupBox, cxRadioGroup, StdCtrls,
  cxButtons, ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtonEdit,
  cxDBLookupComboBox;

type
  TFCliListaConf = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    cxButton1: TcxButton;
    EdNome: TEdit;
    RgFiltro: TcxRadioGroup;
    CkInativ: TcxCheckBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEFANTA: TcxGridDBColumn;
    cxGrid1DBTableView1FONE: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxGrid1DBTableView1Column13: TcxGridDBColumn;
    cxGrid1DBTableView1Column14: TcxGridDBColumn;
    cxGrid1DBTableView1Column15: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column16: TcxGridDBColumn;
    cxGrid1DBTableView1Column17: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column18: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1Column9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CkInativClick(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    sql : String;
  public
    { Public declarations }
  end;

var
  FCliListaConf: TFCliListaConf;

implementation

uses DMCliente, DMRh, metodosServ, UBiblio, DM;

{$R *.dfm}

procedure TFCliListaConf.CkInativClick(Sender: TObject);
begin
  sql := '';
  fdmcliente.QCliListaConf.close;

  if CkInativ.Checked then
  begin
    sql := sql + ' select CODIGO, NOME, NOMEFANTA, PESSOA, INSCEST,';
    sql := sql + ' CEP, DATACAD,CPF, RG, ENDERECO, NUMERO, BAIRRO,';
    sql := sql + ' CIDADE, UF, STATUS, FONE, CNPJ , DESCTIPOCLI, TIPOCLI,';
    sql := sql + ' CODVEND, NOMEVEND, CODVEND2, NOMEVEND2, CODATEND, NOMEATEND,';
    sql := sql + ' CODATEND2, NOMEATEND2, CODMUNICUF, CODMUNIC, CODESTADO, CODLOCAL,';
    sql := sql + ' NOMELOCAL, COMPLEMENTO, EMAIL, CODATIV, NOMEATIV,';
    sql := sql + ' DATAALT, USUALT';
    sql := sql + ' from cliente';
  end
  else
  begin
    sql := sql + ' select CODIGO, NOME, NOMEFANTA, PESSOA, INSCEST,';
    sql := sql + ' CEP, DATACAD,CPF, RG, ENDERECO, NUMERO, BAIRRO,';
    sql := sql + ' CIDADE, UF, STATUS, FONE, CNPJ , DESCTIPOCLI, TIPOCLI,';
    sql := sql + ' CODVEND, NOMEVEND, CODVEND2, NOMEVEND2, CODATEND, NOMEATEND,';
    sql := sql + ' CODATEND2, NOMEATEND2, CODMUNICUF, CODMUNIC, CODESTADO, CODLOCAL,';
    sql := sql + ' NOMELOCAL, COMPLEMENTO, EMAIL, CODATIV, NOMEATIV,';
    sql := sql + ' DATAALT, USUALT';
    sql := sql + ' from cliente';
    sql := sql + ' where status = ' + QuotedStr('A');
  end;
  fdmcliente.QCliListaConf.Open;

end;

procedure TFCliListaConf.cxButton1Click(Sender: TObject);
begin
    close;
end;

procedure TFCliListaConf.cxGrid1DBTableView1Column9PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  temp: TStringList;
begin
  if (fdmcliente.QCliListaConfCEP.Value <> '') and
    (length(fdmcliente.QCliListaConfCEP.Value) = 9) and (IsConnectedToInternet) then
  begin
    temp := TStringList.Create;
    temp.Assign(buscaCep(StringReplace(fdmcliente.QCliListaConfCEP.Value, '-', '',
          [rfReplaceAll])));
    if temp.Strings[0] = 'CEP não encontrado!' then
    begin
      showmessage('CEP não encontrado!');
      abort;
    end;

    if temp.Strings[0] <> null then
      fdmcliente.QCliListaConfENDERECO.Value := UpperCase(temp.Strings[0])
    else
      fdmcliente.QCliListaConfENDERECO.Value := '';

    if temp.Strings[1] <> null then
      fdmcliente.QCliListaConfBAIRRO.Value := UpperCase(temp.Strings[1])
    else
      fdmcliente.QCliListaConfBAIRRO.Value := '';

    if temp.Strings[2] <> null then
      fdmcliente.QCliListaConfCIDADE.Value := UpperCase(temp.Strings[2])
    else
      fdmcliente.QCliListaConfCIDADE.Value := '';

    if temp.Strings[3] <> null then
      fdmcliente.QCliListaConfUF.Value := UpperCase(temp.Strings[3])
    else
      fdmcliente.QCliListaConfUF.Value := '';



    if fdmcliente.QCliListaConfCIDADE.Value <> '' then
    begin
      fdm.QBuscaMunic.Close;
      fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := fdmcliente.QCliListaConfCIDADE.Value;
      fdm.QBuscaMunic.Open;
      fdmcliente.QCliListaConfCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      fdmcliente.QCliListaConfCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      fdmcliente.QCliListaConfCODMUNICUF.Value := fdm.QBuscaMuniccodmunicuf.value;

      if fdmcliente.QCliListaConfCODMUNICUF.Value > 0 then
      begin
        FDMRh.qbuscavend.close;
        FDMRh.qbuscavend.params.parambyname('CODMUNICUF').asinteger := fdmcliente.QCliListaConfCODMUNICUF.Value;
        FDMRh.qbuscavend.params.parambyname('TIPO').asstring := 'INTERNO';
        FDMRh.qbuscavend.open;

        fdmcliente.QCliListaConfCODATEND.Value := FDMRh.QBuscaVendCODVEND.Value;
        fdmcliente.QCliListaConfNOMEATEND.Value := FDMRh.QBuscaVendNOMEVEND.Value;

        FDMRh.qbuscavend.close;
        FDMRh.qbuscavend.params.parambyname('CODMUNICUF').asinteger := fdmcliente.QCliListaConfCODMUNICUF.Value;
        FDMRh.qbuscavend.params.parambyname('TIPO').asstring := 'EXTERNO';
        FDMRh.qbuscavend.open;

        fdmcliente.QCliListaConfCODVEND.Value := FDMRh.QBuscaVendCODVEND.Value;
        fdmcliente.QCliListaConfNOMEVEND.Value := FDMRh.QBuscaVendNOMEVEND.Value;

      end;
    end;
  end;
end;

procedure TFCliListaConf.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down)then
  begin
    FDMCliente.QCliListaConf.Next;
  end;

  if (key = vk_up)then
  begin
    FDMCliente.QCliListaConf.Prior;
  end;

end;

procedure TFCliListaConf.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var codigo : integer;
begin
  codigo := FDMCliente.QCliListaConfCODIGO.Value;

  if (EdNome.Text <> '') and (key <> vk_back) then
  begin
    FDMCliente.QCliListaConf.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      FdmCliente.QCliListaConf.Filter:='nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      FdmCliente.QCliListaConf.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      FdmCliente.QCliListaConf.Filter:='nome like' +QuotedStr('%'+EdNome.Text);
    FDMCliente.QCliListaConf.Filtered:=true;
    FDMCliente.QCliListaConf.Locate('CODIGO',codigo,[]);
  end
  else if (key = vk_back) then
  begin
    FDMCliente.QCliListaConf.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      FdmCliente.QCliListaConf.Filter:='nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      FdmCliente.QCliListaConf.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      FdmCliente.QCliListaConf.Filter:='nome like' +QuotedStr('%'+EdNome.Text);
    FDMCliente.QCliListaConf.Filtered:=true;
    FDMCliente.QCliListaConf.First;
  end;
end;

procedure TFCliListaConf.FormClose(Sender: TObject; var Action: TCloseAction);
var
  sql : String;
begin
    sql := '';
    sql := sql + ' update cliente set NOMELOCAL = localizador.NOME';
    sql := sql + ' from cliente inner join localizador on CODLOCAL = localizador.CODIGO;';

    sql := sql + ' update cliente set NOMEVEND2 = vendedor.NOME';
    sql := sql + ' from cliente inner join vendedor on CODVEND2 = vendedor.CODIGO';
    sql := sql + ' where vendedor.TIPO = '+QuotedStr('EXTERNO')+';';

    sql := sql + ' update cliente set NOMEATEND2 = vendedor.NOME';
    sql := sql + ' from cliente inner join vendedor on CODATEND2 = vendedor.CODIGO';
    sql := sql + ' where vendedor.TIPO = '+QuotedStr('INTERNO')+';';

    sql := sql + ' update cliente set NOMEATIV = atividade.NOME';
    sql := sql + ' from cliente inner join atividade on CODATIV = atividade.CODIGO;';

    sql := sql + ' update cliente set DESCTIPOCLI = tipocliente.NOME';
    sql := sql + ' from cliente inner join tipocliente on TIPOCLI = tipocliente.CODIGO;';
    execsql(sql);

    fdmcliente.QCliListaConf.ApplyUpdates(0);
    fdmcliente.QCliListaConf.Close;
    fdmcliente.TTipoCliente.close;
    fdm.QMunicPesq.close;
    fdmrh.QVendPesq.close;
    fdmrh.QAtendPesq.close;
    fdm.TAtividade.Close;
    fdm.TLocalizador.Close;
end;

procedure TFCliListaConf.FormShow(Sender: TObject);
begin
    fdmcliente.QCliListaConf.open;
    fdmcliente.TTipoCliente.Open;
    fdm.QMunicPesq.Open;
    fdmrh.QVendPesq.Open;
    fdmrh.QAtendPesq.Open;
    fdm.TAtividade.open;
    fdm.TLocalizador.open;
end;

end.

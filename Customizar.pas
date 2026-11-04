unit Customizar;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, Menus, StdCtrls, cxButtons, ExtCtrls, cxCheckBox, cxContainer,
  cxGroupBox, Shellapi, cxRadioGroup, ExtDlgs, cxColorComboBox,
  QRPDFFilt, QRWebFilt, QRExport,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxFontNameComboBox, ComObj, ComCtrls,
  ActiveX, DBCtrls, Mask, cxPCdxBarPopupMenu, QRCtrls, printers,
  cxImageComboBox;

type
  TFCustomizar = class(TForm)
    cxPageControl1: TcxPageControl;
    Imprimir: TcxTabSheet;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Fonte: TFontDialog;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SaveDialog1: TSaveDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel2: TPanel;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CbFonteCab: TcxFontNameComboBox;
    CbCorCabe: TcxColorComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CbFonteText: TcxFontNameComboBox;
    CbCorCorpo: TcxColorComboBox;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    Label13: TLabel;
    cxButton12: TcxButton;
    Label14: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ETitulo: TEdit;
    CkExibir: TcxCheckBox;
    ckSomar: TcxCheckBox;
    CbOrientacao: TComboBox;
    ESubTitulo: TEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    PProgresso: TPanel;
    Label16: TLabel;
    ProgressBar1: TProgressBar;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1COLUNA: TcxGridDBColumn;
    cxGrid4DBTableView1EXIBIR: TcxGridDBColumn;
    cxGrid4DBTableView1TITULO: TcxGridDBColumn;
    cxGrid4DBTableView1SOMAR: TcxGridDBColumn;
    cxGrid4DBTableView1TAMANHO: TcxGridDBColumn;
    PExport: TcxGroupBox;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxRadioGroup2: TcxRadioGroup;
    cxGrid4DBTableView1AGRUPAR: TcxGridDBColumn;
    PColunas: TPanel;
    BtSubir: TcxButton;
    BtDescer: TcxButton;
    BtEmail: TcxButton;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure CkExibirClick(Sender: TObject);
    procedure ckSomarClick(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure impressao(tipo, local : String);
    procedure exportarcsv(local : String);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxGridDBColumn3PropertiesChange(Sender: TObject);
    procedure cxGridDBColumn8PropertiesChange(Sender: TObject);
    procedure cxGridDBColumn9PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtSubirClick(Sender: TObject);
    procedure BtDescerClick(Sender: TObject);
    procedure BtEmailClick(Sender: TObject);
    procedure cxGrid4DBTableView1EditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
  private
    { Private declarations }
    corcabe, corcorpo: tcolor;
    tamanhocorpo, tamanhocabe : integer;
    margemtop, margeminf, margemdir, margemesq : double;
    fontecabenome, fontecorponome: string;
    fonteestilo: TFontStyles;
    enviaremail: boolean;
    function tipototal(campo : TField) : String;
    function formatototal(tptotal : String; valor : Double) : String;
    function campogrupo(var titulo : String) : String;
    function ordenartabela(campo : String; var indiceant, nomeindiceant : String) : Boolean;
    procedure restaurarordem(indiceant, nomeindiceant : String);
    procedure movercoluna(direcao : integer);
    function nomearquivorelatorio(extensao : String) : String;
    procedure enviaremailrelatorio(arquivo : String);
    function gerarexcel(arquivo : String) : Boolean;
  public
    { Public declarations }
    filtro, orientacao: string;
    tabela: TDataSet;
    vtabelas: array of TDataSet;
    linha: integer;
    marcacheck : boolean;
  end;

var
  FCustomizar: TFCustomizar;

implementation

uses DM, metodosServ, UBiblio, RRelCust, Principal, Email, DBClient, QuickRpt, QRPrntr;
{$R *.dfm}

// cor gravada no configrel: nome (clBlack) ou número; aceita também o "r.g.b" que a combo
// gravava para cor personalizada, e volta preto se o texto não for cor
function lercor(texto : String) : TColor;
var
  partes : TStringList;
begin
  Result := clBlack;
  texto := Trim(texto);
  if texto = '' then
    exit;
  try
    Result := StringToColor(texto);
  except
    partes := TStringList.Create;
    try
      partes.Delimiter := '.';
      partes.DelimitedText := texto;
      if partes.Count = 3 then
        Result := RGB(StrToIntDef(partes[0], 0), StrToIntDef(partes[1], 0), StrToIntDef(partes[2], 0));
    finally
      partes.Free;
    end;
  end;
end;

procedure TFCustomizar.ckSomarClick(Sender: TObject);
var
  campo : String;
begin
  campo := fdm.TRelCustCAMPO.Value;

  fdm.TRelCust.DisableControls;
  fdm.TRelCust.First;
  while not fdm.TRelCust.Eof do
  begin
    fdm.TRelCust.Edit;
    if ckSomar.Checked then
      fdm.TRelCustSOMAR.Value := 'S'
    else
      fdm.TRelCustSOMAR.Value := 'N';
    fdm.TRelCust.Post;
    fdm.TRelCust.Next;
  end;
  fdm.TRelCust.Locate('CAMPO',campo,[]);
  fdm.TRelCust.EnableControls;

{  if ckSomar.Checked then
    ExecSQL('update relcust set somar = ' + QuotedStr('S')+', exibir = '+ QuotedStr('S')+' where form = '+QuotedStr(FDM.TRelCustFORM.Value)+ ' and REL = '+inttostr(FDM.TRelCustREL.Value))
  else
    ExecSQL('update relcust set somar = ' + QuotedStr('N')+' where form = '+QuotedStr(FDM.TRelCustFORM.Value)+ ' and REL = '+inttostr(FDM.TRelCustREL.Value));
  fdm.TRelCust.Close;
  fdm.TRelCust.Open;}
end;

procedure TFCustomizar.cxButton10Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    fdm.TconfigrelCAMINHOLOGO.Value := OpenPictureDialog1.FileName;
    if (fdm.TconfigrelCAMINHOLOGO.Value <> '') and (FileExists(fdm.TconfigrelCAMINHOLOGO.Value)) then
      Image1.Picture.LoadFromFile(fdm.TconfigrelCAMINHOLOGO.Value);
  end;
end;

// tipo de total da linha atual do TRelCust: S soma, C contagem, M média ('' = nenhum)
function TFCustomizar.tipototal(campo : TField) : String;
begin
  Result := '';
  if (fdm.TRelCustEXIBIR.Value <> 'S') or (campo = nil) then
    exit;

  if fdm.TRelCustSOMAR.Value = 'C' then
    Result := 'C'
  else if ((fdm.TRelCustSOMAR.Value = 'S') or (fdm.TRelCustSOMAR.Value = 'M')) and (campo is TNumericField) then
    Result := fdm.TRelCustSOMAR.Value;
end;

function TFCustomizar.formatototal(tptotal : String; valor : Double) : String;
begin
  if tptotal = 'C' then
    Result := 'Qtde: ' + FormatFloat('#,##0', valor)
  else if tptotal = 'M' then
    Result := 'Média: ' + FormatFloat('###,###,###,##0.00', valor)
  else
    Result := FormatFloat('###,###,###,##0.00', valor);
end;

// coluna marcada para agrupar (só uma por relatório)
function TFCustomizar.campogrupo(var titulo : String) : String;
begin
  Result := '';
  titulo := '';
  fdm.TRelCust.First;
  while not fdm.TRelCust.Eof do
  begin
    if (fdm.TRelCustAGRUPAR.Value = 'S') and (fdm.TRelCustCAMPO.Value <> '') and (tabela.FindField(fdm.TRelCustCAMPO.Value) <> nil) then
    begin
      Result := fdm.TRelCustCAMPO.Value;
      titulo := fdm.TRelCustTITULO.Value;
      exit;
    end;
    fdm.TRelCust.Next;
  end;
end;

// ordena a tabela pela coluna do grupo (só ClientDataSet); a ordem anterior volta no restaurarordem
function TFCustomizar.ordenartabela(campo : String; var indiceant, nomeindiceant : String) : Boolean;
begin
  Result := False;
  if not (tabela is TClientDataSet) then
    exit;

  indiceant := TClientDataSet(tabela).IndexFieldNames;
  nomeindiceant := TClientDataSet(tabela).IndexName;
  try
    if (indiceant <> '') and not SameText(indiceant, campo) then
      TClientDataSet(tabela).IndexFieldNames := campo + ';' + indiceant
    else
      TClientDataSet(tabela).IndexFieldNames := campo;
    Result := True;
  except
    // campo que não aceita índice (calculado): agrupa na ordem em que está
  end;
end;

procedure TFCustomizar.restaurarordem(indiceant, nomeindiceant : String);
begin
  if nomeindiceant <> '' then
    TClientDataSet(tabela).IndexName := nomeindiceant
  else
    TClientDataSet(tabela).IndexFieldNames := indiceant;
end;

// troca a coluna atual de lugar com a de cima (-1) ou a de baixo (1)
procedure TFCustomizar.movercoluna(direcao : integer);
var
  campo : String;
  colatual, colvizinha : integer;
begin
  if fdm.TRelCust.IsEmpty then
    exit;

  cxGrid4DBTableView1.DataController.PostEditingData;
  if (fdm.TRelCust.State in [dsedit,dsinsert]) then
    fdm.TRelCust.Post;

  campo := fdm.TRelCustCAMPO.Value;
  colatual := fdm.TRelCustCOLUNA.Value;

  fdm.TRelCust.DisableControls;
  try
    if direcao < 0 then
      fdm.TRelCust.Prior
    else
      fdm.TRelCust.Next;

    if fdm.TRelCustCAMPO.Value <> campo then
    begin
      colvizinha := fdm.TRelCustCOLUNA.Value;
      fdm.TRelCust.Edit;
      fdm.TRelCustCOLUNA.Value := colatual;
      fdm.TRelCust.Post;

      fdm.TRelCust.Locate('CAMPO', campo, []);
      fdm.TRelCust.Edit;
      fdm.TRelCustCOLUNA.Value := colvizinha;
      fdm.TRelCust.Post;
    end;
    fdm.TRelCust.Locate('CAMPO', campo, []);
  finally
    fdm.TRelCust.EnableControls;
  end;
end;

// arquivo do envio por e-mail: pasta relatorios ao lado do exe, nome = título
function TFCustomizar.nomearquivorelatorio(extensao : String) : String;
var
  nome, pasta : String;
  i : integer;
begin
  pasta := ExtractFilePath(Application.ExeName) + 'relatorios\';
  if not DirectoryExists(pasta) then
    ForceDirectories(pasta);

  nome := Trim(ETitulo.Text);
  for i := 1 to Length(nome) do
    if CharInSet(nome[i], ['\', '/', ':', '*', '?', '"', '<', '>', '|']) then
      nome[i] := '-';
  if nome = '' then
    nome := 'relatorio';

  Result := pasta + nome + extensao;
end;

procedure TFCustomizar.enviaremailrelatorio(arquivo : String);
begin
  try
    Application.CreateForm(TFEmail, FEmail);
    FEmail.arquivo := arquivo;
    if Trim(ESubTitulo.Text) <> '' then
      FEmail.assunto := ETitulo.Text + ' - ' + ESubTitulo.Text
    else
      FEmail.assunto := ETitulo.Text;
    FEmail.ShowModal;
  finally
    FEmail.Free;
    FEmail := nil;
  end;
end;

procedure TFCustomizar.impressao(tipo, local : String);
var
   x,y : Integer;
   vCampo : TQRDBText;
   vCab : TQRLabel;
   vCabQtde : TQRLabel;
   tamF : integer;
   vLogo : TQRImage;
   vSubTitulo : TQRLabel;
   altsub : integer;
   i, ncols, largtotal : integer;
   fator : double;
   somacampos : array of TField;
   somatotais : array of Double;
   formatocampos : array of TFloatField;
   formatoorig : array of String;
   somaqtdes : array of Double;
   nreg : integer;
   tptotal, grupocampo, grupotitulo, indiceant, nomeindiceant : String;
   ordenado : Boolean;
   vGrupo : TQRGroup;
   vRodapeGrupo : TQRBand;
   vGrupoTit : TQRLabel;
   vGrupoVal : TQRDBText;
   vSubtotal : TQRExpr;

  // margem da Impressão Avançada vem em cm; o relatório trabalha em mm (sem configuração fica 1 cm)
  function margemmm(margem : double) : double;
  begin
    if margem > 0 then
      Result := margem * 10
    else
      Result := 10;
  end;

begin
  AC;
  //LimparRel(Sender);
  Application.CreateForm(TFRRelCust, FRRelCust);
  IF CbOrientacao.Text = 'RETRATO' then
    begin
        //FRRelCust.LTitulo.left := 200;
        FRRelCust.LTitulo.Font.Size := 14;
        FRRelCust.QuickRep1.Page.Orientation :=  poPortrait;
    end
  else
    begin
        //FRRelCust.LTitulo.left := 377;
        FRRelCust.LTitulo.Font.Size := 16;
        FRRelCust.QuickRep1.Page.Orientation := poLandscape;
    end;

  ordenado := False;
  tabela.DisableControls;
  fdm.TRelCust.DisableControls;
  Try
  // agrupamento: tabela ordenada pela coluna do grupo enquanto o relatório é gerado
  grupocampo := campogrupo(grupotitulo);
  if grupocampo <> '' then
    ordenado := ordenartabela(grupocampo, indiceant, nomeindiceant);

  //TOTAIS: uma passada só pela tabela para todas as colunas com soma, contagem ou média
  FDM.TRelCust.First;
  while not FDM.TRelCust.Eof do
    begin
      if FDM.TRelCustCAMPO.Value <> '' then
        if tipototal(tabela.FieldByName(FDM.TRelCustCAMPO.Value)) <> '' then
        begin
          SetLength(somacampos, Length(somacampos) + 1);
          SetLength(somatotais, Length(somatotais) + 1);
          SetLength(somaqtdes, Length(somaqtdes) + 1);
          somacampos[High(somacampos)] := tabela.FieldByName(FDM.TRelCustCAMPO.Value);
          somatotais[High(somatotais)] := 0;
          somaqtdes[High(somaqtdes)] := 0;
        end;
      FDM.TRelCust.Next;
    end;

  nreg := 0;
  tabela.First;
  while not tabela.Eof do
    begin
      inc(nreg);
      for i := 0 to High(somacampos) do
        if (somacampos[i] is TNumericField) and not somacampos[i].IsNull then
        begin
          somatotais[i] := somatotais[i] + somacampos[i].AsFloat;
          somaqtdes[i] := somaqtdes[i] + 1;
        end;
      tabela.Next;
    end;

  // TOTAL de cada coluna (o rodapé usa o TRelCustTOTAL)
  i := 0;
  FDM.TRelCust.First;
  while not FDM.TRelCust.Eof do
    begin
      tptotal := '';
      if FDM.TRelCustCAMPO.Value <> '' then
        tptotal := tipototal(tabela.FieldByName(FDM.TRelCustCAMPO.Value));
      FDM.TRelCust.Edit;
      if tptotal = 'C' then
        FDM.TRelCustTOTAL.Value := nreg
      else if tptotal = 'M' then
      begin
        if somaqtdes[i] > 0 then
          FDM.TRelCustTOTAL.Value := Arredondar(somatotais[i] / somaqtdes[i],2)
        else
          FDM.TRelCustTOTAL.Value := 0;
      end
      else if tptotal = 'S' then
        FDM.TRelCustTOTAL.Value := Arredondar(somatotais[i],2)
      else
        FDM.TRelCustTOTAL.Value := 0;
      if tptotal <> '' then
        inc(i);
      FDM.TRelCust.Post;
      FDM.TRelCust.Next;
    end;
  //FIM TOTAIS
    FRRelCust.LTitulo.Caption := ETitulo.Text;
    FRRelCust.QuickRep1.ReportTitle := FRRelCust.LTitulo.Caption;
    FRRelCust.LFiltro.Caption := filtro;
    FRRelCust.QuickRep1.DataSet := tabela;

    FRRelCust.QuickRep1.Page.TopMargin := margemmm(margemtop);
    FRRelCust.QuickRep1.Page.BottomMargin := margemmm(margeminf);
    FRRelCust.QuickRep1.Page.LeftMargin := margemmm(margemesq);
    FRRelCust.QuickRep1.Page.RightMargin := margemmm(margemdir);

    // página no canto direito da largura útil (orientação + margens)
    FRRelCust.LTotPag.Left := FRRelCust.QRCabecalho.Width - 30;
    FRRelCust.QRSysData2.Left := FRRelCust.LTotPag.Left - FRRelCust.QRSysData2.Width - 2;

    // logo à esquerda, com data e hora logo depois
    if (fdm.TconfigrelCAMINHOLOGO.Value <> '') and (FileExists(fdm.TconfigrelCAMINHOLOGO.Value)) then
    begin
      vLogo := TQRImage.Create(FRRelCust);
      vLogo.Parent := FRRelCust.QRCabecalho;
      vLogo.Picture.LoadFromFile(fdm.TconfigrelCAMINHOLOGO.Value);
      vLogo.Stretch := True;
      vLogo.Left := 5;
      vLogo.Top := 2;
      vLogo.Height := 30;
      vLogo.Width := 60;
      if vLogo.Picture.Height > 0 then
        vLogo.Width := vLogo.Picture.Width * 30 div vLogo.Picture.Height;
      if vLogo.Width > 120 then
      begin
        vLogo.Width := 120;
        vLogo.Height := vLogo.Picture.Height * 120 div vLogo.Picture.Width;
      end;
      FRRelCust.QRSysData1.Left := vLogo.Left + vLogo.Width + 5;
      FRRelCust.QRSysData3.Left := FRRelCust.QRSysData1.Left;
    end;

    // subtítulo abaixo do título
    altsub := 0;
    if Trim(ESubTitulo.Text) <> '' then
    begin
      vSubTitulo := TQRLabel.Create(FRRelCust);
      vSubTitulo.Parent := FRRelCust.QRCabecalho;
      vSubTitulo.AutoSize := True;
      vSubTitulo.AlignToBand := True;
      vSubTitulo.Alignment := taCenter;
      vSubTitulo.Font.Name := 'Arial';
      vSubTitulo.Font.Size := 11;
      vSubTitulo.Font.Style := [fsBold];
      vSubTitulo.Top := 34;
      vSubTitulo.Caption := ESubTitulo.Text;
      altsub := 18;
    end;
    FRRelCust.LFiltro.Top := 34 + altsub;

    x := 1;
    y := 36 + altsub;
    if FRRelCust.LFiltro.Caption <> '' Then
      begin
        y := y + FRRelCust.LFiltro.Height;
        FRRelCust.LFiltro.Enabled := true;
        FRRelCust.QRCabecalho.Height := 75 + altsub;
      end
    else
      begin
        FRRelCust.LFiltro.Enabled := False;
        FRRelCust.QRCabecalho.Height := 55 + altsub;
      end;
    tamF := tamanhocabe*100 div 8;

    // colunas mais largas que a página: todas reduzidas na mesma proporção
    largtotal := 0;
    ncols := 0;
    FDM.TRelCust.First;
    while not FDM.TRelCust.Eof do
      begin
        if (FDM.TRelCustEXIBIR.Value = 'S') and (FDM.TRelCustCAMPO.Value <> '') then
          begin
            largtotal := largtotal + FDM.TRelCustTAMANHO.Value;
            inc(ncols);
          end;
        FDM.TRelCust.Next;
      end;
    fator := 1;
    if (largtotal > 0) and (largtotal + 3 * ncols > FRRelCust.QRCabecalho.Width) then
      fator := (FRRelCust.QRCabecalho.Width - 3 * ncols) / largtotal;

    // grupo: cabeçalho com o valor da coluna e rodapé com os subtotais
    vRodapeGrupo := nil;
    if grupocampo <> '' then
    begin
      vGrupo := TQRGroup.Create(FRRelCust);
      vGrupo.Parent := FRRelCust.QuickRep1;
      vGrupo.Master := FRRelCust.QuickRep1;
      vGrupo.Expression := grupocampo;
      vGrupo.Height := 22;

      vGrupoTit := TQRLabel.Create(FRRelCust);
      vGrupoTit.Parent := vGrupo;
      vGrupoTit.AutoSize := True;
      vGrupoTit.Font.Name := fontecabenome;
      vGrupoTit.Font.Size := tamanhocabe;
      vGrupoTit.Font.Color := corcabe;
      vGrupoTit.Font.Style := [fsBold];
      vGrupoTit.Left := 1;
      vGrupoTit.Top := 3;
      vGrupoTit.Caption := grupotitulo + ':';

      vGrupoVal := TQRDBText.Create(FRRelCust);
      vGrupoVal.Parent := vGrupo;
      vGrupoVal.AutoSize := True;
      vGrupoVal.Font.Assign(vGrupoTit.Font);
      vGrupoVal.Left := vGrupoTit.Left + vGrupoTit.Width + 6;
      vGrupoVal.Top := 3;
      vGrupoVal.DataSet := tabela;
      vGrupoVal.DataField := grupocampo;

      vRodapeGrupo := TQRBand.Create(FRRelCust);
      vRodapeGrupo.Parent := FRRelCust.QuickRep1;
      vRodapeGrupo.BandType := rbGroupFooter;
      vRodapeGrupo.Height := 22;
      vGrupo.FooterBand := vRodapeGrupo;
    end;

    FDM.TRelCust.First;
    while not FDM.TRelCust.Eof do
      Begin
          if (FDM.TRelCustEXIBIR.Value = 'S') and (FDM.TRelCustCAMPO.Value <> '') then
             Begin
                //CABEÇALHO
                vCab := TQRLabel.Create(FRRelCust);
                vCab.Parent := FRRelCust.QRCabecalho;
                vCab.AutoSize := False;
                vCab.AutoStretch := False;
                if (tabela.FieldByName(FDM.TRelCustCAMPO.Value) is TFloatField) then
                  vCab.Alignment := taRightJustify
                else
                  vCab.Alignment := taLeftJustify;
                vcab.Font.Color := corcabe;
                vcab.Font.Style :=  fonteestilo;
                vcab.Font.Name := fontecabenome;
                vcab.Font.Size := tamanhocabe;
                vCab.WordWrap := True;
                vCab.Height := 70 * tamF div 100;
                vCab.Left := x;
                vCab.Top := y;
                //vCab.Width := tabela.FieldByName(FDM.TRelCustCAMPO.Value).displayWidth*tamF div 100*5;
                vCab.Width := Trunc(FDM.TRelCustTAMANHO.Value * fator);
                {if tabela.FieldByName(FDM.TRelCustCAMPO.Value).displayWidth < 10 Then
                  vCab.Width := 20*tamF div 100*5;}
                vCab.Caption := FDM.TRelCustTITULO.Value;
                //ShowMessage(IntToStr(x));
                //FIM CABEÇALHO

                //CAMPO DETAIL
                // formato do relatório; o original da tela de origem volta no finally
                if (tabela.FieldByName(FDM.TRelCustCAMPO.Value) is TFloatField) then
                begin
                  SetLength(formatocampos, Length(formatocampos) + 1);
                  SetLength(formatoorig, Length(formatoorig) + 1);
                  formatocampos[High(formatocampos)] := tabela.FieldByName(FDM.TRelCustCAMPO.Value) as TFloatField;
                  formatoorig[High(formatoorig)] := formatocampos[High(formatocampos)].DisplayFormat;
                  formatocampos[High(formatocampos)].DisplayFormat := '###,###,###,##0.00';
                end;
                vCampo := TQRDBText.Create(FRRelCust.QRBDetail);
                vCampo.Parent := FRRelCust.QRBDetail;
                if (tabela.FieldByName(FDM.TRelCustCAMPO.Value) is TFloatField) then
                  vCampo.Alignment := taRightJustify
                else
                  vCampo.Alignment := taLeftJustify;
                vCampo.AutoSize := False;
                vCampo.AutoStretch := true;
                vCampo.Font.Size := tamanhocorpo;
                vCampo.Font.Color := corcorpo;
                vCampo.Font.Name := fontecorponome;
                vCampo.Left := vCab.Left;
                vCampo.Top := 1;
                vCampo.DataSet := tabela;
                vCampo.DataField := FDM.TRelCustCAMPO.Value;
                vCampo.Width := vCab.Width;
                vCampo.WordWrap := True;
                //FIM CAMPO DETAIL

                tptotal := tipototal(tabela.FieldByName(FDM.TRelCustCAMPO.Value));
                if tptotal <> '' Then
                  Begin
                    VCabQtde := TQRLabel.Create(FRRelCust);
                    VCabQtde.Parent := FRRelCust.QRSummary;
                    VCabQtde.AutoSize := False;
                    VCabQtde.AutoStretch := False;
                    VCabQtde.Alignment := taRightJustify;
                    VCabQtde.Font.Style := fonteestilo;
                    VCabQtde.Font.Name := fontecabenome;
                    VCabQtde.Font.Color := corcabe;
                    VCabQtde.Font.Size := tamanhocabe;
                    VCabQtde.Left := vCab.Left;
                    VCabQtde.Top := 1;
                    VCabQtde.Width := vCab.Width;
                    VCabQtde.Caption:= formatototal(tptotal, FDM.TRelCustTOTAL.Value);

                    if vRodapeGrupo <> nil then
                    begin
                      vSubtotal := TQRExpr.Create(FRRelCust);
                      vSubtotal.Parent := vRodapeGrupo;
                      vSubtotal.AutoSize := False;
                      vSubtotal.Alignment := taRightJustify;
                      vSubtotal.Font.Assign(VCabQtde.Font);
                      vSubtotal.Left := vCab.Left;
                      vSubtotal.Top := 3;
                      vSubtotal.Width := vCab.Width;
                      vSubtotal.Master := FRRelCust.QuickRep1;
                      vSubtotal.ResetAfterPrint := True;
                      if tptotal = 'C' then
                      begin
                        vSubtotal.Expression := 'COUNT';
                        vSubtotal.Mask := '"Qtde: "#,##0';
                      end
                      else if tptotal = 'M' then
                      begin
                        vSubtotal.Expression := 'AVERAGE(' + FDM.TRelCustCAMPO.Value + ')';
                        vSubtotal.Mask := '"Média: "###,###,###,##0.00';
                      end
                      else
                      begin
                        vSubtotal.Expression := 'SUM(' + FDM.TRelCustCAMPO.Value + ')';
                        vSubtotal.Mask := '###,###,###,##0.00';
                      end;
                    end;
                 end;
                x := x + vCab.Width + 3;
             End;

          FDM.TRelCust.Next;
      End;

      //fdm.TRelCust.EnableControls;
      //tabela.EnableControls;
      FRRelCust.QuickRep1.Prepare;
      FRRelCust.LTotPag.Caption := '/' + IntToStr(FRRelCust.QuickRep1.QRPrinter.PageCount);
      DC;
      if tipo = 'normal' then
      begin
        FRRelCust.QuickRep1.Preview;
      end

      else if tipo = 'html' then
      begin
        FRRelCust.QuickRep1.ExportToFilter(TQRGHTMLDocumentFilter.Create(local));
      end
      else if tipo = 'txt' then
      begin
        FRRelCust.QuickRep1.ExportToFilter(TQRAsciiExportFilter.Create(local));
      end
      else if tipo = 'pdf' then
      begin
        FRRelCust.QuickRep1.ExportToFilter(TQRPDFDocumentFilter.Create(local));
      end
      else if tipo = 'rtf' then
      begin
        FRRelCust.QuickRep1.ExportToFilter(TQRRTFExportFilter.Create(local));
      end;

    finally
      FRRelCust.Free;
      FRRelCust := nil;
      for i := High(formatocampos) downto 0 do
        formatocampos[i].DisplayFormat := formatoorig[i];
      if ordenado then
        restaurarordem(indiceant, nomeindiceant);
      fdm.TRelCust.EnableControls;
      tabela.EnableControls;
      DC;
    end;
{  tipo := 1;
  if fdm.TRelCustItem.Active then
  begin
    if fdm.TRelCustItem.RecordCount > 0 then
      InitializeReport(2)
    else
      InitializeReport(1);
  end
  else
  begin
    InitializeReport(1);
  end;}
end;

procedure TFCustomizar.exportarcsv(local : String);
var
  csv : TStringList;
  linhacsv : String;

  function campocsv(valor : String) : String;
  begin
    valor := StringReplace(valor, #13#10, ' ', [rfReplaceAll]);
    valor := StringReplace(valor, #13, ' ', [rfReplaceAll]);
    valor := StringReplace(valor, #10, ' ', [rfReplaceAll]);
    Result := '"' + StringReplace(valor, '"', '""', [rfReplaceAll]) + '"';
  end;

begin
  AC;
  csv := TStringList.Create;
  tabela.DisableControls;
  fdm.TRelCust.DisableControls;
  try
    // primeira linha com os nomes das colunas exibidas
    linhacsv := '';
    fdm.TRelCust.First;
    while not fdm.TRelCust.Eof do
    begin
      if (fdm.TRelCustEXIBIR.Value = 'S') and (fdm.TRelCustCAMPO.Value <> '') then
      begin
        if linhacsv <> '' then
          linhacsv := linhacsv + ';';
        linhacsv := linhacsv + campocsv(fdm.TRelCustTITULO.Value);
      end;
      fdm.TRelCust.Next;
    end;
    csv.Add(linhacsv);

    tabela.First;
    while not tabela.Eof do
    begin
      linhacsv := '';
      fdm.TRelCust.First;
      while not fdm.TRelCust.Eof do
      begin
        if (fdm.TRelCustEXIBIR.Value = 'S') and (fdm.TRelCustCAMPO.Value <> '') then
        begin
          if linhacsv <> '' then
            linhacsv := linhacsv + ';';
          linhacsv := linhacsv + campocsv(tabela.FieldByName(fdm.TRelCustCAMPO.Value).AsString);
        end;
        fdm.TRelCust.Next;
      end;
      csv.Add(linhacsv);
      tabela.Next;
    end;

    csv.SaveToFile(local, TEncoding.UTF8);
  finally
    csv.Free;
    fdm.TRelCust.EnableControls;
    tabela.EnableControls;
    DC;
  end;
end;

procedure TFCustomizar.cxButton11Click(Sender: TObject);
begin
  if fdm.TconfigrelCAMINHOLOGO.Value <> '' then
    ShellExecuteA(0, nil, PansiChar(fdm.TconfigrelCAMINHOLOGO.Value), nil, nil,SW_SHOWNORMAL);
end;

procedure TFCustomizar.cxButton12Click(Sender: TObject);
begin
      if (fdm.Tconfigrel.State in [dsedit,dsinsert]) then
      begin
        fdm.TConfigRelFONTECABE.Value := CbFonteCab.Text;
        fdm.TConfigRelFONTECORPO.Value := CbFonteText.Text;

        fdm.TConfigRelCORCABE.Value := ColorToString(CbCorCabe.ColorValue);
        fdm.TConfigRelCORCORPO.Value := ColorToString(CbCorCorpo.ColorValue);


        fdm.Tconfigrel.Post;
        fdm.Tconfigrel.ApplyUpdates(0);
        fdm.Tconfigrel.Edit;
        showmessage('Configurações salvas com sucesso!');
        CbOrientacao.Text := fdm.TConfigRelORIENTACAO.Value;
      end;
end;

procedure TFCustomizar.cxButton13Click(Sender: TObject);
begin
  if (fdm.Tconfigrel.State in [dsedit,dsinsert]) then
  begin
    fdm.Tconfigrel.Cancel;
  end;
  close;
end;

procedure TFCustomizar.cxButton1Click(Sender: TObject);
begin
    impressao('normal','');
end;

procedure TFCustomizar.cxButton2Click(Sender: TObject);
begin
  gerarexcel('');
end;

// arquivo = '' abre a planilha no Excel; senão grava em arquivo (.xlsx) e fecha o Excel
function TFCustomizar.gerarexcel(arquivo : String) : Boolean;
var
  Excel, Planilha, Dados: variant;
  i, r, ncol, nlin, ngrupos, nreg, nregrupo, totlin, coltit: integer;
  campos: array of TField;
  titulos, tipos: array of String;
  totais, qtdes, subtot, subqtde: array of Double;
  zebra, linhasgrupo, linhassub: array of integer;
  dtcorte: TDateTime;
  grupocampo, grupotitulo, grupoatual, indiceant, nomeindiceant, sepexcel: String;
  campogrp: TField;
  ordenado: Boolean;

  function colunaexcel(n: integer): String;
  begin
    Result := '';
    while n > 0 do
    begin
      Result := Chr(Ord('A') + (n - 1) mod 26) + Result;
      n := (n - 1) div 26;
    end;
  end;

  function faixa(lin1, col1, lin2, col2: integer): variant;
  begin
    Result := Planilha.Range[Planilha.Cells[lin1, col1], Planilha.Cells[lin2, col2]];
  end;

  // pinta linhas inteiras do bloco, várias por chamada (endereço até 255 caracteres)
  procedure pintarlinhas(linhas: array of integer; cor: integer; negrito: Boolean);
  var
    k: integer;
    faixas: String;
  begin
    try
      faixas := '';
      for k := 0 to High(linhas) do
      begin
        if faixas <> '' then
          faixas := faixas + sepexcel;
        faixas := faixas + 'A' + inttostr(linhas[k]) + ':' + colunaexcel(ncol) + inttostr(linhas[k]);
        if (Length(faixas) > 230) or (k = High(linhas)) then
        begin
          Planilha.Range[faixas].Interior.ColorIndex := cor;
          if negrito then
            Planilha.Range[faixas].Font.Bold := True;
          faixas := '';
        end;
      end;
    except
      // Excel recusou o endereço com várias faixas: pinta linha a linha
      for k := 0 to High(linhas) do
      begin
        faixa(linhas[k], 1, linhas[k], ncol).Interior.ColorIndex := cor;
        if negrito then
          faixa(linhas[k], 1, linhas[k], ncol).Font.Bold := True;
      end;
    end;
  end;

  function valortotal(tp: String; soma, qtde: Double; registros: integer): Double;
  begin
    if tp = 'C' then
      Result := registros
    else if tp = 'M' then
    begin
      if qtde > 0 then
        Result := soma / qtde
      else
        Result := 0;
    end
    else
      Result := soma;
  end;

  procedure gravarsubtotal;
  var
    k: integer;
  begin
    inc(r);
    SetLength(linhassub, Length(linhassub) + 1);
    linhassub[High(linhassub)] := r + 3;
    if tipos[0] = '' then
      Dados[r, 1] := 'Subtotal';
    for k := 0 to ncol - 1 do
      if tipos[k] <> '' then
        Dados[r, k + 1] := valortotal(tipos[k], subtot[k], subqtde[k], nregrupo);
  end;

begin
  Result := False;
  PProgresso.Visible := true;
  ProgressBar1.Position := 0;
  PProgresso.Update;
  linha := 0;
  nreg := 0;
  ordenado := False;
  campogrp := nil;

  tabela.DisableControls;
  fdm.TRelCust.DisableControls;
  try
    try
      // lbaguarde.Visible := true;
      grupocampo := campogrupo(grupotitulo);
      if grupocampo <> '' then
      begin
        ordenado := ordenartabela(grupocampo, indiceant, nomeindiceant);
        campogrp := tabela.FieldByName(grupocampo);
      end;

      CoInitialize(nil);
      Excel := CreateOleObject('Excel.Application');
      Excel.Visible := false;
      Excel.WorkBooks.add;
      Planilha := Excel.WorkBooks[1].Sheets[1];
      // separador de faixas no endereço segue o separador de lista do Windows (',' ou ';')
      sepexcel := Excel.International[5];

      // colunas exibidas, na ordem da customização (campo resolvido uma vez só)
      ncol := 0;
      fdm.TRelCust.First;
      while not fdm.TRelCust.Eof do
      Begin
        if (fdm.TRelCustEXIBIR.Value = 'S') and (fdm.TRelCustCAMPO.Value <> '') then
        begin
          inc(ncol);
          SetLength(campos, ncol);
          SetLength(titulos, ncol);
          SetLength(tipos, ncol);
          SetLength(totais, ncol);
          SetLength(qtdes, ncol);
          SetLength(subtot, ncol);
          SetLength(subqtde, ncol);
          campos[ncol - 1] := tabela.FieldByName(fdm.TRelCustCAMPO.Value);
          titulos[ncol - 1] := fdm.TRelCustTITULO.Value;
          tipos[ncol - 1] := tipototal(campos[ncol - 1]);
          totais[ncol - 1] := 0;
          qtdes[ncol - 1] := 0;
        end;
        fdm.TRelCust.next;
      END;
      if ncol = 0 then
        raise Exception.Create('Nenhuma coluna marcada para exibir!');

      // CABEÇALHO
      for i := 0 to ncol - 1 do
        Planilha.Cells[3, i + 1] := titulos[i];
      faixa(3, 1, 3, ncol).Font.Bold := True;
      faixa(3, 1, 3, ncol).Borders.LineStyle := 1;
      faixa(3, 1, 3, ncol).Font.Size := 11;
      faixa(3, 1, 3, ncol).Interior.ColorIndex := 37;
      // FIM CABEÇALHO

      // registros e grupos (cada grupo ganha uma linha de título e uma de subtotal)
      nlin := 0;
      ngrupos := 0;
      tabela.First;
      while not tabela.Eof do
      begin
        inc(nlin);
        if (campogrp <> nil) and ((nlin = 1) or (campogrp.AsString <> grupoatual)) then
        begin
          inc(ngrupos);
          grupoatual := campogrp.AsString;
        end;
        tabela.Next;
      end;
      ProgressBar1.Max := nlin;
      totlin := nlin + 2 * ngrupos;

      if totlin > 0 then
      begin
        dtcorte := EncodeDate(2000, 1, 1);
        Dados := VarArrayCreate([1, totlin, 1, ncol], varVariant);
        r := 0;
        nreg := 0;
        nregrupo := 0;
        tabela.First;
        while (not tabela.Eof) and (nreg < nlin) do
        begin
          if (campogrp <> nil) and ((nreg = 0) or (campogrp.AsString <> grupoatual)) then
          begin
            if nreg > 0 then
              gravarsubtotal;
            grupoatual := campogrp.AsString;
            inc(r);
            SetLength(linhasgrupo, Length(linhasgrupo) + 1);
            linhasgrupo[High(linhasgrupo)] := r + 3;
            Dados[r, 1] := grupotitulo + ': ' + campogrp.DisplayText;
            for i := 0 to ncol - 1 do
            begin
              subtot[i] := 0;
              subqtde[i] := 0;
            end;
            nregrupo := 0;
          end;

          inc(r);
          inc(nreg);
          inc(nregrupo);
          if nregrupo mod 2 = 0 then
          begin
            SetLength(zebra, Length(zebra) + 1);
            zebra[High(zebra)] := r + 3;
          end;

          for i := 0 to ncol - 1 do
          begin
            if campos[i].IsNull then
              Dados[r, i + 1] := ''
            else if campos[i] is TSQLTimeStampField then
              Dados[r, i + 1] := campos[i].DisplayText
            else if campos[i] is TDateTimeField then
            begin
              if campos[i].AsDateTime > dtcorte then
                Dados[r, i + 1] := campos[i].Value
              else
                Dados[r, i + 1] := campos[i].DisplayText;
            end
            else if campos[i] is TNumericField then
              Dados[r, i + 1] := campos[i].AsFloat
            else
              Dados[r, i + 1] := campos[i].AsString;

            if (campos[i] is TNumericField) and not campos[i].IsNull then
            begin
              totais[i] := totais[i] + campos[i].AsFloat;
              qtdes[i] := qtdes[i] + 1;
              subtot[i] := subtot[i] + campos[i].AsFloat;
              subqtde[i] := subqtde[i] + 1;
            end;
          end;
          linha := nreg + 3;
          if nreg mod 200 = 0 then
          begin
            ProgressBar1.Position := nreg;
            ProgressBar1.Update;
          end;
          tabela.next;
        end;
        if (campogrp <> nil) and (nreg > 0) then
          gravarsubtotal;

        faixa(4, 1, totlin + 3, ncol).Value := Dados;

        for i := 0 to ncol - 1 do
          if campos[i] is TNumericField then
          begin
            if campos[i] is TIntegerField then
              faixa(4, i + 1, totlin + 3, i + 1).NumberFormat := '###.###.###.##0'
            else
              faixa(4, i + 1, totlin + 3, i + 1).Style := 'Comma';
          end;
        faixa(4, 1, totlin + 3, ncol).Borders.LineStyle := 1;

        // linhas pares do relatório (de cada grupo) em destaque; título e subtotal do grupo em negrito
        if Length(zebra) > 0 then
          pintarlinhas(zebra, 24, False);
        if Length(linhasgrupo) > 0 then
          pintarlinhas(linhasgrupo, 15, True);
        if Length(linhassub) > 0 then
          pintarlinhas(linhassub, 36, True);
      end;

      // totais gerais: na linha de cima o tipo (Soma/Qtde/Média), embaixo o valor
      linha := totlin + 5;
      coltit := 0;
      for i := 0 to ncol - 1 do
        if tipos[i] <> '' then
        begin
          if tipos[i] = 'C' then
            Planilha.Cells[linha, i + 1] := 'Qtde'
          else if tipos[i] = 'M' then
            Planilha.Cells[linha, i + 1] := 'Média'
          else
            Planilha.Cells[linha, i + 1] := 'Soma';
          Planilha.Cells[linha, i + 1].Font.Bold := True;
          if coltit = 0 then
            coltit := i + 1;
        end;
      if tipos[0] = '' then
      begin
        Planilha.Cells[linha, 1] := 'TOTAIS';
        Planilha.Cells[linha, 1].Font.Bold := True;
      end;

      linha := linha + 1;
      for i := 0 to ncol - 1 do
        if tipos[i] <> '' then
        begin
          if tipos[i] = 'C' then
            Planilha.Cells[linha, i + 1].NumberFormat := '#,##0'
          else
            Planilha.Cells[linha, i + 1].Style := 'Comma';
          Planilha.Cells[linha, i + 1].Interior.ColorIndex := 36;
          Planilha.Cells[linha, i + 1].Borders.LineStyle := 1;
          Planilha.Cells[linha, i + 1].Value := valortotal(tipos[i], totais[i], qtdes[i], nreg);
        end;

      Planilha.Columns.EntireColumn.AutoFit;
      if Trim(ESubTitulo.Text) <> '' then
        Planilha.Cells[1, 1] := ETitulo.Text + ' - ' + ESubTitulo.Text + ' | ' + DateTostr(Date) + ' | E-TECH '
      else
        Planilha.Cells[1, 1] := ETitulo.Text + ' | ' + DateTostr(Date) + ' | E-TECH ';
      Planilha.Cells[1, 1].Select;
      Planilha.Cells[1, 1].Font.Bold := True;
      Planilha.Cells[1, 1].Font.Size := 12;
      Planilha.Cells[2, 1] := filtro;

      if arquivo = '' then
        Excel.Visible := True
      else
      begin
        Excel.DisplayAlerts := False;
        Excel.WorkBooks[1].SaveAs(arquivo, 51);
        Excel.Quit;
      end;
      Result := True;
    except
      on E: Exception do
      begin
        if linha >= 4 then
          showmessage('Ocorreu um erro ao gerar a planilha (linha '+inttostr(linha)+'), causa provavel: dados nulos ou inválidos!')
        else
          showmessage('Ocorreu um erro ao gerar a planilha: ' + E.Message);
        if not VarIsEmpty(Excel) then
        begin
          try
            Excel.Visible := True;
          except
          end;
        end;
      end;
    end;
  finally
    if ordenado then
      restaurarordem(indiceant, nomeindiceant);
    tabela.EnableControls;
    fdm.TRelCust.EnableControls;
    PProgresso.Visible := false;
  end;

  if Result and (arquivo = '') then
    showmessage('Planilha gerada com sucesso!');
end;
procedure TFCustomizar.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFCustomizar.cxButton4Click(Sender: TObject);
begin
  enviaremail := False;
  PExport.Caption := 'Exportar';
  PExport.Visible := True;
end;

procedure TFCustomizar.BtEmailClick(Sender: TObject);
begin
  enviaremail := True;
  PExport.Caption := 'Enviar por e-mail';
  PExport.Visible := True;
end;

procedure TFCustomizar.BtSubirClick(Sender: TObject);
begin
  movercoluna(-1);
end;

procedure TFCustomizar.BtDescerClick(Sender: TObject);
begin
  movercoluna(1);
end;

procedure TFCustomizar.cxGrid4DBTableView1EditValueChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
  campo : String;
begin
  // só uma coluna agrupa por vez: marcar uma desmarca a anterior
  if AItem <> cxGrid4DBTableView1AGRUPAR then
    exit;

  Sender.DataController.PostEditingData;
  if fdm.TRelCustAGRUPAR.Value <> 'S' then
    exit;

  campo := fdm.TRelCustCAMPO.Value;
  fdm.TRelCust.DisableControls;
  try
    fdm.TRelCust.First;
    while not fdm.TRelCust.Eof do
    begin
      if (fdm.TRelCustCAMPO.Value <> campo) and (fdm.TRelCustAGRUPAR.Value = 'S') then
      begin
        fdm.TRelCust.Edit;
        fdm.TRelCustAGRUPAR.Value := 'N';
        fdm.TRelCust.Post;
      end;
      fdm.TRelCust.Next;
    end;
    fdm.TRelCust.Locate('CAMPO', campo, []);
  finally
    fdm.TRelCust.EnableControls;
  end;
end;

procedure TFCustomizar.cxButton5Click(Sender: TObject);
begin
  if Fonte.Execute then
  begin
    fonteestilo := Fonte.Font.Style;
    corcorpo := Fonte.Font.Color;
    corcabe := Fonte.Font.Color;

    tamanhocorpo := Fonte.Font.Size;
    tamanhocabe := Fonte.Font.Size;

    fontecabenome := Fonte.Font.Name;
    fontecorponome := Fonte.Font.Name;
  end;
end;

procedure TFCustomizar.cxButton6Click(Sender: TObject);
var
  arquivo : String;
begin
  if enviaremail then
  begin
    // gera o arquivo na pasta relatorios e abre o envio com ele anexado
    PExport.Visible := false;
    arquivo := '';
    if cxRadioGroup2.ItemIndex = 0 then
    begin
      arquivo := nomearquivorelatorio('.pdf');
      impressao('pdf', arquivo);
    end
    else if cxRadioGroup2.ItemIndex = 1 then
    begin
      arquivo := nomearquivorelatorio('.html');
      impressao('html', arquivo);
    end
    else if cxRadioGroup2.ItemIndex = 2 then
    begin
      arquivo := nomearquivorelatorio('.rtf');
      impressao('rtf', arquivo);
    end
    else if cxRadioGroup2.ItemIndex = 3 then
    begin
      arquivo := nomearquivorelatorio('.txt');
      impressao('txt', arquivo);
    end
    else if cxRadioGroup2.ItemIndex = 4 then
    begin
      arquivo := nomearquivorelatorio('.xlsx');
      if not gerarexcel(arquivo) then
        exit;
    end
    else if cxRadioGroup2.ItemIndex = 5 then
    begin
      arquivo := nomearquivorelatorio('.csv');
      exportarcsv(arquivo);
    end;

    if (arquivo <> '') and FileExists(arquivo) then
      enviaremailrelatorio(arquivo);
    exit;
  end;

  if cxRadioGroup2.ItemIndex = 5 then
  begin
    SaveDialog1.FilterIndex := 5;
    if SaveDialog1.Execute then
    begin
      exportarcsv(ChangeFileExt(SaveDialog1.FileName,'.csv'));
      showmessage('Arquivo CSV gerado com sucesso!');
    end;
  end
  else if cxRadioGroup2.ItemIndex <> 4 then
  begin
    SaveDialog1.FilterIndex := Succ(cxRadioGroup2.ItemIndex);
    if SaveDialog1.Execute then
    begin
      if cxRadioGroup2.ItemIndex = 0 then
      begin
        impressao('pdf',ChangeFileExt(SaveDialog1.FileName,'.pdf'));
      end
      else if cxRadioGroup2.ItemIndex = 1 then
      begin
        impressao('html',ChangeFileExt(SaveDialog1.FileName,'.html'));
      end
      else if cxRadioGroup2.ItemIndex = 2 then
      begin
        impressao('rtf',ChangeFileExt(SaveDialog1.FileName,'.rtf'));
      end
      else if cxRadioGroup2.ItemIndex = 3 then
      begin
        impressao('txt',ChangeFileExt(SaveDialog1.FileName,'.txt'));
      end;
    end;
  end
  else
  begin
    cxButton2Click(Sender);
  end;
  PExport.Visible := false;
end;

procedure TFCustomizar.cxButton7Click(Sender: TObject);
begin
  PExport.Visible := false;
end;

procedure TFCustomizar.cxButton8Click(Sender: TObject);
begin
  //margem
  if fdm.TConfigRelMARGEMTOP.Value > 0 then
    margemtop := fdm.TConfigRelMARGEMTOP.Value;

  if fdm.TConfigRelMARGEMINF.Value > 0 then
    margeminf := fdm.TConfigRelMARGEMINF.Value;

  if fdm.TConfigRelMARGEMDIR.Value > 0 then
    margemdir := fdm.TConfigRelMARGEMDIR.Value;

  if fdm.TConfigRelMARGEMESQ.Value > 0 then
    margemesq := fdm.TConfigRelMARGEMESQ.Value;
  //fim margem


  //tamnho
  if fdm.TConfigRelTAMCABE.Value > 0 then
    tamanhocabe := trunc(fdm.TConfigRelTAMCABE.Value);

  if fdm.TConfigRelTAMCORPO.Value > 0 then
    tamanhocorpo := trunc(fdm.TConfigRelTAMCORPO.Value);
  //fim tamanho


  //cor
  corcabe := CbCorCabe.ColorValue;
  corcorpo := CbCorCorpo.ColorValue;
  //fim cor

  //fonte
  if CbFonteText.Text <> '' then
    fontecorponome := CbFonteText.Text;

  if CbFonteCab.Text <> '' then
    fontecabenome := CbFonteCab.Text;
  //fim fonte


  if fdm.TConfigRelORIENTACAO.Value <> '' then
  begin
    orientacao := fdm.TConfigRelORIENTACAO.Value;
    CbOrientacao.Text := fdm.TConfigRelORIENTACAO.Value;
  end;
  showmessage('Configurações aplicadas com sucesso!');
end;

procedure TFCustomizar.cxButton9Click(Sender: TObject);
begin
  fdm.TConfigRelMARGEMTOP.Value := 1;
  fdm.TConfigRelMARGEMINF.Value := 1;
  fdm.TConfigRelMARGEMDIR.Value := 1;
  fdm.TConfigRelMARGEMESQ.Value := 1;
  fdm.TConfigRelTAMCABE.Value := 12;
  fdm.TConfigRelTAMCORPO.Value := 10;
  fdm.TConfigRelCORCABE.Value := 'clblack';
  fdm.TConfigRelCORCORPO.Value := 'clblack';
  fdm.TConfigRelFONTECORPO.Value := '';
  fdm.TConfigRelFONTECABE.Value := '';
  fdm.TConfigRelORIENTACAO.Value := 'RETRATO';
  CbOrientacao.Text := fdm.TConfigRelORIENTACAO.Value;
  fdm.TconfigrelCAMINHOLOGO.Value := '';
  CbCorCabe.ColorValue := clBlack;
  CbCorCorpo.ColorValue := clBlack;
  CbFonteCab.Text := '';
  CbFonteText.Text := '';
  Image1.Picture.Assign(nil);
  showmessage('Configurações restauradas com sucesso!');
end;

procedure TFCustomizar.cxGridDBColumn3PropertiesChange(Sender: TObject);
var
  campo : integer;
begin
   if FDM.TRelCustitem.RecordCount > 0 then
    begin
      if FDM.TRelCustitemEXIBIR.Value = 'N' then
        ExecSQL('update relcustitem set exibir = '+QuotedStr('S')+' where form = '+QuotedStr(FDM.TRelCustitemFORM.Value) + ' and TABELA = '+inttoStr(FDM.TRelCustItemTABELA.Value)+' and REL = '+inttostr(FDM.TRelCustItemREL.Value))
      else
      begin
        ExecSQL('update relcustitem set exibir = '+QuotedStr('N')+' where form = '+QuotedStr(FDM.TRelCustitemFORM.Value) + ' and TABELA = '+inttoStr(FDM.TRelCustItemTABELA.Value)+' and REL = '+inttostr(FDM.TRelCustItemREL.Value));
      end;
      campo := FDM.TRelCustItemTABELA.Value;
      fdm.TRelCustitem.Close;
      fdm.TRelCustitem.Open;
      fdm.TRelCustitem.locate('CAMPO',campo,[]);
    end;
end;

procedure TFCustomizar.cxGridDBColumn8PropertiesChange(Sender: TObject);
var
  campo : String;
  begin
   if FDM.TRelCustitemit.RecordCount > 0 then
    begin
      if FDM.TRelCustitemitEXIBIR.Value = 'N' then
        ExecSQL('update relcustitemit set exibir = '+QuotedStr('S')+' where form = '+QuotedStr(FDM.TRelCustitemitFORM.Value) + ' and CAMPO = '+QuotedStr(FDM.TRelCustItemItCAMPO.Value)+' and REL = '+inttostr(FDM.TRelCustItemitREL.Value))
      else
      begin
        ExecSQL('update relcustitemit set exibir = '+QuotedStr('N')+', SOMAR = '+QuotedStr('N')+' where form = '+QuotedStr(FDM.TRelCustitemitFORM.Value) + ' and CAMPO = '+QuotedStr(FDM.TRelCustItemItCAMPO.Value)+' and REL = '+inttostr(FDM.TRelCustItemitREL.value));
      end;
      campo := FDM.TRelCustItemItCAMPO.Value;
      fdm.TRelCustitemit.Close;
      fdm.TRelCustitemit.Open;
      fdm.TRelCustitemit.locate('CAMPO',campo,[]);
    end;
end;

procedure TFCustomizar.cxGridDBColumn9PropertiesChange(Sender: TObject);
var
  campo : String;
  begin
   if FDM.TRelCustitemit.RecordCount > 0 then
    begin
      if FDM.TRelCustitemitSOMAR.Value = 'N' then
        ExecSQL('update relcustitemit set somar = '+QuotedStr('S')+', EXIBIR = '+QuotedStr('S')+'where form = '+QuotedStr(FDM.TRelCustFORM.Value) + ' and CAMPO = '+QuotedStr(FDM.TRelCustitemitCAMPO.Value)+ ' and REL = '+inttostr(FDM.TRelCustitemitREL.Value))
      else
      begin
        ExecSQL('update relcustitemit set somar = '+QuotedStr('N')+' where form = '+QuotedStr(FDM.TRelCustFORM.Value) + ' and CAMPO = '+QuotedStr(FDM.TRelCustitemitCAMPO.Value)+ ' and REL = '+inttostr(FDM.TRelCustitemitREL.Value));
      end;
      campo := FDM.TRelCustitemitCAMPO.Value;
      fdm.TRelCustitemit.Close;
      fdm.TRelCustitemit.Open;
      fdm.TRelCustitemit.locate('CAMPO',campo,[]);
    end;
end;

procedure TFCustomizar.cxPageControl1Change(Sender: TObject);
begin
    if cxPageControl1.ActivePageIndex = 2 then
    begin
      if not (fdm.Tconfigrel.State in [dsedit,dsinsert]) then
        fdm.Tconfigrel.Edit;

      if (fdm.TconfigrelCAMINHOLOGO.Value <> '') and (FileExists(fdm.TconfigrelCAMINHOLOGO.Value)) then
        Image1.Picture.LoadFromFile(fdm.TconfigrelCAMINHOLOGO.Value);

      if (fdm.TConfigRelFONTECABE.Value <> '') then
        CbFonteCab.FontName := fdm.TConfigRelFONTECABE.Value;

      if (fdm.TConfigRelFONTECORPO.Value <> '') then
        CbFonteText.FontName := fdm.TConfigRelFONTECORPO.Value;

      if (fdm.TConfigRelCORCABE.Value <> '') then
        CbCorCabe.ColorValue := lercor(fdm.TConfigRelCORCABE.Value);

      if (fdm.TConfigRelCORCORPO.Value <> '') then
        CbCorCorpo.ColorValue := lercor(fdm.TConfigRelCORCORPO.Value);
    end;
    if cxPageControl1.ActivePageIndex = 0 then
    begin
      if (fdm.Tconfigrel.State in [dsedit,dsinsert]) then
        fdm.Tconfigrel.Cancel;
    end;
end;

procedure TFCustomizar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // grava Exibir/Somar/Tamanho das colunas também quando fecha pelo X
  cxGrid4DBTableView1.DataController.PostEditingData;
  if (fdm.Tconfigrel.State in [dsedit,dsinsert]) then
  begin
    fdm.Tconfigrel.Cancel;
  end;

  if (fdm.TRelCust.State in [dsedit,dsinsert]) then
  begin
    fdm.TRelCust.Post;
  end;
  fdm.TRelCust.ApplyUpdates(0);
end;

procedure TFCustomizar.FormCreate(Sender: TObject);
begin
    marcacheck := false;
end;

procedure TFCustomizar.FormShow(Sender: TObject);
begin
    if marcacheck then
      CkExibir.State := cbsChecked;

    cxPageControl1.ActivePageIndex := 0;
    CbOrientacao.Text := fdm.TConfigRelORIENTACAO.Value;

    if fdm.TConfigRelMARGEMTOP.Value > 0 then
      margemtop := fdm.TConfigRelMARGEMTOP.Value;

    if fdm.TConfigRelMARGEMINF.Value > 0 then
      margeminf := fdm.TConfigRelMARGEMINF.Value;

    if fdm.TConfigRelMARGEMDIR.Value > 0 then
      margemdir := fdm.TConfigRelMARGEMDIR.Value;

    if fdm.TConfigRelMARGEMESQ.Value > 0 then
      margemesq := fdm.TConfigRelMARGEMESQ.Value;
    //fim margem


    //tamnho
    if fdm.TConfigRelTAMCABE.Value > 0 then
      tamanhocabe := trunc(fdm.TConfigRelTAMCABE.Value);

    if fdm.TConfigRelTAMCORPO.Value > 0 then
      tamanhocorpo := trunc(fdm.TConfigRelTAMCORPO.Value);
    //fim tamanho


    //cor
    if fdm.TConfigRelCORCABE.Value <> '' then
    begin
      corcabe := lercor(fdm.TConfigRelCORCABE.Value);
      CbCorCabe.ColorValue := corcabe;
    end;

    if fdm.TConfigRelCORCORPO.Value <> '' then
    begin
      corcorpo := lercor(fdm.TConfigRelCORCORPO.Value);
      CbCorCorpo.ColorValue := corcorpo;
    end;
    //fim cor

    //fonte
    if fdm.TConfigRelFONTECORPO.Value <> '' then
    begin
      CbFonteText.Text := fdm.TConfigRelFONTECORPO.Value;
      fontecorponome := CbFonteText.Text;
    end;

    if fdm.TConfigRelFONTECABE.Value <> '' then
    begin
      CbFonteCab.Text := fdm.TConfigRelFONTECABE.Value;
      fontecabenome := CbFonteCab.Text;
    end;
    //fim fonte


    if fdm.TConfigRelORIENTACAO.Value <> '' then
    begin
      orientacao := fdm.TConfigRelORIENTACAO.Value;
    end;
end;

procedure TFCustomizar.CkExibirClick(Sender: TObject);
var
  campo : String;
begin
  campo := fdm.TRelCustCAMPO.Value;

  fdm.TRelCust.DisableControls;
  fdm.TRelCust.First;
  while not fdm.TRelCust.Eof do
  begin
    fdm.TRelCust.Edit;
    if CkExibir.Checked then
      fdm.TRelCustEXIBIR.Value := 'S'
    else
      fdm.TRelCustEXIBIR.Value := 'N';
    fdm.TRelCust.Post;
    fdm.TRelCust.Next;
  end;
  fdm.TRelCust.Locate('CAMPO',campo,[]);
  fdm.TRelCust.EnableControls;
end;

end.

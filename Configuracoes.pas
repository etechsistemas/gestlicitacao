unit Configuracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, cxControls,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, StdCtrls, DBCtrls, Mask, cxPC,
  cxButtons;

type
  TFConfiguracoes = class(TForm)
    Panel1: TPanel;
    cxPageControl1: TcxPageControl;
    Cliente: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    Label27: TLabel;
    DBMemo3: TDBMemo;
    Label28: TLabel;
    DBMemo4: TDBMemo;
    Label29: TLabel;
    DBMemo5: TDBMemo;
    Label30: TLabel;
    DBMemo6: TDBMemo;
    Label31: TLabel;
    DBMemo7: TDBMemo;
    Label32: TLabel;
    DBMemo8: TDBMemo;
    Label33: TLabel;
    DBMemo9: TDBMemo;
    Label34: TLabel;
    Label35: TLabel;
    DBMemo10: TDBMemo;
    cxTabSheet14: TcxTabSheet;
    Label36: TLabel;
    DBEdit10: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo4KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo5KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo6KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo7KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo8KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo9KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracoes: TFConfiguracoes;

implementation

uses Principal, DM, DMSistema, metodosServ, DMUsuario,
  DMGerLicitacao, UBiblio;

{$R *.dfm}

procedure TFConfiguracoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FDM.TEmpresa.close;
    FDMUsuario.QMenuGerLic.close;
end;

procedure TFConfiguracoes.FormShow(Sender: TObject);
begin
    if FDM.TConfig.Active = true then
      FDM.TConfig.Refresh
    else
      FDM.TConfig.Open;

    if FDMGerLicitacao.TConfigLic.Active = true then
      FDMGerLicitacao.TConfigLic.Refresh
    else
      FDMGerLicitacao.TConfigLic.Open;

    if FDM.TConfig.RecordCount = 0 then
    begin
      FDM.TConfig.Append;
      FDM.TConfigCODIGO.Value := 1;
    end
    else
      FDM.TConfig.Edit;

    if FDMGerLicitacao.TConfigLic.RecordCount = 0 then
    begin
      FDMGerLicitacao.TConfigLic.Append;
      FDMGerLicitacao.TConfigLicCODIGO.Value := 1;
    end
    else
      FDMGerLicitacao.TConfigLic.Edit;

    FDMUsuario.QMenuGerLic.Open;
    FDM.TEmpresa.Open;

end;

procedure TFConfiguracoes.cxButton3Click(Sender: TObject);
var
  ip, pasta : String;
  image : TImage;
begin
    fdm.TConfig.Post;
    fdm.TConfig.ApplyUpdates(0);

    FDMGerLicitacao.TConfigLic.Post;
    FDMGerLicitacao.TConfigLic.ApplyUpdates(0);

    close;
end;

procedure TFConfiguracoes.cxButton4Click(Sender: TObject);
begin
    fdm.TConfigRel.Cancel;
    FDMGerLicitacao.TConfigLic.Cancel;
    close;
end;

procedure TFConfiguracoes.cxButton6Click(Sender: TObject);
var
  i, j, p, x, r, e, c, g : integer;
  sql,especial : String;
  entrou : boolean;
begin
    sql := '';
    especial := 'N';
    j := 1;
    r := 0;
    e := 0;
    sql := ' delete from menugerlic;';
    with FPrincipal do
    begin
      for I := 0 to MainMenu1.Items.Count -1 do
      begin
        if (MainMenu1.Items[i].Caption <> '-') and (MainMenu1.Items[i].Caption <> '') then //menu
        begin
          if not (MainMenu1.Items[i].Tag = 3) then
          begin
            especial := 'N';
          end
          else
          begin
            especial := 'S';
          end;
          sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,ESPECIAL) values('+inttostr(j)+',';
          sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Name)))+',replace('+QuotedStr(UpperCase(MainMenu1.Items[i].Caption))+','+QuotedStr('&')+','+QuotedStr('')+'),-1,'+QuotedStr(especial)+');';
          e := j;
          j := j + 1;
        end;

        for p := 0 to MainMenu1.Items[I].Count - 1 do //sub-menu
        begin

          entrou := false;
          if (MainMenu1.Items[i].Items[p].Caption <> '-') and (MainMenu1.Items[i].Items[p].Caption <> '') then
          begin
            entrou := true;
            sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,ESPECIAL) values('+inttostr(j)+',';
            sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+',replace('+QuotedStr(UpperCase(MainMenu1.Items[i].Items[p].Caption))+','+QuotedStr('&')+','+QuotedStr('')+'),'+inttostr(e)+','+QuotedStr(especial)+');';
            r := j;
            c := j;
            j := j + 1;
          end;

          for x := 0 to MainMenu1.Items[I].Items[p].Count -1  do //expande sub-menu
          begin
            if (MainMenu1.Items[i].Items[p].Items[x].Caption <> '-') and (MainMenu1.Items[i].Items[p].Items[x].Caption <> '')then
            begin
              sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,BOTAO,ESPECIAL) values('+inttostr(j)+',';
              sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+',replace('+QuotedStr(UpperCase(MainMenu1.Items[i].Items[p].Items[x].Caption))+','+QuotedStr('&')+','+QuotedStr('')+'),'+inttostr(r)+','+QuotedStr('BT'+UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+','+QuotedStr(especial)+');';
              g := j;
              j := j + 1;
              sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,ESPECIAL) values('+inttostr(j)+',';
              sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+','+QuotedStr('INSERIR')+','+inttostr(g)+','+QuotedStr(especial)+');';
              j := j + 1;
              sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,ESPECIAL) values('+inttostr(j)+',';
              sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+','+QuotedStr('EDITAR')+','+inttostr(g)+','+QuotedStr(especial)+');';
              j := j + 1;
              sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,ESPECIAL) values('+inttostr(j)+',';
              sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+','+QuotedStr('EXCLUIR')+','+inttostr(g)+','+QuotedStr(especial)+');';
              j := j + 1;
            end;
          end;

          if entrou then  //nao expande o sub-menu
          begin
            sql := sql + ' update menugerlic set BOTAO = '+QuotedStr('BT'+UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+' where CODIGO = '+inttostr(j-1)+';';

            sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,ESPECIAL) values('+inttostr(j)+',';
            sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+','+QuotedStr('INSERIR')+','+inttostr(c)+','+QuotedStr(especial)+');';
            j := j + 1;
            sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,ESPECIAL) values('+inttostr(j)+',';
            sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+','+QuotedStr('EDITAR')+','+inttostr(c)+','+QuotedStr(especial)+');';
            j := j + 1;
            sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,ESPECIAL) values('+inttostr(j)+',';
            sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+','+QuotedStr('EXCLUIR')+','+inttostr(c)+','+QuotedStr(especial)+');';
            j := j + 1;
          end;
        end;
      end;
    end;

    sql := sql + ' update usupermgerlic set usupermgerlic.CODMOD = menugerlic.CODIGO';
    sql := sql + ' from usupermgerlic, menugerlic';
    sql := sql + ' where menugerlic.NOME = usupermgerlic.NOMEFORM and menugerlic.DESCRICAO = usupermgerlic.NOMEMODULO;';

    sql := sql + ' delete from usupermgerlic where NOMEFORM not in (select NOMEFORM from menugerlic);';
    ExecSQl(sql);
end;

procedure TFConfiguracoes.cxButton7Click(Sender: TObject);
var
  i, j, p, x, r, e, c, g, a, m : integer;
  sql : String;
  entrou : boolean;
begin
    sql := '';
    j := 1;
    r := 0;
    e := 0;
    m := 0;
    a := ultimo('menugerlic','codigo');
    FDMUsuario.QMenuGerLic.Refresh;
    with FPrincipal do
    begin
      for I := 0 to MainMenu1.Items.Count -1 do
      begin

        if (MainMenu1.Items[i].Caption <> '-') and (MainMenu1.Items[i].Caption <> '') then //menu
        begin
          if not (FDMUsuario.QMenuGerLic.Locate('NOME',UpperCase(String(MainMenu1.Items[i].Name)),[])) then
          begin
            sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT) values('+inttostr(a)+',';
            sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Name)))+','+QuotedStr('A')+',replace('+QuotedStr(UpperCase(MainMenu1.Items[i].Caption))+','+QuotedStr('&')+','+QuotedStr('')+'),-1);';
            e := a;
            a := a + 1;
          end;
          j := j + 1;
          m := m + 1;
        end;

        for p := 0 to MainMenu1.Items[I].Count - 1 do //sub-menu
        begin
          entrou := false;
          if (MainMenu1.Items[i].Items[p].Caption <> '-') and (MainMenu1.Items[i].Items[p].Caption <> '') then
          begin
            if not (FDMUsuario.QMenuGerLic.Locate('NOME',UpperCase(String(MainMenu1.Items[i].Items[p].Name)),[])) then
            begin
              entrou := true;
              sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT) values('+inttostr(a)+',';
              sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+','+QuotedStr('A')+',replace('+QuotedStr(UpperCase(MainMenu1.Items[i].Items[p].Caption))+','+QuotedStr('&')+','+QuotedStr('')+'),'+inttostr(m)+');';
              r := a;
              c := a;
              a := a + 1;
            end;
            j := j + 1;
          end;

          for x := 0 to MainMenu1.Items[I].Items[p].Count -1  do //expande sub-menu
          begin
            if (MainMenu1.Items[i].Items[p].Items[x].Caption <> '-') and (MainMenu1.Items[i].Items[p].Items[x].Caption <> '')then
            begin
              if not (FDMUsuario.QMenuGerLic.Locate('NOME',UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)),[])) then
              begin
                sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT,BOTAO) values('+inttostr(a)+',';
                sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+',replace('+QuotedStr(UpperCase(MainMenu1.Items[i].Items[p].Items[x].Caption))+','+QuotedStr('&')+','+QuotedStr('')+'),'+inttostr(r)+','+QuotedStr('BT'+UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+');';
                g := a;
                a := a + 1;
                sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT) values('+inttostr(ultimo('menugerlic','codigo'))+',';
                sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+','+QuotedStr('INSERIR')+','+inttostr(g)+');';
                a := a + 1;
                sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT) values('+inttostr(ultimo('menugerlic','codigo'))+',';
                sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+','+QuotedStr('EDITAR')+','+inttostr(g)+');';
                a := a + 1;
                sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT) values('+inttostr(ultimo('menugerlic','codigo'))+',';
                sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name)))+','+QuotedStr('EXCLUIR')+','+inttostr(g)+');';
                a := a + 1;
              end;
              j := j + 4;
            end;
          end;

          if entrou then  //nao expande o sub-menu
          begin
            sql := sql + ' update menugerlic set BOTAO = '+QuotedStr('BT'+UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+' where CODIGO = '+inttostr(c)+';';

            sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT) values('+inttostr(a)+',';
            sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+','+QuotedStr('INSERIR')+','+inttostr(c)+');';
            a := a + 1;
            sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT) values('+inttostr(a)+',';
            sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+','+QuotedStr('EDITAR')+','+inttostr(c)+');';
            a := a + 1;
            sql := sql + ' insert into menugerlic(CODIGO,NOME,DESCRICAO,CODPARENT) values('+inttostr(a)+',';
            sql := sql + QuotedStr(UpperCase(String(MainMenu1.Items[i].Items[p].Name)))+','+QuotedStr('EXCLUIR')+','+inttostr(c)+');';
            a := a + 1;
          end;
          j := j + 3;
        end;
      end;
    end;
    //InputBox('','',sql);
    if sql <> '' then
      ExecSQl(sql);

end;

procedure TFConfiguracoes.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFConfiguracoes.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFConfiguracoes.DBMemo3KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFConfiguracoes.DBMemo4KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFConfiguracoes.DBMemo5KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFConfiguracoes.DBMemo6KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFConfiguracoes.DBMemo7KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFConfiguracoes.DBMemo8KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFConfiguracoes.DBMemo9KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

end.


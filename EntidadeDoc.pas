unit EntidadeDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack, shellapi;

type
  TFEntidadeDoc = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    OpenDialog1: TOpenDialog;
    Label59: TLabel;
    DBEdit2: TDBEdit;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntidadeDoc: TFEntidadeDoc;

implementation

uses Principal, DB, DMGerLicitacao, Entidade;

{$R *.dfm}

procedure TFEntidadeDoc.BtFecharClick(Sender: TObject);
begin
    FDMGerLicitacao.TEntidadeDoc.Cancel;
    close;
end;

procedure TFEntidadeDoc.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if FDMGerLicitacao.TEntidadeDocLOCALARQ.value = '' then
    begin
      showmessage('O documento é obrigatório!');
      dbedit1.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o documento '+FDMGerLicitacao.TEntidadeDocDESCRICAO.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if FDMGerLicitacao.TEntidadeDoc.State = dsinsert then
        FEntidade.codulclidoc := FEntidade.codulclidoc + 1
      else
        editando := true;
      FDMGerLicitacao.TEntidadeDocITEM.Value := FEntidade.codulclidoc;
      FDMGerLicitacao.TEntidadeDoc.post;
      if editando then
      begin
        FDMGerLicitacao.TEntidadeDoc.last;
        FEntidade.codulclidoc := FDMGerLicitacao.TEntidadeDocITEM.Value;
      end;
      FDMGerLicitacao.TEntidadeDoc.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if FDMGerLicitacao.TEntidadeDoc.State = dsedit then
        editando := true;
      FDMGerLicitacao.TEntidadeDoc.cancel;
      if editando then
      begin
        FDMGerLicitacao.TEntidadeDoc.last;
        FEntidade.codulclidoc := FDMGerLicitacao.TEntidadeDocITEM.Value;
      end;
      FDMGerLicitacao.TEntidadeDoc.Append;
      DBEdit2.SetFocus;


    end;
end;

procedure TFEntidadeDoc.cxButton2Click(Sender: TObject);
begin
    if FDMGerLicitacao.TEntidadeDocLOCALARQ.Value <> '' then
      ShellExecuteA(0,nil,PansiChar(FDMGerLicitacao.TEntidadeDocLOCALARQ.Value) ,nil, nil, SW_SHOWNORMAL);
end;

procedure TFEntidadeDoc.cxButton3Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
    begin
      FDMGerLicitacao.TEntidadeDocLOCALARQ.Value := OpenDialog1.FileName;

    end;
end;

end.

unit EntidadeCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack;

type
  TFEntidadeCont = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntidadeCont: TFEntidadeCont;

implementation

uses Principal,  DB, Entidade, DMGerLicitacao;

{$R *.dfm}

procedure TFEntidadeCont.BtFecharClick(Sender: TObject);
begin
    FDMGerLicitacao.TEntidadeCont.Cancel;
    close;
end;

procedure TFEntidadeCont.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if FDMGerLicitacao.TEntidadeContnome.value = '' then
    begin
      showmessage('O nome é obrigatório!');
      dbedit2.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o contato '+FDMGerLicitacao.TEntidadeContnome.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if FDMGerLicitacao.TEntidadeCont.State = dsinsert then
        FEntidade.codultcont := FEntidade.codultcont + 1
      else
        editando := true;
      FDMGerLicitacao.TEntidadeContITEM.Value := FEntidade.codultcont;
      FDMGerLicitacao.TEntidadeContCODCLI.Value := FDMGerLicitacao.TEntidadeCODIGO.Value;
      FDMGerLicitacao.TEntidadeContCODUSU.Value := FDMGerLicitacao.TEntidadeCODUSU.Value;
      FDMGerLicitacao.TEntidadeCont.Post;
      if editando then
      begin
        FDMGerLicitacao.TEntidadeCont.Last;
        FEntidade.codultcont := FDMGerLicitacao.TEntidadeContITEM.Value;
      end;
      FDMGerLicitacao.TEntidadeCont.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if FDMGerLicitacao.TEntidadeCont.State = dsedit then
        editando := true;
      FDMGerLicitacao.TEntidadeCont.cancel;
      if editando then
      begin
        FDMGerLicitacao.TEntidadeCont.Last;
        FEntidade.codultcont := FDMGerLicitacao.TEntidadeContITEM.Value;
      end;
      FDMGerLicitacao.TEntidadeCont.Append;
      DBEdit2.SetFocus;


    end;
end;

end.

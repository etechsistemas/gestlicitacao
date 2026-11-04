unit CliPotenCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack;

type
  TFCliPotenCont = class(TForm)
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
  FCliPotenCont: TFCliPotenCont;

implementation

uses Principal,  DB, CliPoten, DMCRM;

{$R *.dfm}

procedure TFCliPotenCont.BtFecharClick(Sender: TObject);
begin
    fdmcrm.TCliPotenCont.Cancel;
    close;
end;

procedure TFCliPotenCont.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if fdmcrm.TCliPotenContnome.value = '' then
    begin
      showmessage('O nome é obrigatório!');
      dbedit2.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o contato '+fdmcrm.TCliPotenContnome.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if fdmcrm.TCliPotenCont.State = dsinsert then
        FCliPoten.codultcont := FCliPoten.codultcont + 1
      else
        editando := true;
      fdmcrm.TCliPotenContITEM.Value := FCliPoten.codultcont;
      fdmcrm.TCliPotenContCODCLIPOTEN.Value := FdmCRM.TCliPotenCODIGO.Value;
      fdmcrm.TCliPotenContCODUSU.Value := FdmCRM.TCliPotenCODUSU.Value;
      fdmcrm.TCliPotenCont.Post;
      if editando then
      begin
        fdmcrm.TCliPotenCont.Last;
        FCliPoten.codultcont := fdmcrm.TCliPotenContITEM.Value;
      end;
      fdmcrm.TCliPotenCont.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if fdmcrm.TCliPotenCont.State = dsedit then
        editando := true;
      fdmcrm.TCliPotenCont.cancel;
      if editando then
      begin
        fdmcrm.TCliPotenCont.Last;
        FCliPoten.codultcont := fdmcrm.TCliPotenContITEM.Value;
      end;
      fdmcrm.TCliPotenCont.Append;
      DBEdit2.SetFocus;


    end;
end;

end.

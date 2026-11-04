unit CliCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack;

type
  TFCliCont = class(TForm)
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
  FCliCont: TFCliCont;

implementation

uses Principal, DMCliente, DB, Cliente;

{$R *.dfm}

procedure TFCliCont.BtFecharClick(Sender: TObject);
begin
    fdmcliente.TCliCont.Cancel;
    close;
end;

procedure TFCliCont.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if fdmcliente.TCliContnome.value = '' then
    begin
      showmessage('O nome é obrigatório!');
      dbedit2.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o contato '+fdmcliente.TCliContnome.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if fdmcliente.TCliCont.State = dsinsert then
        FCliente.codultcont := FCliente.codultcont + 1
      else
        editando := true;
      fdmcliente.TCliContITEM.Value := FCliente.codultcont;
      fdmcliente.TCliContCODCLI.Value := FdmCliente.TClienteCODIGO.Value;
      fdmcliente.TCliContCODUSU.Value := FdmCliente.TClienteCODUSU.Value;
      fdmcliente.TCliCont.Post;
      if editando then
      begin
        fdmcliente.TCliCont.Last;
        FCliente.codultcont := fdmcliente.TCliContITEM.Value;
      end;
      fdmcliente.TCliCont.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if fdmcliente.TCliCont.State = dsedit then
        editando := true;
      fdmcliente.TCliCont.cancel;
      if editando then
      begin
        fdmcliente.TCliCont.Last;
        FCliente.codultcont := fdmcliente.TCliContITEM.Value;
      end;
      fdmcliente.TCliCont.Append;
      DBEdit2.SetFocus;


    end;
end;

end.

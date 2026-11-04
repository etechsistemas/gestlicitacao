unit CliRefCom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack;

type
  TFCliRefCom = class(TForm)
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
    DBComboBox2: TDBComboBox;
    Label17: TLabel;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliRefCom: TFCliRefCom;

implementation

uses Principal, DMCliente, DB, Cliente;

{$R *.dfm}

procedure TFCliRefCom.BtFecharClick(Sender: TObject);
begin
    fdmcliente.TCliRefCom.Cancel;
    close;
end;

procedure TFCliRefCom.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
   editando := false;
   if fdmcliente.TCliRefComEMPRESA.value = '' then
   begin
     showmessage('Ae empresa é obrigatória!');
     dbedit2.SetFocus;
     abort;
   end;

    if messagedlg('Confirmar a referência comercial '+fdmcliente.TCliRefComEMPRESA.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if fdmcliente.TCliRefCom.State = dsinsert then
        FCliente.codultrefcom := FCliente.codultrefcom + 1
      else
        editando := true;
      fdmcliente.TCliRefComITEM.Value := FCliente.codultrefcom;
      fdmcliente.TCliRefCom.post;
      if editando then
      begin
        fdmcliente.TCliRefCom.Last;
        FCliente.codultrefcom := fdmcliente.TCliRefComITEM.Value;
      end;
      fdmcliente.TCliRefCom.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if fdmcliente.TCliRefCom.State = dsedit then
        editando := true;
      fdmcliente.TCliRefCom.cancel;
      if editando then
      begin
        fdmcliente.TCliRefCom.Last;
        FCliente.codultrefcom := fdmcliente.TCliRefComITEM.Value;
      end;
      fdmcliente.TCliRefCom.Append;
      DBEdit2.SetFocus;


    end;
end;

end.

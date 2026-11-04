unit CliRefBanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack;

type
  TFCliRefBanc = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliRefBanc: TFCliRefBanc;

implementation

uses Principal, DMCliente, DB, Cliente;

{$R *.dfm}

procedure TFCliRefBanc.BtFecharClick(Sender: TObject);
begin
    fdmcliente.TCliRefBanc.Cancel;
    close;
end;

procedure TFCliRefBanc.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if fdmcliente.TCliRefBancNBANCO.value = '' then
    begin
      showmessage('O nome do banco é obrigatório!');
      dbedit2.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar a referência bancária '+fdmcliente.TCliRefBancNBANCO.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if fdmcliente.TCliRefBanc.State = dsinsert then
        FCliente.codultrefbanc := FCliente.codultrefbanc + 1
      else
        editando := true;
      fdmcliente.TCliRefBancITEM.Value := FCliente.codultrefbanc;
      fdmcliente.TCliRefBanc.post;
      if editando then
      begin
        fdmcliente.TCliRefBanc.last;
        FCliente.codultrefbanc := fdmcliente.TCliRefBancITEM.Value;
      end;
      fdmcliente.TCliRefBanc.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if fdmcliente.TCliRefBanc.State = dsedit then
        editando := true;
      fdmcliente.TCliRefBanc.cancel;
      if editando then
      begin
        fdmcliente.TCliRefBanc.last;
        FCliente.codultrefbanc := fdmcliente.TCliRefBancITEM.Value;
      end;
      fdmcliente.TCliRefBanc.Append;
      DBEdit2.SetFocus;


    end;
end;

end.

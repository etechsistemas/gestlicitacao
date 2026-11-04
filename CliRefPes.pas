unit CliRefPes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack;

type
  TFCliRefPes = class(TForm)
    Panel1: TPanel;
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
  FCliRefPes: TFCliRefPes;

implementation

uses Principal, DMCliente, DB, Cliente;

{$R *.dfm}

procedure TFCliRefPes.BtFecharClick(Sender: TObject);
begin
    fdmcliente.TCliRefPes.Cancel;
    close;
end;

procedure TFCliRefPes.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
   editando := false;
   if fdmcliente.TCliRefPesRESPONSAVEL.value = '' then
   begin
     showmessage('O responsavel é obrigatório!');
     dbedit6.SetFocus;
     abort;
   end;

    if messagedlg('Confirmar a referência pessoal '+fdmcliente.TCliRefPesRESPONSAVEL.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if fdmcliente.TCliRefPes.State = dsinsert then
        FCliente.codultrefpes := FCliente.codultrefpes + 1
      else
        editando := true;
      fdmcliente.TCliRefPesITEM.Value := FCliente.codultrefpes;
      fdmcliente.TCliRefpes.post;
      if editando then
      begin
        fdmcliente.TCliRefPes.Last;
        FCliente.codultrefpes := fdmcliente.TCliRefPesITEM.Value;
      end;
      fdmcliente.TCliRefPes.Append;
      DBEdit6.SetFocus;
    end
    else
    begin
      if fdmcliente.TCliRefPes.State = dsedit then
        editando := true;
      fdmcliente.TCliRefPes.cancel;
      if editando then
      begin
        fdmcliente.TCliRefPes.Last;
        FCliente.codultrefpes := fdmcliente.TCliRefPesITEM.Value;
      end;
      fdmcliente.TCliRefPes.Append;
      DBEdit6.SetFocus;


    end;
end;

end.

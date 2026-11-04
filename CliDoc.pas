unit CliDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack, shellapi;

type
  TFCliDoc = class(TForm)
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
  FCliDoc: TFCliDoc;

implementation

uses Principal, DMCliente, DB, Cliente;

{$R *.dfm}

procedure TFCliDoc.BtFecharClick(Sender: TObject);
begin
    fdmcliente.TCliDoc.Cancel;
    close;
end;

procedure TFCliDoc.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if fdmcliente.TCliDocLOCALARQ.value = '' then
    begin
      showmessage('O documento é obrigatório!');
      dbedit1.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o documento '+fdmcliente.TCliDocDESCRICAO.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if fdmcliente.TCliDoc.State = dsinsert then
        FCliente.codulclidoc := FCliente.codulclidoc + 1
      else
        editando := true;
      fdmcliente.TCliDocITEM.Value := FCliente.codulclidoc;
      fdmcliente.TCliDoc.post;
      if editando then
      begin
        fdmcliente.TCliDoc.last;
        FCliente.codulclidoc := fdmcliente.TCliDocITEM.Value;
      end;
      fdmcliente.TCliDoc.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if fdmcliente.TCliDoc.State = dsedit then
        editando := true;
      fdmcliente.TCliDoc.cancel;
      if editando then
      begin
        fdmcliente.TCliDoc.last;
        FCliente.codulclidoc := fdmcliente.TCliDocITEM.Value;
      end;
      fdmcliente.TCliDoc.Append;
      DBEdit2.SetFocus;


    end;
end;

procedure TFCliDoc.cxButton2Click(Sender: TObject);
begin
    if fdmcliente.TCliDocLOCALARQ.Value <> '' then
      ShellExecuteA(0,nil,PansiChar(fdmcliente.TCliDocLOCALARQ.Value) ,nil, nil, SW_SHOWNORMAL);
end;

procedure TFCliDoc.cxButton3Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
    begin
      fdmcliente.TCliDocLOCALARQ.Value := OpenDialog1.FileName;

    end;
end;

end.

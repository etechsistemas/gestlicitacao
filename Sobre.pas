unit Sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  dxGDIPlusClasses, cxGraphics, cxLookAndFeels, IniFiles;

type
  TFSobre = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    LbVersao: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure LerIni;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSobre: TFSobre;

implementation

{$R *.dfm}

procedure TFSobre.cxButton1Click(Sender: TObject);
begin
    close;
end;

procedure TFSobre.FormShow(Sender: TObject);
begin
    lerini;
end;

procedure TFSobre.LerIni;
var
   ArqIni : tIniFile;
   Diretorio, versao : String;
begin
   ArqIni := TIniFile.Create((ExtractFilePath(Application.ExeName)+'config.ini'));
   Try
      versao := ArqIni.ReadString('CLIENTE','VERSAO',versao);
      LbVersao.Caption := 'Versão: '+versao;
   Finally
      ArqIni.Free;
    end;
end ;

end.

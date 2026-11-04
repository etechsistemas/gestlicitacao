unit DMSistema;

interface

uses

  Windows, Messages, Graphics, Controls, Forms, Dialogs,
  SysUtils, Classes, WideStrings, DbxDatasnap, DB, SqlExpr, DBClient, DSConnect,
  FMTBcd, DBXCommon;

type
  TFDMSistema = class(TDataModule)
    etechserver: TSQLConnection;
    DSPServerMethods: TDSProviderConnection;
    DSPCliente: TDSProviderConnection;
    Ultimo: TSqlServerMethod;
    ExecuteSQL: TSqlServerMethod;
    DSPProd: TDSProviderConnection;
    DSPFunc: TDSProviderConnection;
    DSPFornec: TDSProviderConnection;
    DSPGeral: TDSProviderConnection;
    DSPUsuario: TDSProviderConnection;
    ConsultaCEP: TSqlServerMethod;
    DSPLucroCusto: TDSProviderConnection;
    RecuperaSenha: TSqlServerMethod;
    EnviaMail: TSqlServerMethod;
    IPServidor: TSqlServerMethod;
    PastaServ: TSqlServerMethod;
    getFile: TSqlServerMethod;
    AtualizaExe: TSqlServerMethod;
    GetVersaoServ: TSqlServerMethod;
    copiaarquivo: TSqlServerMethod;
    DeletaArq: TSqlServerMethod;
    EnviaArq: TSqlServerMethod;
    DSPCRM: TDSProviderConnection;
    UltimoDuplic: TSqlServerMethod;
    DSGerLicitacao: TDSProviderConnection;
    DSPGeral2: TDSProviderConnection;
    UltimoEmp: TSqlServerMethod;
    VerificaPendencia: TSqlServerMethod;
    procedure etechserverBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tabela : TClientDataSet;
  end;

var
  FDMSistema: TFDMSistema;

implementation

uses relatorio, DM, Login, UBiblio, Principal;

{$R *.dfm}

procedure TFDMSistema.etechserverBeforeConnect(Sender: TObject);
begin
    if ChecaForm(FLogin) then
    begin
      FDMSistema.etechserver.Params.Values['HostName'] := flogin.Server;
      FDMSistema.etechserver.Params.Values['Port'] := flogin.Port;
      FDMSistema.etechserver.Params.Values['DSAuthenticationUser'] := flogin.usuario;
      FDMSistema.etechserver.Params.Values['DSAuthenticationPassword'] := flogin.senha;
      FDMSistema.etechserver.Params.Values['DSAuthenticationip'] := IpAddress;
    end;
end;

end.

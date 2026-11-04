unit geranfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBGrids,  StdCtrls, XMLDoc,XMLIntf, QRPDFFilt,
  Buttons, DBCtrls, Menus, ACBrNFeDANFEClass, ACBrNFeDANFERave,
  ACBrNFe,pcnConversao, ACBrUtil, pcnNFeW,SQLTimSt, pcnNFeRTXT, ACBrNFeUtil;

  procedure configuraComponente(ACBrNFe1 : TACBrNFe);
  procedure configuraComponenteExp(ACBrNFe1 : TACBrNFe; salvar : String);
  procedure configuraDanfe(ACBrNFeDANFERave1 : TACBrNFeDANFERave);
  procedure gerar(ACBrNFe1 : TACBrNFe; contingencia :boolean);
  procedure gerarxml(ACBrNFe1 : TACBrNFe);
  procedure cancelar(ACBrNFe1 : TACBrNFe);
  procedure consultaNfe(ACBrNFe1 : TACBrNFe);
  procedure imprimirNfe();
  procedure gerarpdfNfe(local : String);
  procedure imprimirNfeACBR(ACBrNFe1 : TACBrNFe);
  procedure inutilizar(ACBrNFe1 : TACBrNFe; ninicial, nfinal, justificativa, ano, serie : String);
  procedure enviaxmlserv(ACBrNFe1 : TACBrNFe);
  implementation

uses DM, DMVendas, DMCliente, DMFornec, metodosServ, UBiblio, Principal, RDanfe,
  relatorio, Email;



procedure configuraComponente(ACBrNFe1 : TACBrNFe);
var
  ok : boolean;
begin
      ACBrNFe1.Configuracoes.WebServices.ProxyHost := fdm.TEmpresaHOST.Value;
      if fdm.TEmpresaPORTAPROX.Value > 0 then
        ACBrNFe1.Configuracoes.WebServices.ProxyPort := inttostr(fdm.TEmpresaPORTAPROX.Value)
      else
        ACBrNFe1.Configuracoes.WebServices.ProxyPort := '';
      ACBrNFe1.Configuracoes.WebServices.ProxyUser := fdm.TEmpresaUSUARIO.Value;
      ACBrNFe1.Configuracoes.WebServices.ProxyPass := fdm.TEmpresaSENHA.Value;

      ACBrNFe1.Configuracoes.WebServices.UF         := fdm.TEmpresaUF.Value;
      ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(ok,IntToStr(fdm.TEmpresaTIPOAMB.Value));
      ACBrNFe1.Configuracoes.WebServices.Visualizar := false;

      ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(ok,IntToStr(1));
      ACBrNFe1.Configuracoes.Geral.Salvar       := true;
      ACBrNFe1.Configuracoes.Geral.PathSalvar   := ExtractFilePath(Application.ExeName)+'/nfe/';
      ACBrNFe1.Configuracoes.Geral.PathSchemas   := ExtractFilePath(Application.ExeName)+'Schemas';
      ACBrNFe1.Configuracoes.Arquivos.PathNFe  := ExtractFilePath(Application.ExeName)+'/nfe/';
      ACBrNFe1.Configuracoes.Arquivos.PathCan  := ExtractFilePath(Application.ExeName)+'/cancelada/';
      ACBrNFe1.Configuracoes.Arquivos.PathInu  := ExtractFilePath(Application.ExeName)+'/inutilizada/';
      ACBrNFe1.Configuracoes.Arquivos.PathDPEC  := ExtractFilePath(Application.ExeName)+'/dpec/';
      ACBrNFe1.Configuracoes.Certificados.NumeroSerie := fdm.TEmpresaCERTIFICADO.Value;
end;

procedure configuraComponenteExp(ACBrNFe1 : TACBrNFe; salvar : String);
var
  ok : boolean;
begin
      ACBrNFe1.Configuracoes.WebServices.ProxyHost := fdm.TEmpresaHOST.Value;
      if fdm.TEmpresaPORTAPROX.Value > 0 then
        ACBrNFe1.Configuracoes.WebServices.ProxyPort := inttostr(fdm.TEmpresaPORTAPROX.Value)
      else
        ACBrNFe1.Configuracoes.WebServices.ProxyPort := '';
      ACBrNFe1.Configuracoes.WebServices.ProxyUser := fdm.TEmpresaUSUARIO.Value;
      ACBrNFe1.Configuracoes.WebServices.ProxyPass := fdm.TEmpresaSENHA.Value;

      ACBrNFe1.Configuracoes.WebServices.UF         := fdm.TEmpresaUF.Value;
      ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(ok,IntToStr(fdm.TEmpresaTIPOAMB.Value));
      ACBrNFe1.Configuracoes.WebServices.Visualizar := false;

      ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(ok,IntToStr(1));
      ACBrNFe1.Configuracoes.Geral.Salvar       := true;
      ACBrNFe1.Configuracoes.Geral.PathSalvar   := salvar;
      ACBrNFe1.Configuracoes.Geral.PathSchemas   := ExtractFilePath(Application.ExeName)+'Schemas';
      ACBrNFe1.Configuracoes.Arquivos.PathNFe  := salvar;
      ACBrNFe1.Configuracoes.Arquivos.PathCan  := salvar;
      ACBrNFe1.Configuracoes.Arquivos.PathInu  := salvar;
      ACBrNFe1.Configuracoes.Arquivos.PathDPEC  := salvar;
      ACBrNFe1.Configuracoes.Certificados.NumeroSerie := fdm.TEmpresaCERTIFICADO.Value;
end;

procedure configuraDanfe(ACBrNFeDANFERave1 : TACBrNFeDANFERave);
var
  ok : boolean;
begin
      ACBrNFeDANFERave1.Logo := fdm.TEmpresaLOGODANFE.Value;
      ACBrNFeDANFERave1.Sistema := 'E-Tech Sistemas';
      ACBrNFeDANFERave1.PathPDF := pastaserv+'pdf';
      ACBrNFeDANFERave1.MostrarPreview := true;
      ACBrNFeDANFERave1.MostrarStatus := true;
      ACBrNFeDANFERave1.Site := 'www.etechsistemas.com.br';
      ACBrNFeDANFERave1.CasasDecimais._vUnCom := 4;
      ACBrNFeDANFERave1.RavFile := pastaserv+'Report';
end;

procedure consultaNfe(ACBrNFe1 : TACBrNFe);
begin
    if fdmvendas.TNotaVendaCHAVE.Value <> '' then
    begin
      try
        ACBrNFe1.WebServices.Consulta.NFeChave := fdmvendas.TNotaVendaCHAVE.Value;
        ACBrNFe1.WebServices.Consulta.Executar;
        fdmvendas.TNotaVenda.Edit;
        fdmvendas.TNotaVendaRETORNO.Value := ACBrNFe1.WebServices.Consulta.xMotivo;
        //fdmvendas.TNotaVendaDIGVAL.Value := ACBrNFe1.WebServices.Consulta.digVal; -- Nfe 1.0
        fdmvendas.TNotaVendaCSTAT.Value := inttostr(ACBrNFe1.WebServices.Consulta.cStat);
        fdmvendas.TNotaVendaDATAHOMOLOG.Value := ACBrNFe1.WebServices.Consulta.dhRecbto;
        fdmvendas.TNotaVendaPROTOCOLO.Value := ACBrNFe1.WebServices.Consulta.Protocolo;
        fdmvendas.TNotaVenda.Post;
        fdmvendas.TNotaVenda.ApplyUpdates(0);

      except
        on E :Exception do begin
          fdmvendas.TNotaVenda.Edit;
          fdmvendas.TNotaVendaRETORNO.Value :=  e.Message;
          fdmvendas.TNotaVenda.Post;
          fdmvendas.TNotaVenda.ApplyUpdates(0);
        end;
      end;
    end;
end;

procedure enviaxmlserv(ACBrNFe1 : TACBrNFe);
begin
    if (ExtractFilePath(Application.ExeName) <> pastaserv) then
    begin

    end;
end;


procedure imprimirNfeACBR(ACBrNFe1 : TACBrNFe);
var
  ok : boolean;
  vNumLote : String;
begin
  vNumLote := '1';

  if not fdmvendas.TNotaVenda.RecordCount > 0 then
  begin
    showmessage('É necessário selecionar um espelho de nota!');
    abort;
  end;

  if not (fdmvendas.TNotaVendaSITUACAO.Value = 'TRANSMITIDO') then
  begin
    showmessage('O espelho precisa estar com situação igual emitido!');
    abort;
  end;

  ACBrNFe1.NotasFiscais.Clear;
  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin

     Ide.cNF       := fdmvendas.TNotaVendaCODIGO.Value; //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := fdmvendas.TNotaVendaDESCOPERACAO.Value;//'VENDA PRODUCAO DO ESTAB.';
     Ide.indPag    := ipVista;
     Ide.modelo    := 55;
     Ide.serie     := strtoint(fdm.TEmpresaSERIE.Value);
     Ide.nNF       := fdmvendas.TNotaVendaCODIGO.Value;
     Ide.dEmi      := fdmvendas.TNotaVendaDATA.Value;
     Ide.dSaiEnt   := fdmvendas.TNotaVendaDTENTREGA.Value;
     Ide.hSaiEnt   := fdmvendas.TNotaVendaHORAENTREGA.Value;  // -- NFe 2.0
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := teNormal;
     if fdm.TEmpresaTIPOAMB.Value = 2 then
       Ide.tpAmb     := taHomologacao  //Lembre-se de trocar esta variável quando for para ambiente de produção
     else
       Ide.tpAmb     := taProducao;
     Ide.verProc   := '1.0.0.0'; //Versão do seu sistema}
     Ide.cUF       := fdm.TEmpresaCODESTADO.value;{NotaUtil.UFtoCUF(fdm.TEmpresaUF.Value); -- NFe 2.0}
  {   Ide.cMunFG    := strtoint(inttostr(fdm.TEmpresaCODESTADO.value)+inttostr(fdm.TEmpresaCODMUNIC.value));
     Ide.finNFe    := fnNormal;
                                         }
//Para NFe referenciada use os campos abaixo
{     with Ide.NFref.Add do
      begin
        refNFe       := ''; //NFe Eletronica

        RefNF.cUF    := 0;  // |
        RefNF.AAMM   := ''; // |
        RefNF.CNPJ   := ''; // |
        RefNF.modelo := 1;  // |- NFe Modelo 1/1A
        RefNF.serie  := 1;  // |
        RefNF.nNF    := 0;  // |

        RefNFP.cUF     := 0;  // |
        RefNFP.AAMM    := ''; // |
        RefNFP.CNPJCPF := ''; // |
        RefNFP.IE      := ''; // |- NF produtor Rural
        RefNFP.modelo  := ''; // |
        RefNFP.serie   := 1;  // |
        RefNFP.nNF     := 0;  // |

        RefECF.modelo  := ECFModRef2B; // |
        RefECF.nECF    := '';          // |- Cupom Fiscal
        RefECF.nCOO    := '';          // |
      end;
}
      Emit.CNPJCPF           := fdm.TEmpresaCNPJ.value;
      Emit.IE                := fdm.TEmpresaINSCEST.value;
      Emit.xNome             := fdm.TEmpresaRAZAOSOCIAL.value;
      Emit.xFant             := fdm.TEmpresaNOMEFANTA.value;

      Emit.EnderEmit.fone    := fdm.TEmpresaFONE1.value;
      Emit.EnderEmit.CEP     := StrToInt(SoNumeros(fdm.TEmpresaCEP.value));
      Emit.EnderEmit.xLgr    := fdm.TEmpresaENDERECO.value;
      Emit.EnderEmit.nro     := fdm.TEmpresaNUMERO.value;
      Emit.EnderEmit.xCpl    := fdm.TEmpresaCOMPLEMENTO.value;
      Emit.EnderEmit.xBairro := fdm.TEmpresaBAIRRO.value;
      Emit.EnderEmit.cMun    := strtoint(inttostr(fdm.TEmpresaCODESTADO.Value)+inttostr(fdm.TEmpresaCODMUNIC.value));
      Emit.EnderEmit.xMun    := fdm.TEmpresaCIDADE.value;
      Emit.EnderEmit.UF      := fdm.TEmpresaUF.value;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
      Emit.IM                := ''; // Preencher no caso de existir serviços na nota
      Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
      if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'SIMPLES' then
      begin
        Emit.CRT               := crtSimplesNacional; //-- NFe 2.0
      end
      else if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'LUCRO PRESUMIDO' then
      begin
        Emit.CRT               := crtRegimeNormal; //-- NFe 2.0
      end
      else if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'LUCRO REAL' then
      begin
        Emit.CRT               := crtRegimeNormal; //-- NFe 2.0
      end;



//Para NFe Avulsa preencha os campos abaixo
{      Avulsa.CNPJ    := '';
      Avulsa.xOrgao  := '';
      Avulsa.matr    := '';
      Avulsa.xAgente := '';
      Avulsa.fone    := '';
      Avulsa.UF      := '';
      Avulsa.nDAR    := '';
      Avulsa.dEmi    := now;
      Avulsa.vDAR    := 0;
      Avulsa.repEmi  := '';
      Avulsa.dPag    := now;             }
      fdmcliente.TCliente.Close;
      fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmvendas.TNotaVendaCODCLI.Value;
      fdmcliente.TCliente.Open;

      Dest.CNPJCPF           := fdmcliente.TClienteCNPJ.value;
      Dest.IE                := fdmcliente.TClienteINSCEST.value;
      Dest.ISUF              := '';
      Dest.xNome             := copy(fdmcliente.TClienteNOME.value,1,60);

      Dest.EnderDest.Fone    := fdmcliente.TClienteFONE.value;
      Dest.EnderDest.CEP     := strtoint(sonumeros(fdmcliente.TClienteCEP.value));
      Dest.EnderDest.xLgr    := fdmcliente.TClienteENDERECO.value;
      Dest.EnderDest.nro     := fdmcliente.TClienteNUMERO.value;
      Dest.EnderDest.xCpl    := copy(fdmcliente.TClienteCOMPLEMENTO.Value,1,60);
      Dest.EnderDest.xBairro := fdmcliente.TClienteBAIRRO.value;
      Dest.EnderDest.cMun    := strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ inttostr(fdmcliente.TClienteCODMUNIC.value));
      Dest.EnderDest.xMun    := fdmcliente.TClienteCIDADE.value;
      Dest.EnderDest.UF      := fdmcliente.TClienteUF.value;
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//Adicionando Produtos
      with Det.Add do
       begin
         fdmvendas.TNotaVendaIt.First;
         while not fdmvendas.TNotaVendaIt.eof do
         begin
           Prod.nItem    := fdmvendas.TNotaVendaIt.RecNo; // Número sequencial, para cada item deve ser incrementado
           Prod.cProd    := inttostr(fdmvendas.TNotaVendaItCODPROD.Value);
           Prod.cEAN     := '';
           Prod.xProd    := fdmvendas.TNotaVendaItNOMEPROD.Value;
           Prod.NCM      := fdmvendas.TNotaVendaItNCM.value; // Tabela NCM disponível em
           Prod.EXTIPI   := '';
           Prod.CFOP     := SoNumeros(fdmvendas.TNotaVendaItCFOP.value);
           Prod.uCom     := fdmvendas.TNotaVendaItUNIDADE.value;
           Prod.qCom     := fdmvendas.TNotaVendaItQTDE.Value;
           Prod.vUnCom   := fdmvendas.TNotaVendaItVLRUNIT.Value;
           Prod.vProd    := fdmvendas.TNotaVendaItTOTCDESC.Value;

           Prod.cEANTrib  := '';
           Prod.uTrib     := fdmvendas.TNotaVendaItUNIDADE.value;
           Prod.qTrib     := fdmvendas.TNotaVendaItQTDE.Value;
           Prod.vUnTrib   := fdmvendas.TNotaVendaItVLRUNIT.Value;

           Prod.vFrete    := 0;
           Prod.vSeg      := 0;
           Prod.vDesc     := fdmvendas.TNotaVendaItDESCONTO.Value;

           infAdProd      := '';//'Informação Adicional do Produto';

  //Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
  {         with Prod.DI.Add do
            begin
              nDi         := '';
              dDi         := now;
              xLocDesemb  := '';
              UFDesemb    := '';
              dDesemb     := now;
              cExportador := '';

              with adi.Add do
               begin
                 nAdicao     := 1;
                 nSeqAdi     := 1;
                 cFabricante := '';
                 vDescDI     := 0;
               end;
            end;
  }
  //Campos para venda de veículos novos
  {         with Prod.veicProd do
            begin
              tpOP    := toVendaConcessionaria;
              chassi  := '';
              cCor    := '';
              xCor    := '';
              pot     := '';
              Cilin   := '';
              pesoL   := '';
              pesoB   := '';
              nSerie  := '';
              tpComb  := '';
              nMotor  := '';
              CMT     := '';
              dist    := '';
              RENAVAM := '';
              anoMod  := 0;
              anoFab  := 0;
              tpPint  := '';
              tpVeic  := 0;
              espVeic := 0;
              VIN     := '';
              condVeic := cvAcabado;
              cMod    := '';
            end;
  }
  //Campos específicos para venda de medicamentos
          { if fdmvendas.TNotaVendaItRASTREAR.Value = 'S' then
           begin
             with Prod.med.Add do
              begin
                nLote := fdmvendas.TNotaVendaItLOTE.Value;
                qLote := fdmvendas.TNotaVendaItQTDE.Value;
                dFab  := fdmvendas.TNotaVendaItFABRICACAO.Value;
                dVal  := fdmvendas.TNotaVendaItVALIDADE.Value ;
                vPMC  := 0 ;
              end;
           end;}
  //Campos específicos para venda de armamento
  {         with Prod.arma.Add do
            begin
              nSerie := 0;
              tpArma := taUsoPermitido ;
              nCano  := 0 ;
              descr  := '' ;
            end;      }
  //Campos específicos para venda de combustível(distribuidoras)
  {         with Prod.comb do
            begin
              cProdANP := 0;
              CODIF    := '';
              qTemp    := 0;

              CIDE.qBCprod   := 0 ;
              CIDE.vAliqProd := 0 ;
              CIDE.vCIDE     := 0 ;

              ICMS.vBCICMS   := 0 ;
              ICMS.vICMS     := 0 ;
              ICMS.vBCICMSST := 0 ;
              ICMS.vICMSST   := 0 ;

              ICMSInter.vBCICMSSTDest := 0 ;
              ICMSInter.vICMSSTDest   := 0 ;

              ICMSCons.vBCICMSSTCons := 0 ;
              ICMSCons.vICMSSTCons   := 0 ;
              ICMSCons.UFcons        := '' ;
            end;}

           with Imposto do
            begin
              with ICMS do
               begin
                 if fdmvendas.TNotaVendaItCST.Value = '00' then
                   CST          := cst00
                 else if fdmvendas.TNotaVendaItCST.Value = '10' then
                   CST          := cst10
                 else if fdmvendas.TNotaVendaItCST.Value = '20' then
                   CST          := cst20
                 else if fdmvendas.TNotaVendaItCST.Value = '30' then
                   CST          := cst30
                 else if fdmvendas.TNotaVendaItCST.Value = '40' then
                   CST          := cst40
                 else if fdmvendas.TNotaVendaItCST.Value = '41' then
                   CST          := cst41
                 else if fdmvendas.TNotaVendaItCST.Value = '45' then
                   CST          := cst45
                 else if fdmvendas.TNotaVendaItCST.Value = '50' then
                   CST          := cst50
                 else if fdmvendas.TNotaVendaItCST.Value = '51' then
                   CST          := cst51
                 else if fdmvendas.TNotaVendaItCST.Value = '60' then
                   CST          := cst60
                 else if fdmvendas.TNotaVendaItCST.Value = '70' then
                   CST          := cst70
                 else if fdmvendas.TNotaVendaItCST.Value = '80' then
                   CST          := cst80
                 else if fdmvendas.TNotaVendaItCST.Value = '81' then
                   CST          := cst81
                 else if fdmvendas.TNotaVendaItCST.Value = '90' then
                   CST          := cst90;

                 if fdmvendas.TNotaVendaItORIGEM.Value = '0' then
                   ICMS.orig    := oeNacional
                 else if fdmvendas.TNotaVendaItORIGEM.Value = '1' then
                   ICMS.orig    := oeEstrangeiraImportacaoDireta
                 else if fdmvendas.TNotaVendaItORIGEM.Value = '2' then
                   ICMS.orig    := oeEstrangeiraAdquiridaBrasil;

                 ICMS.modBC   := dbiValorOperacao;
                 ICMS.vBC     := fdmvendas.TNotaVendaItBASEICMS.Value;
                 ICMS.pICMS   := fdmvendas.TNotaVendaItICMS.Value;
                 ICMS.vICMS   := fdmvendas.TNotaVendaItVALICMS.Value;
                 ICMS.modBCST := dbisMargemValorAgregado;
                 ICMS.pMVAST  := 0;
                 ICMS.pRedBCST:= 0;
                 ICMS.vBCST   := fdmvendas.TNotaVendaItBASEICMSST.Value;
                 ICMS.pICMSST := fdmvendas.TNotaVendaItICMSST.value;
                 ICMS.vICMSST := fdmvendas.TNotaVendaItVALICMSST.Value;
                 ICMS.pRedBC  := 0;
               end;

              if fdmvendas.TNotaVendaItVALIPI.Value > 0 then
              begin
              with IPI do
               begin
                 CST      := ipi50 ;
                 clEnq    := '';
                 CNPJProd := '';
                 cSelo    := '';
                 qSelo    := 0;
                 cEnq     := '999';

                 vBC    := fdmvendas.TNotaVendaItTOTCDESC.Value;
                 qUnid  := 0;
                 vUnid  := 0;
                 pIPI   := fdmvendas.TNotaVendaItIPI.Value;
                 vIPI   := fdmvendas.TNotaVendaItVALIPI.Value;
               end;
              end;

              with II do
               begin
                 vBc      := 0;
                 vDespAdu := 0;
                 vII      := 0;
                 vIOF     := 0;
               end;

              with PIS do
               begin
                 CST      := pis99;
                 PIS.vBC  := 0;
                 PIS.pPIS := 0;
                 PIS.vPIS := 0;

                 PIS.qBCProd   := 0;
                 PIS.vAliqProd := 0;
                 PIS.vPIS      := 0;
               end;

              with PISST do
               begin
                 vBc       := fdmvendas.TNotaVendaItTOTCDESC.Value;
                 pPis      := 0;
                 qBCProd   := 0;
                 vAliqProd := 0;
                 vPIS      := fdmvendas.TNotaVendaItVALPIS.Value;
               end;

              with COFINS do
               begin
                 CST            := cof99;
                 COFINS.vBC     := fdmvendas.TNotaVendaItTOTCDESC.Value;
                 COFINS.pCOFINS := 0;
                 COFINS.vCOFINS := fdmvendas.TNotaVendaItVALCOFINS.Value;

                 COFINS.qBCProd   := 0;
                 COFINS.vAliqProd := 0;
               end;

              with COFINSST do
               begin
                 vBC       := 0;
                 pCOFINS   := 0;
                 qBCProd   := 0;
                 vAliqProd := 0;
                 vCOFINS   := 0;
               end;
  //Grupo para serviços
  {            with ISSQN do
               begin
                 vBC       := 0;
                 vAliq     := 0;
                 vISSQN    := 0;
                 cMunFG    := 0;
                 cListServ := 0; // Preencha este campo usando a tabela disponível
                                 // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
               end;}
            end;
         fdmvendas.TNotaVendaIt.Next;
         end ;
       end;

      Total.ICMSTot.vBC     := fdmvendas.TNotaVendaBASEICMS.Value;
      Total.ICMSTot.vICMS   := fdmvendas.TNotaVendaTOTICMS.Value;
      Total.ICMSTot.vBCST   := fdmvendas.TNotaVendaBASESUBTRIB.value;
      Total.ICMSTot.vST     := fdmvendas.TNotaVendaTOTICMSST.value;
      Total.ICMSTot.vProd   := fdmvendas.TNotaVendaTOTPROD.value;
      Total.ICMSTot.vFrete  := fdmvendas.TNotaVendaFRETE.value;
      Total.ICMSTot.vSeg    := fdmvendas.TNotaVendaSEGURO.value;
      Total.ICMSTot.vDesc   := fdmvendas.TNotaVendaDESCONTO.value;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := fdmvendas.TNotaVendaTOTIPI.value;
      Total.ICMSTot.vPIS    := fdmvendas.TNotaVendatotalpis.value;
      Total.ICMSTot.vCOFINS := fdmvendas.TNotaVendatotalcofins.value;
      Total.ICMSTot.vOutro  := fdmvendas.TNotaVendaDESPESA.value;
      Total.ICMSTot.vNF     := fdmvendas.TNotaVendaTOTNOTA.value;

      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;

      if fdmvendas.TNotaVendaTIPOFRETE.value = 'P' then
        Transp.modFrete := mfContaEmitente
      else
        Transp.modFrete := mfContaDestinatario;

      fdmfornec.TTransp.Close;
      fdmfornec.TTransp.Params.ParamByName('CODIGO').asinteger := fdmvendas.TNotaVendaCODTRANS.Value;
      fdmfornec.TTransp.Open;

      Transp.Transporta.CNPJCPF  := fdmfornec.TTranspCNPJ.Value;
      Transp.Transporta.xNome    := fdmfornec.TTranspNOME.Value;
      Transp.Transporta.IE       := fdmfornec.TTranspINSCEST.Value;
      Transp.Transporta.xEnder   := fdmfornec.TTranspENDERECO.Value;
      Transp.Transporta.xMun     := fdmfornec.TTranspCIDADE.Value;
      Transp.Transporta.UF       := fdmfornec.TTranspUF.Value;

      Transp.retTransp.vServ    := 0;
      Transp.retTransp.vBCRet   := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP     := '';
      Transp.retTransp.cMunFG   := 0;

      Transp.veicTransp.placa := fdmfornec.TTranspplaca.value;
      Transp.veicTransp.UF    := fdmfornec.TTranspufplaca.value;
      Transp.veicTransp.RNTC  := '';
//Dados do Reboque
{      with Transp.Reboque.Add do
       begin
         placa := '';
         UF    := '';
         RNTC  := '';
       end;}

      with Transp.Vol.Add do
       begin
         qVol  := StrToIntDef(fdmvendas.TNotaVendaVOLUME.Value,1);
         esp   := fdmvendas.TNotaVendaESPECIE.Value;
         marca := '';
         nVol  := 'Numero';
         pesoL := fdmvendas.TNotaVendaPESOLIQ.Value;
         pesoB := fdmvendas.TNotaVendaPESO.Value;

         //Lacres do volume. Pode ser adicionado vários
         //Lacres.Add.nLacre := '';
       end;

      fdmvendas.TNotaVendaDup.First;
      while not fdmvendas.TNotaVendaDup.eof do
      begin
        Cobr.Fat.nFat  := fdmvendas.TNotaVendaDupNUMDUP.Value;
        Cobr.Fat.vOrig := fdmvendas.TNotaVendaDupVALOR.Value ;
        Cobr.Fat.vDesc := fdmvendas.TNotaVendaDupDESCONTO.Value ;
        Cobr.Fat.vLiq  := fdmvendas.TNotaVendaDupVALOR.Value - fdmvendas.TNotaVendaDupDESCONTO.Value ;

        with Cobr.Dup.Add do
         begin
           nDup  := fdmvendas.TNotaVendaDupNUMDUP.Value;
           dVenc := fdmvendas.TNotaVendaDupVENCIMENTO.Value;
           vDup  := fdmvendas.TNotaVendaDupVALOR.Value;
         end;
        fdmvendas.TNotaVendaDup.Next;
      end;

      InfAdic.infCpl     :=  fdmvendas.TNotaVendaOBSERVACAO.Value;
      InfAdic.infAdFisco :=  '';

      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end;
//Processo referenciado
{     with InfAdic.procRef.Add do
       begin
         nProc := '';
         indProc := ipSEFAZ;
       end;                 }

      exporta.UFembarq   := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed  := '';
      compra.xCont := '';
   end;



    ACBrNFe1.NotasFiscais.Count;
    ACBrNFe1.NotasFiscais.Imprimir();
end;

procedure imprimirNfe();
var
   TotProd,TotServ,TotNota,TotTrib,TotIsento,TotBase,ValIcms,ValIss, valicmssemred,
    ValIpi,ValIpiUn,PorcIPI, Prods : Real;
    i : integer;
    AuxBase, AuxIcms,obs, desccst : String;
    NumVolume : String;
    NumFone, textoobs : String;
    ST010, ST110,ST060, ST051, ST000, ST090, ST030, linha  : integer;
begin
//  FDMVendas.TNotaVendaIt.Refresh;
  textoobs := '';
  FDMVendas.TNotaVendaIt.first;
  try
    Application.CreateForm(TFRDanfe,FRDanfe);

    FdmCliente.TCliente.close;
    FdmCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMVendas.TNotaVendaCODCLI.Value;
    FdmCliente.TCliente.Open;

    FdmCliente.Qconendentrega.close;
    FdmCliente.Qconendentrega.Params.ParamByName('CODCLI').AsInteger := FDMVendas.TNotaVendaCODCLI.Value;
    FdmCliente.Qconendentrega.Params.ParamByName('ITEM').AsInteger := FDMVendas.TNotaVendaCODEND.Value;
    FdmCliente.Qconendentrega.Open;

    Fdm.TEmpresa.close;
    Fdm.TEmpresa.Open;

    FdmFornec.TTransp.close;
    FdmFornec.TTransp.Params.ParamByName('CODIGO').AsInteger := FDMVendas.TNotaVendaCODTRANS.Value;
    FdmFornec.TTransp.Open;


    if(FDMVendas.TNotaVendaAVISTA.value = 'S') or not (fdmvendas.TNotaVendaDup.RecordCount > 0)then
      FRDanfe.prazopagamento.caption := 'PAGAMENTO A VISTA'
    else
      FRDanfe.prazopagamento.caption := 'PAGAMENTO A PRAZO';

  st010 := 0;
  st110 := 0;
  st060 := 0;
  st000 := 0;
  st090 := 0;
  ST051 := 0;
  ST030 := 0;
  FRDanfe.QRObs.Lines.Clear;
  FRDanfe.QRObs2.Lines.Clear;

  FDMVendas.TNotaVendaItVLRUNIT.currency := false;
  FDMVendas.TNotaVendaItVLRUNIT.DisplayFormat := '###,###,##0.0000';
  FDMVendas.TNotaVendaItVALICMS.currency := false;
  FDMVendas.TNotaVendaItVALICMS.DisplayFormat := '###,###,##0.00';
  FDMVendas.TNotaVendaItVALIPI.currency := false;
  FDMVendas.TNotaVendaItVALIPI.DisplayFormat := '###,###,##0.00';
  FDMVendas.TNotaVendaItBASEICMS.currency := false;
  FDMVendas.TNotaVendaItBASEICMS.DisplayFormat := '###,###,##0.00';
  FDMVendas.TNotaVendaItTOTCDESC.currency := false;
  FDMVendas.TNotaVendaItTOTCDESC.DisplayFormat := '###,###,##0.00';
  FDMVendas.TNotaVendaItICMS.DisplayFormat := '##0';
  FDMVendas.TNotaVendaItIPI.DisplayFormat := '##0';
  FDMVendas.TNotaVendaItTotal.currency := false;
  FDMVendas.TNotaVendaItTotal.DisplayFormat := '###,###,##0.00';
  //QRTipoNotaX é o valor do X ENTRADA OU SAÍDA

  if fdm.TempresaLOGODANFE.Value <> '' then
  begin
    if FileExists(fdm.TempresaLOGODANFE.Value) then
    begin
      FRDanfe.QRImage1.Picture.LoadFromFile(fdm.TempresaLOGODANFE.Value);
      FRDanfe.QRImage1 := ProportionalHeight(FRDanfe.QRImage1,68);
    end
    else
    begin
      showmessage('A Logo não foi encontrada no seguinte caminho: '+fdm.TempresaLOGODANFE.Value);
    end;
  end;

  FRDanfe.QRLabel2.Caption := fdm.TEmpresaSERIE.DisplayText;
  FRDanfe.QRLabel1.Caption := fdm.TEmpresaSERIE.DisplayText;

  //NUMERO NOTA
  FRDanfe.QRNumDocT.Caption:= FDMVendas.TNotaVendaCODIGO.DisplayText;
  FRDanfe.QRNumDocB.Caption:= FDMVendas.TNotaVendaCODIGO.DisplayText;
  //DATAS
  FRDanfe.QRDtEmissao.Caption:= FDMVendas.TNotaVendaDATANFE.DisplayText;
  FRDanfe.QRDtSaida.Caption:= FDMVendas.TNotaVendaDTENTREGA.DisplayText;
//  FEmissaoNotaVenda.QRDtReceb.Caption:= FDMVendas.TNotaVendaDTEMISSAO.DisplayText;
  //NATUREZA DE OPERAÇÃO
  FRDanfe.QRDescNatOpe.Caption:= FDMVendas.TNotaVendaDESCOPERACAO.DisplayText;
  FRDanfe.QRNatOpe.Caption:= copy(FDMVendas.TNotaVendaOPERACAO.DisplayText,1,5);
  //INFORMAÇÕES DO CLIENTE

  FRDanfe.QRNomeCli.Caption:= FDMVendas.TNotaVendaNOMECLI.DisplayText;
  FRDanfe.QRCodCli.Caption:= FDMVendas.TNotaVendaCODCLI.DisplayText;

  If FdmCliente.TClienteCNPJ.Value = '' then
  begin
    FRDanfe.QRCgcCpfCli.Caption:= FdmCliente.TClienteCPF.DisplayText;
    FRDanfe.QRIncEstadCli.Caption:= '';
  end
  Else
  begin
    FRDanfe.QRCgcCpfCli.Caption:= FdmCliente.TClienteCNPJ.DisplayText;
    FRDanfe.QRIncEstadCli.Caption:= FdmCliente.TClienteINSCEST.DisplayText;
  end;
  FRDanfe.QREndCli.Caption:= FdmCliente.TClienteENDERECO.DisplayText + ',  ' +FdmCliente.TClienteNUMERO.value;
  FRDanfe.QRBairroCli.Caption:= FdmCliente.TClienteBAIRRO.DisplayText;
  FRDanfe.QRCEPCli.Caption:= FdmCliente.TClienteCEP.DisplayText;
  FRDanfe.QRCidCli.Caption:= FdmCliente.TClienteCIDADE.DisplayText;
  FRDanfe.QRTelCli.Caption:= FdmCliente.TClienteFONE.DisplayText;
  FRDanfe.QRUFCli.Caption:= FdmCliente.TClienteUF.DisplayText;

  FRDanfe.QRObs.Lines.Clear;
  if FDMVendas.TNotaVendaPEDIDO.Value > 0 then
  begin
    FRDanfe.QRObs.Lines.Add('PEDIDO: '+inttostr(FDMVendas.TNotaVendaPEDIDO.Value)+#13);
  end;

  {if FDMVendas.TNotaVendaCODIGO.Value > 0 then
  begin
    FRDanfe.QRObs.Lines.Add('ESPELHO: '+inttostr(FDMVendas.TNotaVendaCODIGO.Value)+#13);
  end;}

  FRDanfe.QRObs.Lines.Add(fdmvendas.TNotaVendaOBSERVACAO.Value);

  if fdmcliente.qconendentrega.RecordCount > 0 then
  begin
    FRDanfe.QRObs.Lines.Add(fdmcliente.qconendentreganome.value);
    FRDanfe.QRObs.Lines.Add('Endereço de Entrega: '+fdmcliente.qconendentregaendereco.value+', '+fdmcliente.qconendentreganumero.value+' '+fdmcliente.qconendentregabairro.value);
    FRDanfe.QRObs.Lines.Add('Cidade: '+fdmcliente.qconendentregacidade.value+' - '+fdmcliente.qconendentregauf.value+' CEP: '+fdmcliente.qconendentregacep.value+' '+fdmcliente.qconendentregacomplemento.value);
  end
  else
  begin
    FRDanfe.QRObs.Lines.Add(fdmcliente.tclientenome.value);
    FRDanfe.QRObs.Lines.Add('Endereço de Entrega: '+fdmcliente.tclienteendereco.value+', '+fdmcliente.tclientenumero.value+' '+fdmcliente.qconendentregabairro.value);
    FRDanfe.QRObs.Lines.Add('Cidade: '+fdmcliente.tclientecidade.value+' - '+fdmcliente.tclienteuf.value+' CEP: '+fdmcliente.qconendentregacep.value+' '+fdmcliente.tclientecomplemento.value);
  end;

  if  FRDanfe.QRObs.Lines.Count > 12 then
  begin
     while FRDanfe.QRObs.Lines.Count > 12 do
     begin
       textoobs := textoobs+(FRDanfe.QRObs.Lines[12]);
       FRDanfe.QRObs.Lines.Delete(12);
     end;
     FRDanfe.QRObs2.Lines.add(textoobs);
  end;

  //FECHAMENTO
  FRDanfe.QRVlrTot.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaTOTPROD.Value);
  FRDanfe.QRVlrTotNota.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaTOTNOTA.Value);
  FRDanfe.QRBaseICMSSub.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaBASESUBTRIB.Value);
  FRDanfe.QRValICMSSub.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaTOTICMSST.Value);
  //FEmissaoNotaVenda.QRBaseICMS.Caption:= FormatFloat('###,###,##0.00', 0);
  FRDanfe.QRValFrete.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaFRETE.Value);
  //FEmissaoNotaVenda.QRValICMS.Caption:= FormatFloat('###,###,##0.00', 0);
  FRDanfe.QRValSeg.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaSEGURO.Value);
  FRDanfe.QROutDesp.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaDESPESA.Value);
  //FEmissaoNotaVenda.QRValTotIPI.Caption:= FormatFloat('###,###,##0.00', 0);

  //TRANSPORTADOR
  FRDanfe.QRPlaca.Caption:= fdmvendas.TNotaVendaPLACA.Value;

  FRDanfe.v1.Enabled := false;
  FRDanfe.v2.Enabled := false;
  FRDanfe.v3.Enabled := false;
  FRDanfe.v4.Enabled := false;
  FRDanfe.v5.Enabled := false;
  FRDanfe.v6.Enabled := false;
  FRDanfe.v7.Enabled := false;
  FRDanfe.v8.Enabled := false;
  FRDanfe.v9.Enabled := false;
  FRDanfe.p1.Enabled := false;
  FRDanfe.p2.Enabled := false;
  FRDanfe.p3.Enabled := false;
  FRDanfe.p4.Enabled := false;
  FRDanfe.p5.Enabled := false;
  FRDanfe.p6.Enabled := false;
  FRDanfe.p7.Enabled := false;
  FRDanfe.p8.Enabled := false;
  FRDanfe.p9.Enabled := false;
  FRDanfe.vlr1.Enabled := false;
  FRDanfe.vlr2.Enabled := false;
  FRDanfe.vlr3.Enabled := false;
  FRDanfe.vlr4.Enabled := false;
  FRDanfe.vlr5.Enabled := false;
  FRDanfe.vlr6.Enabled := false;
  FRDanfe.vlr7.Enabled := false;
  FRDanfe.vlr8.Enabled := false;
  FRDanfe.vlr9.Enabled := false;
  //duplicatas

  FDMVendas.Tnotavendadup.First;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p1.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v1.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr1.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p1.enabled := true;
         FRDanfe.v1.enabled := true;
         FRDanfe.Vlr1.enabled := true;
         FDMVendas.Tnotavendadup.Next;
    End;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p2.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v2.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr2.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p2.enabled := true;
         FRDanfe.v2.enabled := true;
         FRDanfe.Vlr2.enabled := true;
         FDMVendas.Tnotavendadup.Next;
      End;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p3.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v3.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr3.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p3.enabled := true;
         FRDanfe.v3.enabled := true;
         FRDanfe.Vlr3.enabled := true;
         FDMVendas.Tnotavendadup.Next;
    End;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p4.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v4.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr4.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p4.enabled := true;
         FRDanfe.v4.enabled := true;
         FRDanfe.Vlr4.enabled := true;
         FDMVendas.Tnotavendadup.Next;
    End;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p5.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v5.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr5.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p5.enabled := true;
         FRDanfe.v5.enabled := true;
         FRDanfe.Vlr5.enabled := true;
         FDMVendas.Tnotavendadup.Next;
    End;
    If Not FDMVendas.Tnotavendadup.Eof Then
      Begin
         FRDanfe.p6.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v6.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr6.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p6.enabled := true;
         FRDanfe.v6.enabled := true;
         FRDanfe.Vlr6.enabled := true;
         FDMVendas.Tnotavendadup.Next;
      End;
    If Not FDMVendas.Tnotavendadup.Eof Then
      Begin
         FRDanfe.p7.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v7.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr7.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p7.enabled := true;
         FRDanfe.v7.enabled := true;
         FRDanfe.Vlr7.enabled := true;
         FDMVendas.Tnotavendadup.Next;
      End;
        If Not FDMVendas.Tnotavendadup.Eof Then
      Begin
         FRDanfe.p8.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v8.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr8.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p8.enabled := true;
         FRDanfe.v8.enabled := true;
         FRDanfe.Vlr8.enabled := true;
         FDMVendas.Tnotavendadup.Next;
      End;
    If Not FDMVendas.Tnotavendadup.Eof Then
      Begin
         FRDanfe.p9.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v9.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr9.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p9.enabled := true;
         FRDanfe.v9.enabled := true;
         FRDanfe.Vlr9.enabled := true;
      End;
    //fim duplicatas  }
    If FDMVendas.TNotaVendaTIPOFRETE.Value = 'A' then
      FRDanfe.TFrete.Caption := '1 - A Pagar'
    Else If FDMVendas.TNotaVendaTIPOFRETE.Value = 'P' then
      FRDanfe.TFrete.Caption := '0 - Pago'
    Else If FDMVendas.TNotaVendaTIPOFRETE.Value = 'S' then
      FRDanfe.TFrete.Caption := '9 - Sem Frete'
    Else
      FRDanfe.TFrete.Caption := ' ';


   FRDanfe.QRValFrete.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaFRETE.Value);
   //FEmissaoNotaVenda.Seguro.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaSEGURO.Value);
   FRDanfe.Base.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaBaseICMS.Value);
   FRDanfe.VIcms.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaTOTIcms.Value);
   FRDanfe.Ipi.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaTOTIPI.value);
   FRDanfe.QRBaseICMSSub.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaBASESUBTRIB.value);
   FRDanfe.QRValICMSSub.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaTOTICMSST.value);
   //FEmissaoNotaVenda.TotalNota.Caption := FormatFloat('###,###,##0.00',TotNota);
   //FIM CÁLCULOS
    FRDanfe.ENotaVenda.Prepare;
    FRDanfe.numero.Caption := '/ '+ inttostr(FRDanfe.ENotaVenda.QRPrinter.PageCount);
    FRDanfe.numero.enabled := true;
    FRDanfe.numero.Visible := true;
    //FEmissaoNotaVenda.ENotaVenda.Preview;

  if(FDMVendas.TNotaVendaTIPONOTA.value = 'VENDA')then
    FRDanfe.QRLabel73.caption := '1'
  else
    FRDanfe.QRLabel73.caption := '2';
  frdanfe.endemit.Caption := fdm.TempresaENDERECO.value + ','+ fdm.TempresaNUMERO.value;
  frdanfe.QRecebs.Caption := 'RECEBEMOS DE '+fdm.TempresaRAZAOSOCIAL.value+' OS PRODUTOS/SERVIÇOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO';
  FRDanfe.ENotaVenda.Preview;
  finally
    FRDanfe.Free;

    FDMVendas.TNotaVendaItTotal.currency := true;
    FDMVendas.TNotaVendaItTotal.DisplayFormat := '';
    FDMVendas.TNotaVendaItBASEICMS.currency := true;
    FDMVendas.TNotaVendaItBASEICMS.DisplayFormat := '';
    //FDMVendas.TNotaVendaItVLRUNIT.currency := true;
    FDMVendas.TNotaVendaItVLRUNIT.DisplayFormat := '###,###,###,##0.0000';
    FDMVendas.TNotaVendaItVALICMS.currency := true;
    FDMVendas.TNotaVendaItVALICMS.DisplayFormat := '';
    FDMVendas.TNotaVendaItVALIPI.currency := true;
    FDMVendas.TNotaVendaItVALIPI.DisplayFormat := '';
    FDMVendas.TNotaVendaItTOTCDESC.currency := true;
    FDMVendas.TNotaVendaItTOTCDESC.DisplayFormat := '';
    FDMVendas.TNotaVendaItICMS.DisplayFormat := '0.00 %';
    FDMVendas.TNotaVendaItIPI.DisplayFormat := '0.00 %';
  end;
end;


procedure gerarpdfNfe(local : String);
var
   TotProd,TotServ,TotNota,TotTrib,TotIsento,TotBase,ValIcms,ValIss, valicmssemred,
    ValIpi,ValIpiUn,PorcIPI, Prods : Real;
    i : integer;
    AuxBase, AuxIcms,obs, desccst : String;
    NumVolume : String;
    NumFone, textoobs : String;
    ST010, ST110,ST060, ST051, ST000, ST090, ST030, linha  : integer;
begin
//  FDMVendas.TNotaVendaIt.Refresh;
  textoobs := '';
  FDMVendas.TNotaVendaIt.first;
  try
    Application.CreateForm(TFRDanfe,FRDanfe);

    FdmCliente.TCliente.close;
    FdmCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMVendas.TNotaVendaCODCLI.Value;
    FdmCliente.TCliente.Open;

    FdmCliente.Qconendentrega.close;
    FdmCliente.Qconendentrega.Params.ParamByName('CODCLI').AsInteger := FDMVendas.TNotaVendaCODCLI.Value;
    FdmCliente.Qconendentrega.Params.ParamByName('ITEM').AsInteger := FDMVendas.TNotaVendaCODEND.Value;
    FdmCliente.Qconendentrega.Open;

    Fdm.TEmpresa.close;
    Fdm.TEmpresa.Open;

    FdmFornec.TTransp.close;
    FdmFornec.TTransp.Params.ParamByName('CODIGO').AsInteger := FDMVendas.TNotaVendaCODTRANS.Value;
    FdmFornec.TTransp.Open;


    if(FDMVendas.TNotaVendaAVISTA.value = 'S') or not (fdmvendas.TNotaVendaDup.RecordCount > 0)then
      FRDanfe.prazopagamento.caption := 'PAGAMENTO A VISTA'
    else
      FRDanfe.prazopagamento.caption := 'PAGAMENTO A PRAZO';

  st010 := 0;
  st110 := 0;
  st060 := 0;
  st000 := 0;
  st090 := 0;
  ST051 := 0;
  ST030 := 0;
  FRDanfe.QRObs.Lines.Clear;
  FRDanfe.QRObs2.Lines.Clear;

  FDMVendas.TNotaVendaItVLRUNIT.currency := false;
  FDMVendas.TNotaVendaItVLRUNIT.DisplayFormat := '###,###,##0.0000';
  FDMVendas.TNotaVendaItVALICMS.currency := false;
  FDMVendas.TNotaVendaItVALICMS.DisplayFormat := '###,###,##0.00';
  FDMVendas.TNotaVendaItVALIPI.currency := false;
  FDMVendas.TNotaVendaItVALIPI.DisplayFormat := '###,###,##0.00';
  FDMVendas.TNotaVendaItBASEICMS.currency := false;
  FDMVendas.TNotaVendaItBASEICMS.DisplayFormat := '###,###,##0.00';
  FDMVendas.TNotaVendaItTOTCDESC.currency := false;
  FDMVendas.TNotaVendaItTOTCDESC.DisplayFormat := '###,###,##0.00';
  FDMVendas.TNotaVendaItICMS.DisplayFormat := '##0';
  FDMVendas.TNotaVendaItIPI.DisplayFormat := '##0';
  FDMVendas.TNotaVendaItTotal.currency := false;
  FDMVendas.TNotaVendaItTotal.DisplayFormat := '###,###,##0.00';
  //QRTipoNotaX é o valor do X ENTRADA OU SAÍDA

  if fdm.TempresaLOGODANFE.Value <> '' then
  begin
    if FileExists(fdm.TempresaLOGODANFE.Value) then
    begin
      FRDanfe.QRImage1.Picture.LoadFromFile(fdm.TempresaLOGODANFE.Value);
      FRDanfe.QRImage1 := ProportionalHeight(FRDanfe.QRImage1,68);
    end
    else
    begin
      showmessage('A Logo não foi encontrada no seguinte caminho: '+fdm.TempresaLOGODANFE.Value);
    end;
  end;

  FRDanfe.QRLabel2.Caption := fdm.TEmpresaSERIE.DisplayText;
  FRDanfe.QRLabel1.Caption := fdm.TEmpresaSERIE.DisplayText;

  //NUMERO NOTA
  FRDanfe.QRNumDocT.Caption:= FDMVendas.TNotaVendaCODIGO.DisplayText;
  FRDanfe.QRNumDocB.Caption:= FDMVendas.TNotaVendaCODIGO.DisplayText;
  //DATAS
  FRDanfe.QRDtEmissao.Caption:= FDMVendas.TNotaVendaDATANFE.DisplayText;
  FRDanfe.QRDtSaida.Caption:= FDMVendas.TNotaVendaDTENTREGA.DisplayText;
//  FEmissaoNotaVenda.QRDtReceb.Caption:= FDMVendas.TNotaVendaDTEMISSAO.DisplayText;
  //NATUREZA DE OPERAÇÃO
  FRDanfe.QRDescNatOpe.Caption:= FDMVendas.TNotaVendaDESCOPERACAO.DisplayText;
  FRDanfe.QRNatOpe.Caption:= copy(FDMVendas.TNotaVendaOPERACAO.DisplayText,1,5);
  //INFORMAÇÕES DO CLIENTE

  FRDanfe.QRNomeCli.Caption:= FDMVendas.TNotaVendaNOMECLI.DisplayText;
  FRDanfe.QRCodCli.Caption:= FDMVendas.TNotaVendaCODCLI.DisplayText;

  If FdmCliente.TClienteCNPJ.Value = '' then
  begin
    FRDanfe.QRCgcCpfCli.Caption:= FdmCliente.TClienteCPF.DisplayText;
    FRDanfe.QRIncEstadCli.Caption:= '';
  end
  Else
  begin
    FRDanfe.QRCgcCpfCli.Caption:= FdmCliente.TClienteCNPJ.DisplayText;
    FRDanfe.QRIncEstadCli.Caption:= FdmCliente.TClienteINSCEST.DisplayText;
  end;
  FRDanfe.QREndCli.Caption:= FdmCliente.TClienteENDERECO.DisplayText + ',  ' +FdmCliente.TClienteNUMERO.value;
  FRDanfe.QRBairroCli.Caption:= FdmCliente.TClienteBAIRRO.DisplayText;
  FRDanfe.QRCEPCli.Caption:= FdmCliente.TClienteCEP.DisplayText;
  FRDanfe.QRCidCli.Caption:= FdmCliente.TClienteCIDADE.DisplayText;
  FRDanfe.QRTelCli.Caption:= FdmCliente.TClienteFONE.DisplayText;
  FRDanfe.QRUFCli.Caption:= FdmCliente.TClienteUF.DisplayText;

  FRDanfe.QRObs.Lines.Clear;
  if FDMVendas.TNotaVendaPEDIDO.Value > 0 then
  begin
    FRDanfe.QRObs.Lines.Add('PEDIDO: '+inttostr(FDMVendas.TNotaVendaPEDIDO.Value)+#13);
  end;

  if FDMVendas.TNotaVendaCODIGO.Value > 0 then
  begin
    FRDanfe.QRObs.Lines.Add('ESPELHO: '+inttostr(FDMVendas.TNotaVendaCODIGO.Value)+#13);
  end;

  FRDanfe.QRObs.Lines.Add(fdmvendas.TNotaVendaOBSERVACAO.Value);

  if fdmcliente.qconendentrega.RecordCount > 0 then
  begin
    FRDanfe.QRObs.Lines.Add(fdmcliente.qconendentreganome.value);
    FRDanfe.QRObs.Lines.Add('Endereço de Entrega: '+fdmcliente.qconendentregaendereco.value+', '+fdmcliente.qconendentreganumero.value+' '+fdmcliente.qconendentregabairro.value);
    FRDanfe.QRObs.Lines.Add('Cidade: '+fdmcliente.qconendentregacidade.value+' - '+fdmcliente.qconendentregauf.value+' CEP: '+fdmcliente.qconendentregacep.value+' '+fdmcliente.qconendentregacomplemento.value);
  end
  else
  begin
    FRDanfe.QRObs.Lines.Add(fdmcliente.tclientenome.value);
    FRDanfe.QRObs.Lines.Add('Endereço de Entrega: '+fdmcliente.tclienteendereco.value+', '+fdmcliente.tclientenumero.value+' '+fdmcliente.qconendentregabairro.value);
    FRDanfe.QRObs.Lines.Add('Cidade: '+fdmcliente.tclientecidade.value+' - '+fdmcliente.tclienteuf.value+' CEP: '+fdmcliente.qconendentregacep.value+' '+fdmcliente.tclientecomplemento.value);
  end;

  if  FRDanfe.QRObs.Lines.Count > 12 then
  begin
     while FRDanfe.QRObs.Lines.Count > 12 do
     begin
       textoobs := textoobs+(FRDanfe.QRObs.Lines[12]);
       FRDanfe.QRObs.Lines.Delete(12);
     end;
     FRDanfe.QRObs2.Lines.add(textoobs);
  end;

  //FECHAMENTO
  FRDanfe.QRVlrTot.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaTOTPROD.Value);
  FRDanfe.QRVlrTotNota.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaTOTNOTA.Value);
  FRDanfe.QRBaseICMSSub.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaBASESUBTRIB.Value);
  FRDanfe.QRValICMSSub.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaTOTICMSST.Value);
  //FEmissaoNotaVenda.QRBaseICMS.Caption:= FormatFloat('###,###,##0.00', 0);
  FRDanfe.QRValFrete.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaFRETE.Value);
  //FEmissaoNotaVenda.QRValICMS.Caption:= FormatFloat('###,###,##0.00', 0);
  FRDanfe.QRValSeg.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaSEGURO.Value);
  FRDanfe.QROutDesp.Caption:= FormatFloat('###,###,##0.00', FDMVendas.TNotaVendaDESPESA.Value);
  //FEmissaoNotaVenda.QRValTotIPI.Caption:= FormatFloat('###,###,##0.00', 0);

  //TRANSPORTADOR
  //FRDanfe.QRPlaca.Caption:= fdmfornec.TTranspPLACA.Value;
  FRDanfe.QRPlaca.Caption:= fdmvendas.TNotavendaplaca.Value;

  FRDanfe.v1.Enabled := false;
  FRDanfe.v2.Enabled := false;
  FRDanfe.v3.Enabled := false;
  FRDanfe.v4.Enabled := false;
  FRDanfe.v5.Enabled := false;
  FRDanfe.v6.Enabled := false;
  FRDanfe.v7.Enabled := false;
  FRDanfe.v8.Enabled := false;
  FRDanfe.v9.Enabled := false;
  FRDanfe.p1.Enabled := false;
  FRDanfe.p2.Enabled := false;
  FRDanfe.p3.Enabled := false;
  FRDanfe.p4.Enabled := false;
  FRDanfe.p5.Enabled := false;
  FRDanfe.p6.Enabled := false;
  FRDanfe.p7.Enabled := false;
  FRDanfe.p8.Enabled := false;
  FRDanfe.p9.Enabled := false;
  FRDanfe.vlr1.Enabled := false;
  FRDanfe.vlr2.Enabled := false;
  FRDanfe.vlr3.Enabled := false;
  FRDanfe.vlr4.Enabled := false;
  FRDanfe.vlr5.Enabled := false;
  FRDanfe.vlr6.Enabled := false;
  FRDanfe.vlr7.Enabled := false;
  FRDanfe.vlr8.Enabled := false;
  FRDanfe.vlr9.Enabled := false;
  //duplicatas

  FDMVendas.Tnotavendadup.First;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p1.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v1.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr1.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p1.enabled := true;
         FRDanfe.v1.enabled := true;
         FRDanfe.Vlr1.enabled := true;
         FDMVendas.Tnotavendadup.Next;
    End;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p2.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v2.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr2.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p2.enabled := true;
         FRDanfe.v2.enabled := true;
         FRDanfe.Vlr2.enabled := true;
         FDMVendas.Tnotavendadup.Next;
      End;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p3.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v3.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr3.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p3.enabled := true;
         FRDanfe.v3.enabled := true;
         FRDanfe.Vlr3.enabled := true;
         FDMVendas.Tnotavendadup.Next;
    End;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p4.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v4.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr4.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p4.enabled := true;
         FRDanfe.v4.enabled := true;
         FRDanfe.Vlr4.enabled := true;
         FDMVendas.Tnotavendadup.Next;
    End;
  If Not FDMVendas.Tnotavendadup.Eof Then
    Begin
         FRDanfe.p5.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v5.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr5.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p5.enabled := true;
         FRDanfe.v5.enabled := true;
         FRDanfe.Vlr5.enabled := true;
         FDMVendas.Tnotavendadup.Next;
    End;
    If Not FDMVendas.Tnotavendadup.Eof Then
      Begin
         FRDanfe.p6.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v6.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr6.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p6.enabled := true;
         FRDanfe.v6.enabled := true;
         FRDanfe.Vlr6.enabled := true;
         FDMVendas.Tnotavendadup.Next;
      End;
    If Not FDMVendas.Tnotavendadup.Eof Then
      Begin
         FRDanfe.p7.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v7.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr7.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p7.enabled := true;
         FRDanfe.v7.enabled := true;
         FRDanfe.Vlr7.enabled := true;
         FDMVendas.Tnotavendadup.Next;
      End;
        If Not FDMVendas.Tnotavendadup.Eof Then
      Begin
         FRDanfe.p8.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v8.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr8.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p8.enabled := true;
         FRDanfe.v8.enabled := true;
         FRDanfe.Vlr8.enabled := true;
         FDMVendas.Tnotavendadup.Next;
      End;
    If Not FDMVendas.Tnotavendadup.Eof Then
      Begin
         FRDanfe.p9.Caption := FDMVendas.TnotavendadupNUMDUP.Value;
         FRDanfe.v9.Caption := FormatDateTime('dd/mm/yyyy',FDMVendas.TnotavendadupVENCIMENTO.AsDateTime);
         FRDanfe.Vlr9.Caption := FormatFloat('###,###,##0.00',FDMVendas.TnotavendadupVALOR.Value);
         FRDanfe.p9.enabled := true;
         FRDanfe.v9.enabled := true;
         FRDanfe.Vlr9.enabled := true;
      End;
    //fim duplicatas  }
    If FDMVendas.TNotaVendaTIPOFRETE.Value = 'A' then
      FRDanfe.TFrete.Caption := '1 - A Pagar'
    Else If FDMVendas.TNotaVendaTIPOFRETE.Value = 'P' then
      FRDanfe.TFrete.Caption := '0 - Pago'
    Else If FDMVendas.TNotaVendaTIPOFRETE.Value = 'S' then
      FRDanfe.TFrete.Caption := '9 - Sem Frete'
    Else
      FRDanfe.TFrete.Caption := ' ';


   FRDanfe.QRValFrete.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaFRETE.Value);
   //FEmissaoNotaVenda.Seguro.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaSEGURO.Value);
   FRDanfe.Base.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaBaseICMS.Value);
   FRDanfe.VIcms.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaTOTIcms.Value);
   FRDanfe.Ipi.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaTOTIPI.value);
   FRDanfe.QRBaseICMSSub.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaBASESUBTRIB.value);
   FRDanfe.QRValICMSSub.Caption := FormatFloat('###,###,##0.00',FDMVendas.TNotaVendaTOTICMSST.value);
   //FEmissaoNotaVenda.TotalNota.Caption := FormatFloat('###,###,##0.00',TotNota);
   //FIM CÁLCULOS
    FRDanfe.ENotaVenda.Prepare;
    FRDanfe.numero.Caption := '/ '+ inttostr(FRDanfe.ENotaVenda.QRPrinter.PageCount);
    FRDanfe.numero.enabled := true;
    FRDanfe.numero.Visible := true;
    //FEmissaoNotaVenda.ENotaVenda.Preview;

  if(FDMVendas.TNotaVendaTIPONOTA.value = 'VENDA')then
    FRDanfe.QRLabel73.caption := '1'
  else
    FRDanfe.QRLabel73.caption := '2';
  frdanfe.endemit.Caption := fdm.TempresaENDERECO.value + ','+ fdm.TempresaNUMERO.value;
  frdanfe.QRecebs.Caption := 'RECEBEMOS DE '+fdm.TempresaRAZAOSOCIAL.value+' OS PRODUTOS/SERVIÇOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO';

  if local = '' then
  begin
    FRDanfe.ENotaVenda.ExportToFilter(TQRPDFDocumentFilter.Create(Extractfilepath(Application.ExeName)+'pdf/'+fdmvendas.TNotavendachave.Value+'-nfe.pdf'));
  end
  else
  begin
    FRDanfe.ENotaVenda.ExportToFilter(TQRPDFDocumentFilter.Create(local+'/'+fdmvendas.TNotavendachave.Value+'-nfe.pdf'));
  end;

  finally
    FRDanfe.Free;

    FDMVendas.TNotaVendaItTotal.currency := true;
    FDMVendas.TNotaVendaItTotal.DisplayFormat := '';
    FDMVendas.TNotaVendaItBASEICMS.currency := true;
    FDMVendas.TNotaVendaItBASEICMS.DisplayFormat := '';
    //FDMVendas.TNotaVendaItVLRUNIT.currency := true;
    FDMVendas.TNotaVendaItVLRUNIT.DisplayFormat := '###,###,###,##0.0000';
    FDMVendas.TNotaVendaItVALICMS.currency := true;
    FDMVendas.TNotaVendaItVALICMS.DisplayFormat := '';
    FDMVendas.TNotaVendaItVALIPI.currency := true;
    FDMVendas.TNotaVendaItVALIPI.DisplayFormat := '';
    FDMVendas.TNotaVendaItTOTCDESC.currency := true;
    FDMVendas.TNotaVendaItTOTCDESC.DisplayFormat := '';
    FDMVendas.TNotaVendaItICMS.DisplayFormat := '0.00 %';
    FDMVendas.TNotaVendaItIPI.DisplayFormat := '0.00 %';
  end;
end;

procedure gerar(ACBrNFe1 : TACBrNFe; contingencia :boolean);
var
  ok : boolean;
  vNumLote : String;
begin
      vNumLote := '1';

      fdmvendas.TNotaVenda.Edit;
      fdmvendas.TNotaVendaDATANFE.Value := date;
      ACBrNFe1.NotasFiscais.Clear;
      with ACBrNFe1.NotasFiscais.Add.NFe do
       begin
         Ide.cNF       := fdmvendas.TNotaVendaCODIGO.Value; //Caso não seja preenchido será gerado um número aleatório pelo componente
         Ide.natOp     := fdmvendas.TNotaVendaDESCOPERACAO.Value;//'VENDA PRODUCAO DO ESTAB.';

         fdmvendas.TNotaVendaDup.First;
         if ((fdmvendas.TNotaVendaDupVENCIMENTO.AsDateTime = date) and (fdmvendas.TNotaVendaDup.recordcount = 1)) or not (fdmvendas.TNotaVendaDup.recordcount > 0) then
         begin
           Ide.indPag    := ipVista;
         end
         else
         begin
          Ide.indPag    := ipPrazo;
         end;

         Ide.modelo    := 55;
         Ide.serie     := StrToIntDef(fdm.TEmpresaSERIE.Value,1);
         Ide.nNF       := fdmvendas.TNotaVendaCODIGO.Value;
         Ide.dEmi      := fdmvendas.TNotaVendaDATANFE.Value;
         Ide.dSaiEnt   := fdmvendas.TNotaVendaDTENTREGA.Value;
         Ide.hSaiEnt   := fdmvendas.TNotaVendaHORAENTREGA.Value; //-- NFe 2.0
         if fdmvendas.TNotaVendaTIPONOTA.Value = 'VENDA' then
         begin
           Ide.tpNF      := tnSaida;
         end
         else
         begin
          Ide.tpNF      := tnEntrada;
         end;

         if contingencia then
         begin
          Ide.tpEmis    := teDPEC;
         end
         else
         begin
           Ide.tpEmis    := teNormal;
         end;

         if fdm.TEmpresaTIPOAMB.Value = 2 then
         begin
           Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
         end
         else
         begin
           Ide.tpAmb     := taProducao;
         end;

         Ide.verProc   := '1.0.0.0'; //Versão do seu sistema
         Ide.cUF       := fdm.TEmpresaCODESTADO.value;{NotaUtil.UFtoCUF(fdm.TEmpresaUF.Value); -- NFe 2.0}
         Ide.cMunFG    := strtoint(inttostr(fdm.TEmpresaCODESTADO.value)+Zeros(inttostr(fdm.TEmpresaCODMUNIC.value),5));
         Ide.finNFe    := fnNormal;

    //Para NFe referenciada use os campos abaixo
    {     with Ide.NFref.Add do
          begin
            refNFe       := ''; //NFe Eletronica

            RefNF.cUF    := 0;  // |
            RefNF.AAMM   := ''; // |
            RefNF.CNPJ   := ''; // |
            RefNF.modelo := 1;  // |- NFe Modelo 1/1A
            RefNF.serie  := 1;  // |
            RefNF.nNF    := 0;  // |

            RefNFP.cUF     := 0;  // |
            RefNFP.AAMM    := ''; // |
            RefNFP.CNPJCPF := ''; // |
            RefNFP.IE      := ''; // |- NF produtor Rural
            RefNFP.modelo  := ''; // |
            RefNFP.serie   := 1;  // |
            RefNFP.nNF     := 0;  // |

            RefECF.modelo  := ECFModRef2B; // |
            RefECF.nECF    := '';          // |- Cupom Fiscal
            RefECF.nCOO    := '';          // |
          end;
    }
          Emit.CNPJCPF           := fdm.TEmpresaCNPJ.value;
          Emit.IE                := fdm.TEmpresaINSCEST.value;
          Emit.xNome             := fdm.TEmpresaRAZAOSOCIAL.value;
          Emit.xFant             := fdm.TEmpresaNOMEFANTA.value;

          Emit.EnderEmit.fone    := fdm.TEmpresaFONE1.value;
          Emit.EnderEmit.CEP     := StrToInt(SoNumeros(fdm.TEmpresaCEP.value));
          Emit.EnderEmit.xLgr    := fdm.TEmpresaENDERECO.value;
          Emit.EnderEmit.nro     := fdm.TEmpresaNUMERO.value;
          Emit.EnderEmit.xCpl    := fdm.TEmpresaCOMPLEMENTO.value;
          Emit.EnderEmit.xBairro := fdm.TEmpresaBAIRRO.value;
          Emit.EnderEmit.cMun    := strtoint(inttostr(fdm.TEmpresaCODESTADO.Value)+Zeros(inttostr(fdm.TEmpresaCODMUNIC.value),5));
          Emit.EnderEmit.xMun    := fdm.TEmpresaCIDADE.value;
          Emit.EnderEmit.UF      := fdm.TEmpresaUF.value;
          Emit.enderEmit.cPais   := 1058;
          Emit.enderEmit.xPais   := 'BRASIL';

          if fdm.TEmpresaINSCESTST.Value <> 'ISENTO' then
          begin
            Emit.IEST              := fdm.TEmpresaINSCESTST.Value;
          end
          else
          begin
            Emit.IEST              := '';
          end;


          Emit.IM                := ''; // Preencher no caso de existir serviços na nota
          Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se é permitido
                                        // a inclusão de serviços na NFe
          if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'SIMPLES' then
          begin
            Emit.CRT               := crtSimplesNacional; //-- NFe 2.0
          end
          else if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'LUCRO PRESUMIDO' then
          begin
            Emit.CRT               := crtRegimeNormal; //-- NFe 2.0
          end
          else if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'LUCRO REAL' then
          begin
            Emit.CRT               := crtRegimeNormal; //-- NFe 2.0
          end;

    //Para NFe Avulsa preencha os campos abaixo
    {      Avulsa.CNPJ    := '';
          Avulsa.xOrgao  := '';
          Avulsa.matr    := '';
          Avulsa.xAgente := '';
          Avulsa.fone    := '';
          Avulsa.UF      := '';
          Avulsa.nDAR    := '';
          Avulsa.dEmi    := now;
          Avulsa.vDAR    := 0;
          Avulsa.repEmi  := '';
          Avulsa.dPag    := now;             }
          fdmcliente.TCliente.Close;
          fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmvendas.TNotaVendaCODCLI.Value;
          fdmcliente.TCliente.Open;

          if fdmcliente.TClientePESSOA.Value = 'JURIDICA' then
          begin
            Dest.CNPJCPF           := fdmcliente.TClienteCNPJ.value;
            Dest.IE                := fdmcliente.TClienteINSCEST.value;
          end
          else
          begin
            Dest.CNPJCPF           := fdmcliente.TClienteCPF.value;
            Dest.IE                := '';
          end;

          Dest.ISUF              := '';
          Dest.xNome             := copy(fdmcliente.TClienteNOME.value,1,60);

          Dest.EnderDest.Fone    := fdmcliente.TClienteFONE.value;
          Dest.EnderDest.CEP     := strtoint(sonumeros(fdmcliente.TClienteCEP.value));
          Dest.EnderDest.xLgr    := fdmcliente.TClienteENDERECO.value;
          Dest.EnderDest.nro     := fdmcliente.TClienteNUMERO.value;
          Dest.EnderDest.xCpl    := copy(fdmcliente.TClienteCOMPLEMENTO.Value,1,60);
          Dest.EnderDest.xBairro := fdmcliente.TClienteBAIRRO.value;
          Dest.EnderDest.cMun    := strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ Zeros(inttostr(fdmcliente.TClienteCODMUNIC.value),5));
          Dest.EnderDest.xMun    := fdmcliente.TClienteCIDADE.value;
          Dest.EnderDest.UF      := fdmcliente.TClienteUF.value;
          Dest.EnderDest.cPais   := 1058;
          Dest.EnderDest.xPais   := 'BRASIL';

    //Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
    {      Retirada.CNPJCPF := '';
          Retirada.xLgr    := '';
          Retirada.nro     := '';
          Retirada.xCpl    := '';
          Retirada.xBairro := '';
          Retirada.cMun    := 0;
          Retirada.xMun    := '';
          Retirada.UF      := '';}

    //Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
    {      Entrega.CNPJCPF := '';
          Entrega.xLgr    := '';
          Entrega.nro     := '';
          Entrega.xCpl    := '';
          Entrega.xBairro := '';
          Entrega.cMun    := 0;
          Entrega.xMun    := '';
          Entrega.UF      := '';}

    //Adicionando Produtos

           fdmvendas.TNotaVendaIt.First;
           while not fdmvendas.TNotaVendaIt.eof do
           begin
             with Det.Add do
             begin
               Prod.nItem    := fdmvendas.TNotaVendaIt.RecNo; // Número sequencial, para cada item deve ser incrementado
               Prod.cProd    := inttostr(fdmvendas.TNotaVendaItCODPROD.Value);
               Prod.cEAN     := '';
               Prod.xProd    := fdmvendas.TNotaVendaItNOMEPROD.Value;
               Prod.NCM      := fdmvendas.TNotaVendaItNCM.value; // Tabela NCM disponível em
               Prod.EXTIPI   := '';
               Prod.CFOP     := SoNumeros(fdmvendas.TNotaVendaItCFOP.value);
               Prod.uCom     := fdmvendas.TNotaVendaItUNIDADE.value;
               Prod.qCom     := fdmvendas.TNotaVendaItQTDEBAIXADA.Value;
               Prod.vUnCom   := fdmvendas.TNotaVendaItVLRUNIT.Value;
               Prod.vProd    := fdmvendas.TNotaVendaItTOTCDESC.Value;

               Prod.cEANTrib  := '';
               Prod.uTrib     := fdmvendas.TNotaVendaItUNIDADE.value;
               Prod.qTrib     := fdmvendas.TNotaVendaItQTDEBAIXADA.Value;
               Prod.vUnTrib   := fdmvendas.TNotaVendaItVLRUNIT.Value;

               Prod.vFrete    := 0;
               Prod.vSeg      := 0;
               Prod.vDesc     := 0;
    //           Prod.vDesc     := fdmvendas.TNotaVendaItDESCONTO.Value;

               infAdProd      := '';//'Informação Adicional do Produto';

      //Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
      {         with Prod.DI.Add do
                begin
                  nDi         := '';
                  dDi         := now;
                  xLocDesemb  := '';
                  UFDesemb    := '';
                  dDesemb     := now;
                  cExportador := '';

                  with adi.Add do
                   begin
                     nAdicao     := 1;
                     nSeqAdi     := 1;
                     cFabricante := '';
                     vDescDI     := 0;
                   end;
                end;
      }
      //Campos para venda de veículos novos
      {         with Prod.veicProd do
                begin
                  tpOP    := toVendaConcessionaria;
                  chassi  := '';
                  cCor    := '';
                  xCor    := '';
                  pot     := '';
                  Cilin   := '';
                  pesoL   := '';
                  pesoB   := '';
                  nSerie  := '';
                  tpComb  := '';
                  nMotor  := '';
                  CMT     := '';
                  dist    := '';
                  RENAVAM := '';
                  anoMod  := 0;
                  anoFab  := 0;
                  tpPint  := '';
                  tpVeic  := 0;
                  espVeic := 0;
                  VIN     := '';
                  condVeic := cvAcabado;
                  cMod    := '';
                end;
      }
      //Campos específicos para venda de medicamentos
             {  if fdmvendas.TNotaVendaItRASTREAR.Value = 'S' then
               begin
                 with Prod.med.Add do
                  begin
                    nLote := fdmvendas.TNotaVendaItLOTE.Value;
                    qLote := fdmvendas.TNotaVendaItQTDEBAIXADA.Value;
                    dFab  := fdmvendas.TNotaVendaItFABRICACAO.Value;
                    dVal  := fdmvendas.TNotaVendaItVALIDADE.Value ;
                    vPMC  := 0 ;
                  end;
               end;}
      //Campos específicos para venda de armamento
      {         with Prod.arma.Add do
                begin
                  nSerie := 0;
                  tpArma := taUsoPermitido ;
                  nCano  := 0 ;
                  descr  := '' ;
                end;      }
      //Campos específicos para venda de combustível(distribuidoras)
      {         with Prod.comb do
                begin
                  cProdANP := 0;
                  CODIF    := '';
                  qTemp    := 0;

                  CIDE.qBCprod   := 0 ;
                  CIDE.vAliqProd := 0 ;
                  CIDE.vCIDE     := 0 ;

                  ICMS.vBCICMS   := 0 ;
                  ICMS.vICMS     := 0 ;
                  ICMS.vBCICMSST := 0 ;
                  ICMS.vICMSST   := 0 ;

                  ICMSInter.vBCICMSSTDest := 0 ;
                  ICMSInter.vICMSSTDest   := 0 ;

                  ICMSCons.vBCICMSSTCons := 0 ;
                  ICMSCons.vICMSSTCons   := 0 ;
                  ICMSCons.UFcons        := '' ;
                end;}

               with Imposto do
                begin

                  with ICMS do
                   begin
                     if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'SIMPLES' then
                     begin

                       if fdmvendas.TNotaVendaItORIGEM.Value = '0' then
                         orig    := oeNacional
                       else if fdmvendas.TNotaVendaItORIGEM.Value = '1' then
                         orig    := oeEstrangeiraImportacaoDireta
                       else if fdmvendas.TNotaVendaItORIGEM.Value = '2' then
                         orig    := oeEstrangeiraAdquiridaBrasil;

                       if fdmvendas.TNotaVendaGERACREDICMS.Value = 'S' then
                       begin
                         CSOSN        := csosn101;
                       end
                       else
                       begin
                         CSOSN        := csosn102;
                       end;

{                       if (fdmvendas.TNotaVendaItCST.Value = '00') or (fdmvendas.TNotaVendaItCST.Value = '20') then
                         CSOSN        := csosn101
                       else if (fdmvendas.TNotaVendaItCST.Value = '40') or (fdmvendas.TNotaVendaItCST.Value = '41') or (fdmvendas.TNotaVendaItCST.Value = '50') or (fdmvendas.TNotaVendaItCST.Value = '51') then
                         CSOSN        := csosn102
                       else if (fdmvendas.TNotaVendaItCST.Value = '10') or (fdmvendas.TNotaVendaItCST.Value = '70') then
                         CSOSN        := csosn201
                       else if fdmvendas.TNotaVendaItCST.Value = '30' then
                         CSOSN        := csosn202
                       else if fdmvendas.TNotaVendaItCST.Value = '60' then
                         CSOSN        := csosn500
                       else if fdmvendas.TNotaVendaItCST.Value = '90' then
                         CSOSN        := csosn900;}
                     end
                     else
                     begin
                       if fdmvendas.TNotaVendaItCST.Value = '00' then
                         CST          := cst00
                       else if fdmvendas.TNotaVendaItCST.Value = '10' then
                         CST          := cst10
                       else if fdmvendas.TNotaVendaItCST.Value = '20' then
                         CST          := cst20
                       else if fdmvendas.TNotaVendaItCST.Value = '30' then
                         CST          := cst30
                       else if fdmvendas.TNotaVendaItCST.Value = '40' then
                         CST          := cst40
                       else if fdmvendas.TNotaVendaItCST.Value = '41' then
                         CST          := cst41
                       else if fdmvendas.TNotaVendaItCST.Value = '45' then
                         CST          := cst45
                       else if fdmvendas.TNotaVendaItCST.Value = '50' then
                         CST          := cst50
                       else if fdmvendas.TNotaVendaItCST.Value = '51' then
                         CST          := cst51
                       else if fdmvendas.TNotaVendaItCST.Value = '60' then
                         CST          := cst60
                       else if fdmvendas.TNotaVendaItCST.Value = '70' then
                         CST          := cst70
                       else if fdmvendas.TNotaVendaItCST.Value = '80' then
                         CST          := cst80
                       else if fdmvendas.TNotaVendaItCST.Value = '81' then
                         CST          := cst81
                       else if fdmvendas.TNotaVendaItCST.Value = '90' then
                         CST          := cst90;

                       if fdmvendas.TNotaVendaItORIGEM.Value = '0' then
                         ICMS.orig    := oeNacional
                       else if fdmvendas.TNotaVendaItORIGEM.Value = '1' then
                         ICMS.orig    := oeEstrangeiraImportacaoDireta
                       else if fdmvendas.TNotaVendaItORIGEM.Value = '2' then
                         ICMS.orig    := oeEstrangeiraAdquiridaBrasil;

                       ICMS.modBC   := dbiValorOperacao;
                       ICMS.vBC     := fdmvendas.TNotaVendaItBASEICMS.Value;
                       ICMS.pICMS   := fdmvendas.TNotaVendaItICMS.Value;
                       ICMS.vICMS   := fdmvendas.TNotaVendaItVALICMS.Value;
                       ICMS.modBCST := dbisMargemValorAgregado;
                       ICMS.pMVAST  := 0;
                       ICMS.pRedBCST:= 0;
                       ICMS.vBCST   := fdmvendas.TNotaVendaItBASEICMSST.Value;
                       ICMS.pICMSST := fdmvendas.TNotaVendaItICMSST.value;
                       ICMS.vICMSST := fdmvendas.TNotaVendaItVALICMSST.Value;
                       ICMS.pRedBC  := 0;
                     end;
                   end;

                  with IPI do
                   begin
                      if FDMVendas.TNotaVendaItVALIPI.Value > 0 then
                      begin
                         CST      := ipi01 ;
                         clEnq    := '';
                         CNPJProd := '';
                         cSelo    := '';
                         qSelo    := 0;
                         cEnq     := '';

                         vBC    := 0;
                         qUnid  := 0;
                         vUnid  := 0;
                         pIPI   := fdmvendas.TNotaVendaItIPI.Value;
                         vIPI   := fdmvendas.TNotaVendaItVALIPI.Value;
                      end
                      else
                      begin
                         CST      := ipi99 ;
                         clEnq    := '';
                         CNPJProd := '';
                         cSelo    := '';
                         qSelo    := 0;
                         cEnq     := '';

                         vBC    := 0;
                         qUnid  := 0;
                         vUnid  := 0;
                         pIPI   := 0;
                         vIPI   := 0;
                      end;
                   end;

                  with II do
                   begin
                     vBc      := 0;
                     vDespAdu := 0;
                     vII      := 0;
                     vIOF     := 0;
                   end;

                  with PIS do
                   begin
                     if FDMVendas.TNotaVendaItVALPIS.Value > 0 then
                     begin
                       CST      := pis01;
                       PIS.vBC  := fdmvendas.TNotaVendaItTOTCDESC.Value;
                       PIS.pPIS := FDM.TEmpresaPIS.Value;
                       PIS.vPIS := fdmvendas.TNotaVendaItVALPIS.Value;

                       PIS.qBCProd   := 0;
                       PIS.vAliqProd := 0;
                     end
                     else
                     begin
                       CST      := pis07;
                       PIS.vBC  := 0;
                       PIS.pPIS := 0;
                       PIS.vPIS := 0;

                       PIS.qBCProd   := 0;
                       PIS.vAliqProd := 0;
                     end;
                   end;

                  with PISST do
                   begin
                     vBc       := 0;
                     pPis      := 0;
                     qBCProd   := 0;
                     vAliqProd := 0;
                     vPIS      := 0;
                   end;

                  with COFINS do
                   begin
                     if FDMVendas.TNotaVendaItVALCOFINS.Value > 0 then
                     begin
                       CST            := cof01;
                       COFINS.vBC     := fdmvendas.TNotaVendaItTOTCDESC.Value;
                       COFINS.pCOFINS := FDM.TEmpresaCOFINS.Value;
                       COFINS.vCOFINS := fdmvendas.TNotaVendaItVALCOFINS.Value;

                       COFINS.qBCProd   := 0;
                       COFINS.vAliqProd := 0;
                     end
                     else
                     begin
                       CST            := cof07;
                       COFINS.vBC     := 0;
                       COFINS.pCOFINS := 0;
                       COFINS.vCOFINS := 0;

                       COFINS.qBCProd   := 0;
                       COFINS.vAliqProd := 0;
                     end;
                   end;

                  with COFINSST do
                   begin
                     vBC       := 0;
                     pCOFINS   := 0;
                     qBCProd   := 0;
                     vAliqProd := 0;
                     vCOFINS   := 0;
                   end;
      //Grupo para serviços
      {            with ISSQN do
                   begin
                     vBC       := 0;
                     vAliq     := 0;
                     vISSQN    := 0;
                     cMunFG    := 0;
                     cListServ := 0; // Preencha este campo usando a tabela disponível
                                     // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
                   end;}
                end;
             end ;
             fdmvendas.TNotaVendaIt.Next;
           end;

          Total.ICMSTot.vBC     := fdmvendas.TNotaVendaBASEICMS.Value;
          Total.ICMSTot.vICMS   := fdmvendas.TNotaVendaTOTICMS.Value;
          Total.ICMSTot.vBCST   := fdmvendas.TNotaVendaBASESUBTRIB.value;
          Total.ICMSTot.vST     := fdmvendas.TNotaVendaTOTICMSST.value;
          Total.ICMSTot.vProd   := fdmvendas.TNotaVendaTOTPROD.value;
          Total.ICMSTot.vFrete  := fdmvendas.TNotaVendaFRETE.value;
          Total.ICMSTot.vSeg    := fdmvendas.TNotaVendaSEGURO.value;
          Total.ICMSTot.vDesc   := fdmvendas.TNotaVendaDESCONTO.value;
          Total.ICMSTot.vII     := 0;
          Total.ICMSTot.vIPI    := fdmvendas.TNotaVendaTOTIPI.value;
          Total.ICMSTot.vPIS    := fdmvendas.TNotaVendatotalpis.value;
          Total.ICMSTot.vCOFINS := fdmvendas.TNotaVendatotalcofins.value;
          Total.ICMSTot.vOutro  := fdmvendas.TNotaVendaDESPESA.value;
          Total.ICMSTot.vNF     := fdmvendas.TNotaVendaTOTNOTA.value;

          Total.ISSQNtot.vServ   := 0;
          Total.ISSQNTot.vBC     := 0;
          Total.ISSQNTot.vISS    := 0;
          Total.ISSQNTot.vPIS    := 0;
          Total.ISSQNTot.vCOFINS := 0;

          Total.retTrib.vRetPIS    := 0;
          Total.retTrib.vRetCOFINS := 0;
          Total.retTrib.vRetCSLL   := 0;
          Total.retTrib.vBCIRRF    := 0;
          Total.retTrib.vIRRF      := 0;
          Total.retTrib.vBCRetPrev := 0;
          Total.retTrib.vRetPrev   := 0;

          if fdmvendas.TNotaVendaTIPOFRETE.value = 'P' then
            Transp.modFrete := mfContaEmitente
          else
            Transp.modFrete := mfContaDestinatario;

          fdmfornec.TTransp.Close;
          fdmfornec.TTransp.Params.ParamByName('CODIGO').asinteger := fdmvendas.TNotaVendaCODTRANS.Value;
          fdmfornec.TTransp.Open;


          Transp.Transporta.xNome    := fdmfornec.TTranspNOME.Value;
          if fdmfornec.TTranspPESSOA.Value = 'JURIDICA' then
          begin
            Transp.Transporta.CNPJCPF  := fdmfornec.TTranspCNPJ.Value;
            Transp.Transporta.IE       := fdmfornec.TTranspINSCEST.Value;
          end
          else
          begin
            Transp.Transporta.CNPJCPF  := fdmfornec.TTranspCPF.Value;
            Transp.Transporta.IE       := '';
          end;

          Transp.Transporta.xEnder   := fdmfornec.TTranspENDERECO.Value;
          Transp.Transporta.xMun     := fdmfornec.TTranspCIDADE.Value;
          Transp.Transporta.UF       := fdmfornec.TTranspUF.Value;

          Transp.retTransp.vServ    := 0;
          Transp.retTransp.vBCRet   := 0;
          Transp.retTransp.pICMSRet := 0;
          Transp.retTransp.vICMSRet := 0;
          Transp.retTransp.CFOP     := '';
          Transp.retTransp.cMunFG   := 0;

          if fdmvendas.TNotaVendaPLACA.Value <> '' then
          begin
            Transp.veicTransp.placa := sonumeros(fdmvendas.TNotaVendaPLACA.Value);
          end
          else
          begin
            Transp.veicTransp.placa := sonumeros(fdmfornec.TTranspplaca.value);
          end;

          Transp.veicTransp.UF    := fdmfornec.TTranspufplaca.value;
          Transp.veicTransp.RNTC  := '';
    //Dados do Reboque
    {      with Transp.Reboque.Add do
           begin
             placa := '';
             UF    := '';
             RNTC  := '';
           end;}

          with Transp.Vol.Add do
           begin
             qVol  := StrToIntDef(fdmvendas.TNotaVendaVOLUME.Value,1);
             esp   := fdmvendas.TNotaVendaESPECIE.Value;
             marca := '';
             nVol  := '';
             pesoL := fdmvendas.TNotaVendaPESOLIQ.Value;
             pesoB := fdmvendas.TNotaVendaPESO.Value;

             //Lacres do volume. Pode ser adicionado vários
             //Lacres.Add.nLacre := '';
           end;

          fdmvendas.TNotaVendaDup.First;
          while not fdmvendas.TNotaVendaDup.eof do
          begin
            //Cobr.Fat.nFat  := fdmvendas.TNotaVendaDupNUMDUP.Value;
            Cobr.Fat.nFat  := inttostr(fdmvendas.TNotaVendaCODIGO.Value) + '-' + inttostr(fdmvendas.TNotaVendaDupPARCELA.Value);
            Cobr.Fat.vOrig := Arredondar(fdmvendas.TNotaVendaDupVALOR.Value,2) ;
            Cobr.Fat.vDesc := fdmvendas.TNotaVendaDupDESCONTO.Value ;
            Cobr.Fat.vLiq  := Arredondar( fdmvendas.TNotaVendaDupVALOR.Value - fdmvendas.TNotaVendaDupDESCONTO.Value,2) ;

            with Cobr.Dup.Add do
             begin
               //nDup  := fdmvendas.TNotaVendaDupNUMDUP.Value;
               nDup  := inttostr(fdmvendas.TNotaVendaCODIGO.Value) + '-' + inttostr(fdmvendas.TNotaVendaDupPARCELA.Value);
               dVenc := fdmvendas.TNotaVendaDupVENCIMENTO.Value;
               vDup  := Arredondar(fdmvendas.TNotaVendaDupVALOR.Value,2);
             end;
            fdmvendas.TNotaVendaDup.Next;
          end;


          fdmvendas.TNotaVendaDADOSADICIONAIS.Value := fdmvendas.TNotaVendaDADOSADICIONAIS.Value + #13 + 'ESPELHO: '+inttostr(fdmvendas.TNotaVendaCODIGO.Value);
          fdmvendas.TNotaVendaDADOSADICIONAIS.Value := fdmvendas.TNotaVendaDADOSADICIONAIS.Value + #13 + 'PEDIDO: '+inttostr(fdmvendas.TNotaVendaPEDIDO.Value);
          InfAdic.infCpl     :=  fdmvendas.TNotaVendaDADOSADICIONAIS.Value;
          //InfAdic.infAdFisco :=  '';

          {with InfAdic.obsCont.Add do
           begin
             xCampo := ' ';
             xTexto := ' ';
           end;

          with InfAdic.obsFisco.Add do
           begin
             xCampo := ' ';
             xTexto := ' ';
           end;       }
    //Processo referenciado
    {     with InfAdic.procRef.Add do
           begin
             nProc := '';
             indProc := ipSEFAZ;
           end;                 }

          exporta.UFembarq   := '';;
          exporta.xLocEmbarq := '';

          compra.xNEmp := '';
          compra.xPed  := '';
          compra.xCont := '';
       end;


        //ACBrNFe1.Configuracoes.Certificados.
        //ACBrNFe1.NotasFiscais.GerarNFe;
        try
          try
            if contingencia then
            begin
              ACBrNFe1.WebServices.EnviarDPEC.Executar;
              //ShowMessage(DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC));
              //ShowMessage(ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC);
              fdmvendas.TNotaVendaNUMDPEC.Value := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC;
              fdmvendas.TNotaVendaDATACONTINGENCIA.value := ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC;
              fdmvendas.TNotaVendaHORACONTINGENCIA.value := ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC;
            end
            else
            begin
              ACBrNFe1.Enviar(strtoint(vNumLote));
            end;
            //ShowMessage(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt);
            //ShowMessage(ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec);
            fdmvendas.TNotaVendaSITUACAO.Value := 'TRANSMITIDO';
            if (fdmvendas.TNotaVendaDup.RecordCount = 1) and (fdmvendas.TNotaVendaDupVENCIMENTO.AsDateTime = now)then
            begin
              FDMVendas.TNotaVendaAVISTA.value := 'S';
            end
            else
            begin
              FDMVendas.TNotaVendaAVISTA.value := 'N';
            end;
            //ShowMessage(ACBrNFe1.WebServices.Retorno.NFeRetorno.xMotivo
            if contingencia then
            begin
              fdmvendas.TNotaVendaRETORNO.Value := ACBrNFe1.WebServices.EnviarDPEC.xMotivo;
              fdmvendas.TNotaVendaCHAVE.Value := ACBrNFe1.WebServices.EnviarDPEC.NFeChave;
              fdmvendas.TNotaVendaCSTAT.Value := inttostr(ACBrNFe1.WebServices.EnviarDPEC.cStat);
              fdmvendas.TNotaVendaDATAHOMOLOG.Value := ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC;
              fdmvendas.TNotaVendaPROTOCOLO.Value := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC+' '+DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
              showmessage(ACBrNFe1.WebServices.EnviarDPEC.xMotivo);
            end
            else
            begin
              fdmvendas.TNotaVendaRETORNO.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo;
              fdmvendas.TNotaVendaCHAVE.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
//              fdmvendas.TNotaVendaDIGVAL.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal;
              fdmvendas.TNotaVendaCSTAT.Value := inttostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat);
              fdmvendas.TNotaVendaDATAHOMOLOG.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto;
              fdmvendas.TNotaVendaPROTOCOLO.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
              showmessage(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo);
              if (FDM.TConfigENVIAREMAILAUTO.Value = 'S') and (fdmcliente.TClienteEMAIL.Value <> '') then
              begin
                try
                  Application.CreateForm(TFEMail,FEMail);
                  FEMail.nfe := true;
                  FEMail.destino := fdmcliente.TClienteEMAIL.Value;
                  if FilesExists(ExtractFilePath(Application.ExeName)+'nfe/'+fdmvendas.TNotaVendaCHAVE.Value+'-nfe.xml') then
                    FEMail.arquivo := ExtractFilePath(Application.ExeName)+'nfe/'+fdmvendas.TNotaVendaCHAVE.Value+'-nfe.xml';
                    FEMail.BtOk.Click;
                finally
                  FEMail.Free;
                  showmessage('O xml foi enviado automaticamente para o seguinte endereço: '+fdmcliente.TClienteEMAIL.Value)
                end;
              end;
            end;
          except
              on E :Exception do begin
                gravalogex(e,'nfelog');
                MessageDlg(E.Message, mtError, [mbOk], 0);
                fdmvendas.TNotaVendaRETORNO.Value := e.Message;
                if contingencia then
                begin
                  fdmvendas.TNotaVendaCHAVE.Value := ACBrNFe1.WebServices.EnviarDPEC.NFeChave;
                  if ((ACBrNFe1.WebServices.EnviarDPEC.cStat = 104) or
                     (ACBrNFe1.WebServices.EnviarDPEC.cStat = 105) or
                     (ACBrNFe1.WebServices.EnviarDPEC.cStat = 106)) then
                  begin
//                    fdmvendas.TNotaVendaSITUACAO.Value := 'TRANSMITIDO';
                    fdmvendas.TNotaVendaRETORNO.Value := ACBrNFe1.WebServices.EnviarDPEC.xMotivo;
                    fdmvendas.TNotaVendaCHAVE.Value := ACBrNFe1.WebServices.EnviarDPEC.NFeChave;
                    fdmvendas.TNotaVendaCSTAT.Value := inttostr(ACBrNFe1.WebServices.EnviarDPEC.cStat);
                    fdmvendas.TNotaVendaDATAHOMOLOG.Value := ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC;
                    fdmvendas.TNotaVendaPROTOCOLO.Value := ACBrNFe1.WebServices.EnviarDPEC.nRegDPEC+' '+DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
                  end;
                end
                else
                begin
                  if (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Count > 0) then
                    fdmvendas.TNotaVendaCHAVE.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
                  if ((ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat = 104) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat = 105) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat = 106)) then
                  begin
                    fdmvendas.TNotaVendaSITUACAO.Value := 'TRANSMITIDO';
                    fdmvendas.TNotaVendaRETORNO.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo;
                    fdmvendas.TNotaVendaCHAVE.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
//                    fdmvendas.\TNotaVendaDIGVAL.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal;
                    fdmvendas.TNotaVendaCSTAT.Value := inttostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat);
                    fdmvendas.TNotaVendaDATAHOMOLOG.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto;
                    fdmvendas.TNotaVendaPROTOCOLO.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
                  end;
                end;
              end;
           end;
        finally
          fdmvendas.TNotaVenda.Post;
          fdmvendas.TNotaVenda.ApplyUpdates(0);
          ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
        end;

end;

procedure gerarxml(ACBrNFe1 : TACBrNFe);
var
  ok : boolean;
  vNumLote : String;
begin
      vNumLote := '1';

      ACBrNFe1.NotasFiscais.Clear;
      with ACBrNFe1.NotasFiscais.Add.NFe do
       begin
         Ide.cNF       := fdmvendas.TNotaVendaCODIGO.Value; //Caso não seja preenchido será gerado um número aleatório pelo componente
         Ide.natOp     := fdmvendas.TNotaVendaDESCOPERACAO.Value;//'VENDA PRODUCAO DO ESTAB.';

         fdmvendas.TNotaVendaDup.First;
         if ((fdmvendas.TNotaVendaDupVENCIMENTO.AsDateTime = date) and (fdmvendas.TNotaVendaDup.recordcount = 1)) or not (fdmvendas.TNotaVendaDup.recordcount > 0) then
         begin
           Ide.indPag    := ipVista;
         end
         else
         begin
          Ide.indPag    := ipPrazo;
         end;

         Ide.modelo    := 55;
         Ide.serie     := StrToIntDef(fdm.TEmpresaSERIE.Value,1);
         Ide.nNF       := fdmvendas.TNotaVendaCODIGO.Value;
         Ide.dEmi      := fdmvendas.TNotaVendaDATANFE.Value;
         Ide.dSaiEnt   := fdmvendas.TNotaVendaDTENTREGA.Value;
         Ide.hSaiEnt   := fdmvendas.TNotaVendaHORAENTREGA.Value; //-- NFe 2.0
         if fdmvendas.TNotaVendaTIPONOTA.Value = 'VENDA' then
         begin
           Ide.tpNF      := tnSaida;
         end
         else
         begin
          Ide.tpNF      := tnEntrada;
         end;

         Ide.tpEmis    := teNormal;

         if fdm.TEmpresaTIPOAMB.Value = 2 then
         begin
           Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
         end
         else
         begin
           Ide.tpAmb     := taProducao;
         end;

         Ide.verProc   := '1.0.0.0'; //Versão do seu sistema
         Ide.cUF       := fdm.TEmpresaCODESTADO.value;{NotaUtil.UFtoCUF(fdm.TEmpresaUF.Value); -- NFe 2.0}
         Ide.cMunFG    := strtoint(inttostr(fdm.TEmpresaCODESTADO.value)+inttostr(fdm.TEmpresaCODMUNIC.value));
         Ide.finNFe    := fnNormal;

    //Para NFe referenciada use os campos abaixo
    {     with Ide.NFref.Add do
          begin
            refNFe       := ''; //NFe Eletronica

            RefNF.cUF    := 0;  // |
            RefNF.AAMM   := ''; // |
            RefNF.CNPJ   := ''; // |
            RefNF.modelo := 1;  // |- NFe Modelo 1/1A
            RefNF.serie  := 1;  // |
            RefNF.nNF    := 0;  // |

            RefNFP.cUF     := 0;  // |
            RefNFP.AAMM    := ''; // |
            RefNFP.CNPJCPF := ''; // |
            RefNFP.IE      := ''; // |- NF produtor Rural
            RefNFP.modelo  := ''; // |
            RefNFP.serie   := 1;  // |
            RefNFP.nNF     := 0;  // |

            RefECF.modelo  := ECFModRef2B; // |
            RefECF.nECF    := '';          // |- Cupom Fiscal
            RefECF.nCOO    := '';          // |
          end;
    }
          Emit.CNPJCPF           := fdm.TEmpresaCNPJ.value;
          Emit.IE                := fdm.TEmpresaINSCEST.value;
          Emit.xNome             := fdm.TEmpresaRAZAOSOCIAL.value;
          Emit.xFant             := fdm.TEmpresaNOMEFANTA.value;

          Emit.EnderEmit.fone    := fdm.TEmpresaFONE1.value;
          Emit.EnderEmit.CEP     := StrToInt(SoNumeros(fdm.TEmpresaCEP.value));
          Emit.EnderEmit.xLgr    := fdm.TEmpresaENDERECO.value;
          Emit.EnderEmit.nro     := fdm.TEmpresaNUMERO.value;
          Emit.EnderEmit.xCpl    := fdm.TEmpresaCOMPLEMENTO.value;
          Emit.EnderEmit.xBairro := fdm.TEmpresaBAIRRO.value;
          Emit.EnderEmit.cMun    := strtoint(inttostr(fdm.TEmpresaCODESTADO.Value)+Zeros(inttostr(fdm.TEmpresaCODMUNIC.value),5));
          Emit.EnderEmit.xMun    := fdm.TEmpresaCIDADE.value;
          Emit.EnderEmit.UF      := fdm.TEmpresaUF.value;
          Emit.enderEmit.cPais   := 1058;
          Emit.enderEmit.xPais   := 'BRASIL';

          if fdm.TEmpresaINSCESTST.Value <> 'ISENTO' then
          begin
            Emit.IEST              := fdm.TEmpresaINSCESTST.Value;
          end
          else
          begin
            Emit.IEST              := '';
          end;


          Emit.IM                := ''; // Preencher no caso de existir serviços na nota
          Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se é permitido
                                        // a inclusão de serviços na NFe
          if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'SIMPLES' then
          begin
            Emit.CRT               := crtSimplesNacional; //-- NFe 2.0
          end
          else if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'LUCRO PRESUMIDO' then
          begin
            Emit.CRT               := crtRegimeNormal; //-- NFe 2.0
          end
          else if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'LUCRO REAL' then
          begin
            Emit.CRT               := crtRegimeNormal; //-- NFe 2.0
          end;

    //Para NFe Avulsa preencha os campos abaixo
    {      Avulsa.CNPJ    := '';
          Avulsa.xOrgao  := '';
          Avulsa.matr    := '';
          Avulsa.xAgente := '';
          Avulsa.fone    := '';
          Avulsa.UF      := '';
          Avulsa.nDAR    := '';
          Avulsa.dEmi    := now;
          Avulsa.vDAR    := 0;
          Avulsa.repEmi  := '';
          Avulsa.dPag    := now;             }
          fdmcliente.TCliente.Close;
          fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmvendas.TNotaVendaCODCLI.Value;
          fdmcliente.TCliente.Open;

          if fdmcliente.TClientePESSOA.Value = 'JURIDICA' then
          begin
            Dest.CNPJCPF           := fdmcliente.TClienteCNPJ.value;
            Dest.IE                := fdmcliente.TClienteINSCEST.value;
          end
          else
          begin
            Dest.CNPJCPF           := fdmcliente.TClienteCPF.value;
            Dest.IE                := '';
          end;

          Dest.ISUF              := '';
          Dest.xNome             := copy(fdmcliente.TClienteNOME.value,1,60);

          Dest.EnderDest.Fone    := fdmcliente.TClienteFONE.value;
          Dest.EnderDest.CEP     := strtoint(sonumeros(fdmcliente.TClienteCEP.value));
          Dest.EnderDest.xLgr    := fdmcliente.TClienteENDERECO.value;
          Dest.EnderDest.nro     := fdmcliente.TClienteNUMERO.value;
          Dest.EnderDest.xCpl    := copy(fdmcliente.TClienteCOMPLEMENTO.Value,1,60);
          Dest.EnderDest.xBairro := fdmcliente.TClienteBAIRRO.value;
          Dest.EnderDest.cMun    := strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ Zeros(inttostr(fdmcliente.TClienteCODMUNIC.value),5));
          Dest.EnderDest.xMun    := fdmcliente.TClienteCIDADE.value;
          Dest.EnderDest.UF      := fdmcliente.TClienteUF.value;
          Dest.EnderDest.cPais   := 1058;
          Dest.EnderDest.xPais   := 'BRASIL';

    //Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
    {      Retirada.CNPJCPF := '';
          Retirada.xLgr    := '';
          Retirada.nro     := '';
          Retirada.xCpl    := '';
          Retirada.xBairro := '';
          Retirada.cMun    := 0;
          Retirada.xMun    := '';
          Retirada.UF      := '';}

    //Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
    {      Entrega.CNPJCPF := '';
          Entrega.xLgr    := '';
          Entrega.nro     := '';
          Entrega.xCpl    := '';
          Entrega.xBairro := '';
          Entrega.cMun    := 0;
          Entrega.xMun    := '';
          Entrega.UF      := '';}

    //Adicionando Produtos

           fdmvendas.TNotaVendaIt.First;
           while not fdmvendas.TNotaVendaIt.eof do
           begin
             with Det.Add do
             begin
               Prod.nItem    := fdmvendas.TNotaVendaIt.RecNo; // Número sequencial, para cada item deve ser incrementado
               Prod.cProd    := inttostr(fdmvendas.TNotaVendaItCODPROD.Value);
               Prod.cEAN     := '';
               Prod.xProd    := fdmvendas.TNotaVendaItNOMEPROD.Value;
               Prod.NCM      := fdmvendas.TNotaVendaItNCM.value; // Tabela NCM disponível em
               Prod.EXTIPI   := '';
               Prod.CFOP     := SoNumeros(fdmvendas.TNotaVendaItCFOP.value);
               Prod.uCom     := fdmvendas.TNotaVendaItUNIDADE.value;
               Prod.qCom     := fdmvendas.TNotaVendaItQTDEBAIXADA.Value;
               Prod.vUnCom   := fdmvendas.TNotaVendaItVLRUNIT.Value;
               Prod.vProd    := fdmvendas.TNotaVendaItTOTCDESC.Value;

               Prod.cEANTrib  := '';
               Prod.uTrib     := fdmvendas.TNotaVendaItUNIDADE.value;
               Prod.qTrib     := fdmvendas.TNotaVendaItQTDEBAIXADA.Value;
               Prod.vUnTrib   := fdmvendas.TNotaVendaItVLRUNIT.Value;

               Prod.vFrete    := 0;
               Prod.vSeg      := 0;
               Prod.vDesc     := 0;
    //           Prod.vDesc     := fdmvendas.TNotaVendaItDESCONTO.Value;

               infAdProd      := '';//'Informação Adicional do Produto';

      //Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
      {         with Prod.DI.Add do
                begin
                  nDi         := '';
                  dDi         := now;
                  xLocDesemb  := '';
                  UFDesemb    := '';
                  dDesemb     := now;
                  cExportador := '';

                  with adi.Add do
                   begin
                     nAdicao     := 1;
                     nSeqAdi     := 1;
                     cFabricante := '';
                     vDescDI     := 0;
                   end;
                end;
      }
      //Campos para venda de veículos novos
      {         with Prod.veicProd do
                begin
                  tpOP    := toVendaConcessionaria;
                  chassi  := '';
                  cCor    := '';
                  xCor    := '';
                  pot     := '';
                  Cilin   := '';
                  pesoL   := '';
                  pesoB   := '';
                  nSerie  := '';
                  tpComb  := '';
                  nMotor  := '';
                  CMT     := '';
                  dist    := '';
                  RENAVAM := '';
                  anoMod  := 0;
                  anoFab  := 0;
                  tpPint  := '';
                  tpVeic  := 0;
                  espVeic := 0;
                  VIN     := '';
                  condVeic := cvAcabado;
                  cMod    := '';
                end;
      }
      //Campos específicos para venda de medicamentos
             {  if fdmvendas.TNotaVendaItRASTREAR.Value = 'S' then
               begin
                 with Prod.med.Add do
                  begin
                    nLote := fdmvendas.TNotaVendaItLOTE.Value;
                    qLote := fdmvendas.TNotaVendaItQTDEBAIXADA.Value;
                    dFab  := fdmvendas.TNotaVendaItFABRICACAO.Value;
                    dVal  := fdmvendas.TNotaVendaItVALIDADE.Value ;
                    vPMC  := 0 ;
                  end;
               end;}
      //Campos específicos para venda de armamento
      {         with Prod.arma.Add do
                begin
                  nSerie := 0;
                  tpArma := taUsoPermitido ;
                  nCano  := 0 ;
                  descr  := '' ;
                end;      }
      //Campos específicos para venda de combustível(distribuidoras)
      {         with Prod.comb do
                begin
                  cProdANP := 0;
                  CODIF    := '';
                  qTemp    := 0;

                  CIDE.qBCprod   := 0 ;
                  CIDE.vAliqProd := 0 ;
                  CIDE.vCIDE     := 0 ;

                  ICMS.vBCICMS   := 0 ;
                  ICMS.vICMS     := 0 ;
                  ICMS.vBCICMSST := 0 ;
                  ICMS.vICMSST   := 0 ;

                  ICMSInter.vBCICMSSTDest := 0 ;
                  ICMSInter.vICMSSTDest   := 0 ;

                  ICMSCons.vBCICMSSTCons := 0 ;
                  ICMSCons.vICMSSTCons   := 0 ;
                  ICMSCons.UFcons        := '' ;
                end;}

               with Imposto do
                begin

                  with ICMS do
                   begin
                     if fdm.TEmpresaREGIMETRIBUTARIO.Value = 'SIMPLES' then
                     begin

                       if fdmvendas.TNotaVendaItORIGEM.Value = '0' then
                         orig    := oeNacional
                       else if fdmvendas.TNotaVendaItORIGEM.Value = '1' then
                         orig    := oeEstrangeiraImportacaoDireta
                       else if fdmvendas.TNotaVendaItORIGEM.Value = '2' then
                         orig    := oeEstrangeiraAdquiridaBrasil;

                       if fdmvendas.TNotaVendaGERACREDICMS.Value = 'S' then
                       begin
                         CSOSN        := csosn101;
                       end
                       else
                       begin
                         CSOSN        := csosn102;
                       end;

{                       if (fdmvendas.TNotaVendaItCST.Value = '00') or (fdmvendas.TNotaVendaItCST.Value = '20') then
                         CSOSN        := csosn101
                       else if (fdmvendas.TNotaVendaItCST.Value = '40') or (fdmvendas.TNotaVendaItCST.Value = '41') or (fdmvendas.TNotaVendaItCST.Value = '50') or (fdmvendas.TNotaVendaItCST.Value = '51') then
                         CSOSN        := csosn102
                       else if (fdmvendas.TNotaVendaItCST.Value = '10') or (fdmvendas.TNotaVendaItCST.Value = '70') then
                         CSOSN        := csosn201
                       else if fdmvendas.TNotaVendaItCST.Value = '30' then
                         CSOSN        := csosn202
                       else if fdmvendas.TNotaVendaItCST.Value = '60' then
                         CSOSN        := csosn500
                       else if fdmvendas.TNotaVendaItCST.Value = '90' then
                         CSOSN        := csosn900;}
                     end
                     else
                     begin
                       if fdmvendas.TNotaVendaItCST.Value = '00' then
                         CST          := cst00
                       else if fdmvendas.TNotaVendaItCST.Value = '10' then
                         CST          := cst10
                       else if fdmvendas.TNotaVendaItCST.Value = '20' then
                         CST          := cst20
                       else if fdmvendas.TNotaVendaItCST.Value = '30' then
                         CST          := cst30
                       else if fdmvendas.TNotaVendaItCST.Value = '40' then
                         CST          := cst40
                       else if fdmvendas.TNotaVendaItCST.Value = '41' then
                         CST          := cst41
                       else if fdmvendas.TNotaVendaItCST.Value = '45' then
                         CST          := cst45
                       else if fdmvendas.TNotaVendaItCST.Value = '50' then
                         CST          := cst50
                       else if fdmvendas.TNotaVendaItCST.Value = '51' then
                         CST          := cst51
                       else if fdmvendas.TNotaVendaItCST.Value = '60' then
                         CST          := cst60
                       else if fdmvendas.TNotaVendaItCST.Value = '70' then
                         CST          := cst70
                       else if fdmvendas.TNotaVendaItCST.Value = '80' then
                         CST          := cst80
                       else if fdmvendas.TNotaVendaItCST.Value = '81' then
                         CST          := cst81
                       else if fdmvendas.TNotaVendaItCST.Value = '90' then
                         CST          := cst90;

                       if fdmvendas.TNotaVendaItORIGEM.Value = '0' then
                         ICMS.orig    := oeNacional
                       else if fdmvendas.TNotaVendaItORIGEM.Value = '1' then
                         ICMS.orig    := oeEstrangeiraImportacaoDireta
                       else if fdmvendas.TNotaVendaItORIGEM.Value = '2' then
                         ICMS.orig    := oeEstrangeiraAdquiridaBrasil;

                       ICMS.modBC   := dbiValorOperacao;
                       ICMS.vBC     := fdmvendas.TNotaVendaItBASEICMS.Value;
                       ICMS.pICMS   := fdmvendas.TNotaVendaItICMS.Value;
                       ICMS.vICMS   := fdmvendas.TNotaVendaItVALICMS.Value;
                       ICMS.modBCST := dbisMargemValorAgregado;
                       ICMS.pMVAST  := 0;
                       ICMS.pRedBCST:= 0;
                       ICMS.vBCST   := fdmvendas.TNotaVendaItBASEICMSST.Value;
                       ICMS.pICMSST := fdmvendas.TNotaVendaItICMSST.value;
                       ICMS.vICMSST := fdmvendas.TNotaVendaItVALICMSST.Value;
                       ICMS.pRedBC  := 0;
                     end;
                   end;

                  with IPI do
                   begin
                      if FDMVendas.TNotaVendaItVALIPI.Value > 0 then
                      begin
                         CST      := ipi01 ;
                         clEnq    := '';
                         CNPJProd := '';
                         cSelo    := '';
                         qSelo    := 0;
                         cEnq     := '';

                         vBC    := 0;
                         qUnid  := 0;
                         vUnid  := 0;
                         pIPI   := fdmvendas.TNotaVendaItIPI.Value;
                         vIPI   := fdmvendas.TNotaVendaItVALIPI.Value;
                      end
                      else
                      begin
                         CST      := ipi99 ;
                         clEnq    := '';
                         CNPJProd := '';
                         cSelo    := '';
                         qSelo    := 0;
                         cEnq     := '';

                         vBC    := 0;
                         qUnid  := 0;
                         vUnid  := 0;
                         pIPI   := 0;
                         vIPI   := 0;
                      end;
                   end;

                  with II do
                   begin
                     vBc      := 0;
                     vDespAdu := 0;
                     vII      := 0;
                     vIOF     := 0;
                   end;

                  with PIS do
                   begin
                     if FDMVendas.TNotaVendaItVALPIS.Value > 0 then
                     begin
                       CST      := pis01;
                       PIS.vBC  := fdmvendas.TNotaVendaItTOTCDESC.Value;
                       PIS.pPIS := FDM.TEmpresaPIS.Value;
                       PIS.vPIS := fdmvendas.TNotaVendaItVALPIS.Value;

                       PIS.qBCProd   := 0;
                       PIS.vAliqProd := 0;
                     end
                     else
                     begin
                       CST      := pis07;
                       PIS.vBC  := 0;
                       PIS.pPIS := 0;
                       PIS.vPIS := 0;

                       PIS.qBCProd   := 0;
                       PIS.vAliqProd := 0;
                     end;
                   end;

                  with PISST do
                   begin
                     vBc       := 0;
                     pPis      := 0;
                     qBCProd   := 0;
                     vAliqProd := 0;
                     vPIS      := 0;
                   end;

                  with COFINS do
                   begin
                     if FDMVendas.TNotaVendaItVALCOFINS.Value > 0 then
                     begin
                       CST            := cof01;
                       COFINS.vBC     := fdmvendas.TNotaVendaItTOTCDESC.Value;
                       COFINS.pCOFINS := FDM.TEmpresaCOFINS.Value;
                       COFINS.vCOFINS := fdmvendas.TNotaVendaItVALCOFINS.Value;

                       COFINS.qBCProd   := 0;
                       COFINS.vAliqProd := 0;
                     end
                     else
                     begin
                       CST            := cof07;
                       COFINS.vBC     := 0;
                       COFINS.pCOFINS := 0;
                       COFINS.vCOFINS := 0;

                       COFINS.qBCProd   := 0;
                       COFINS.vAliqProd := 0;
                     end;
                   end;

                  with COFINSST do
                   begin
                     vBC       := 0;
                     pCOFINS   := 0;
                     qBCProd   := 0;
                     vAliqProd := 0;
                     vCOFINS   := 0;
                   end;
      //Grupo para serviços
      {            with ISSQN do
                   begin
                     vBC       := 0;
                     vAliq     := 0;
                     vISSQN    := 0;
                     cMunFG    := 0;
                     cListServ := 0; // Preencha este campo usando a tabela disponível
                                     // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
                   end;}
                end;
             end ;
             fdmvendas.TNotaVendaIt.Next;
           end;

          Total.ICMSTot.vBC     := fdmvendas.TNotaVendaBASEICMS.Value;
          Total.ICMSTot.vICMS   := fdmvendas.TNotaVendaTOTICMS.Value;
          Total.ICMSTot.vBCST   := fdmvendas.TNotaVendaBASESUBTRIB.value;
          Total.ICMSTot.vST     := fdmvendas.TNotaVendaTOTICMSST.value;
          Total.ICMSTot.vProd   := fdmvendas.TNotaVendaTOTPROD.value;
          Total.ICMSTot.vFrete  := fdmvendas.TNotaVendaFRETE.value;
          Total.ICMSTot.vSeg    := fdmvendas.TNotaVendaSEGURO.value;
          Total.ICMSTot.vDesc   := fdmvendas.TNotaVendaDESCONTO.value;
          Total.ICMSTot.vII     := 0;
          Total.ICMSTot.vIPI    := fdmvendas.TNotaVendaTOTIPI.value;
          Total.ICMSTot.vPIS    := fdmvendas.TNotaVendatotalpis.value;
          Total.ICMSTot.vCOFINS := fdmvendas.TNotaVendatotalcofins.value;
          Total.ICMSTot.vOutro  := fdmvendas.TNotaVendaDESPESA.value;
          Total.ICMSTot.vNF     := fdmvendas.TNotaVendaTOTNOTA.value;

          Total.ISSQNtot.vServ   := 0;
          Total.ISSQNTot.vBC     := 0;
          Total.ISSQNTot.vISS    := 0;
          Total.ISSQNTot.vPIS    := 0;
          Total.ISSQNTot.vCOFINS := 0;

          Total.retTrib.vRetPIS    := 0;
          Total.retTrib.vRetCOFINS := 0;
          Total.retTrib.vRetCSLL   := 0;
          Total.retTrib.vBCIRRF    := 0;
          Total.retTrib.vIRRF      := 0;
          Total.retTrib.vBCRetPrev := 0;
          Total.retTrib.vRetPrev   := 0;

          if fdmvendas.TNotaVendaTIPOFRETE.value = 'P' then
            Transp.modFrete := mfContaEmitente
          else
            Transp.modFrete := mfContaDestinatario;

          fdmfornec.TTransp.Close;
          fdmfornec.TTransp.Params.ParamByName('CODIGO').asinteger := fdmvendas.TNotaVendaCODTRANS.Value;
          fdmfornec.TTransp.Open;


          Transp.Transporta.xNome    := fdmfornec.TTranspNOME.Value;
          if fdmfornec.TTranspPESSOA.Value = 'JURIDICA' then
          begin
            Transp.Transporta.CNPJCPF  := fdmfornec.TTranspCNPJ.Value;
            Transp.Transporta.IE       := fdmfornec.TTranspINSCEST.Value;
          end
          else
          begin
            Transp.Transporta.CNPJCPF  := fdmfornec.TTranspCPF.Value;
            Transp.Transporta.IE       := '';
          end;

          Transp.Transporta.xEnder   := fdmfornec.TTranspENDERECO.Value;
          Transp.Transporta.xMun     := fdmfornec.TTranspCIDADE.Value;
          Transp.Transporta.UF       := fdmfornec.TTranspUF.Value;

          Transp.retTransp.vServ    := 0;
          Transp.retTransp.vBCRet   := 0;
          Transp.retTransp.pICMSRet := 0;
          Transp.retTransp.vICMSRet := 0;
          Transp.retTransp.CFOP     := '';
          Transp.retTransp.cMunFG   := 0;

          Transp.veicTransp.placa := fdmfornec.TTranspplaca.value;
          Transp.veicTransp.UF    := fdmfornec.TTranspufplaca.value;
          Transp.veicTransp.RNTC  := '';
    //Dados do Reboque
    {      with Transp.Reboque.Add do
           begin
             placa := '';
             UF    := '';
             RNTC  := '';
           end;}

          with Transp.Vol.Add do
           begin
             qVol  := StrToIntDef(fdmvendas.TNotaVendaVOLUME.Value,1);
             esp   := fdmvendas.TNotaVendaESPECIE.Value;
             marca := '';
             nVol  := '';
             pesoL := fdmvendas.TNotaVendaPESOLIQ.Value;
             pesoB := fdmvendas.TNotaVendaPESO.Value;

             //Lacres do volume. Pode ser adicionado vários
             //Lacres.Add.nLacre := '';
           end;

          fdmvendas.TNotaVendaDup.First;
          while not fdmvendas.TNotaVendaDup.eof do
          begin
            //Cobr.Fat.nFat  := fdmvendas.TNotaVendaDupNUMDUP.Value;
            Cobr.Fat.nFat  := inttostr(fdmvendas.TNotaVendaCODIGO.Value) + '-' + inttostr(fdmvendas.TNotaVendaDupPARCELA.Value);
            Cobr.Fat.vOrig := Arredondar(fdmvendas.TNotaVendaDupVALOR.Value,2) ;
            Cobr.Fat.vDesc := fdmvendas.TNotaVendaDupDESCONTO.Value ;
            Cobr.Fat.vLiq  := Arredondar( fdmvendas.TNotaVendaDupVALOR.Value - fdmvendas.TNotaVendaDupDESCONTO.Value,2) ;

            with Cobr.Dup.Add do
             begin
               //nDup  := fdmvendas.TNotaVendaDupNUMDUP.Value;
               nDup  := inttostr(fdmvendas.TNotaVendaCODIGO.Value) + '-' + inttostr(fdmvendas.TNotaVendaDupPARCELA.Value);
               dVenc := fdmvendas.TNotaVendaDupVENCIMENTO.Value;
               vDup  := Arredondar(fdmvendas.TNotaVendaDupVALOR.Value,2);
             end;
            fdmvendas.TNotaVendaDup.Next;
          end;

          InfAdic.infCpl     :=  fdmvendas.TNotaVendaDADOSADICIONAIS.Value;
          //InfAdic.infAdFisco :=  '';

          {with InfAdic.obsCont.Add do
           begin
             xCampo := ' ';
             xTexto := ' ';
           end;

          with InfAdic.obsFisco.Add do
           begin
             xCampo := ' ';
             xTexto := ' ';
           end;       }
    //Processo referenciado
    {     with InfAdic.procRef.Add do
           begin
             nProc := '';
             indProc := ipSEFAZ;
           end;                 }

          exporta.UFembarq   := '';;
          exporta.xLocEmbarq := '';

          compra.xNEmp := '';
          compra.xPed  := '';
          compra.xCont := '';
       end;
       ACBrNFe1.NotasFiscais.GerarNFe;
       ACBrNFe1.NotasFiscais.Items[0].SaveToFile;

end;


procedure cancelar(ACBrNFe1 : TACBrNFe);
var
    motivo : String;
    ok : boolean;
    sql : String;
begin
    ok := true;

    if not fdmvendas.TNotaVenda.RecordCount > 0 then
    begin
      showmessage('É necessário selecionar um espelho de nota!');
      abort;
    end;

    if not (fdmvendas.TNotaVendaSITUACAO.Value = 'TRANSMITIDO') then
    begin
      showmessage('O espelho precisa estar transmitido!');
      abort;
    end;

    if (FDMVendas.TNotaVendaCHAVE.Value = '') then
    begin
      showmessage('A nota esta sem chave!');
      abort;
    end;

    if (FDMVendas.TNotaVendaPROTOCOLO.Value = '') then
    begin
      showmessage('A nota esta sem protocolo!');
      abort;
    end;

    motivo := inputbox('E-Tech','Informe a justificativa(mínimo 15 caracteres):','');
    if (motivo = '') or (length(motivo) < 15) then
    begin
      showmessage('Motivo nulo ou inválido!');
    end
    else
    begin
      try
        try
          ACBrNFe1.WebServices.Cancelamento.NFeChave      := FDMVendas.TNotaVendaCHAVE.Value;
          ACBrNFe1.WebServices.Cancelamento.Protocolo     := FDMVendas.TNotaVendaPROTOCOLO.Value;
          ACBrNFe1.WebServices.Cancelamento.Justificativa := UpperCase(motivo);
          ACBrNFe1.WebServices.Cancelamento.Executar;
        except
          ok := false;
        end;
      finally
        if ok then
        begin
          FDMVendas.TNotaVenda.Edit;
          FDMVendas.TNotaVendaMOTIVOCANCEL.Value := UpperCase(motivo);
          FDMVendas.TNotaVendaSITUACAO.Value := 'CANCELADO';
          FDMVendas.TNotaVendaRETORNOCANCEL.Value := ACBrNFe1.WebServices.Cancelamento.xMotivo;
          FDMVendas.TNotaVendaDATACANC.Value := date;
          FDMVendas.TNotaVendaPROTOCOLOCANC.Value := ACBrNFe1.WebServices.Cancelamento.Protocolo;
          FDMVendas.TNotaVendaCSTATCANC.Value := inttostr(ACBrNFe1.WebServices.Cancelamento.cStat);
          FDMVendas.TNotaVenda.Post;
          FDMVendas.TNotaVenda.ApplyUpdates(0);

          if fdmvendas.TNotaVendaPEDIDO.Value > 0 then
          begin
            sql := sql + ' update pedvendait set pedvendait.QTDEPEND = isnull(pedvendait.QTDEPEND,0) + notavendait.QTDE, pedvendait.QTDEENTREGUE = isnull(pedvendait.QTDEENTREGUE,0) - notavendait.QTDE, ';
            sql := sql + ' pedvendait.TOTALPEND = round(isnull(pedvendait.TOTALPEND,0) + notavendait.TOTCDESC,2), pedvendait.TOTALPAGO = round(isnull(pedvendait.TOTALPAGO,0) - notavendait.TOTCDESC,2), QTDEFAT = 0 ';
            sql := sql + ' from pedvendait inner join notavendait on (pedvendait.codprod = notavendait.codprod) ';
            sql := sql + ' where notavendait.NOTA = '+IntToStr(FDMVendas.TNotaVendaCODIGO.Value)+' and notavendait.CODCLI = '+IntToStr(FDMVendas.TNotaVendaCODCLI.Value)+' AND pedvendait.PEDIDO = '+IntToStr(FDMVendas.TNotaVendaPEDIDO.Value)+';';

            sql := sql + ' update duplicvenda set NUMDOC = NUMDOCPED, ';
            sql := sql + ' NUMDUP = NUMDUPPED, ';
            sql := sql + ' TIPODUP = '+QuotedStr('P');
            sql := sql + ' where NUMDOC = '+inttostr(fdmvendas.TNotaVendaCODIGO.Value)+' and CODCLI = '+inttostr(fdmvendas.TNotaVendaCODCLI.Value)+';';

            sql := sql + ' UPDATE PEDVENDA SET SITUACAO = '+QuotedStr('EMITIDO')+' WHERE CODIGO = '+inttostr(FDMVendas.TNotaVendaPEDIDO.Value)+' AND CODCLI = '+inttostr(FDMVendas.TNotaVendaCODCLI.Value)+';';
          end
          else
          begin
            sql := sql + 'delete from duplicvenda where numdoc = '+inttostr(FDMVendas.TNotaVendacodigo.value)+' and CODCLI = '+inttostr(FDMVendas.TNotaVendaCODCLI.value)+';';
          end;
          ExecSQL(sql);

          if (fdm.TConfigCENTRODECUSTO.Value = 'S') and (fdm.TConfigOBRIGCENTROCUSTO.Value = 'S') then
          begin
            if fdm.TNatOpe.Locate('CODIGO',fdmvendas.TNotaVendaCODNATOPE.Value,[]) then
            begin
              if fdm.TNatOpeBAIXAEST.Value = 'S' then
              begin
                FDMVendas.SP_BaixaEstoque.Params.ParamByName('NOTA').AsInteger := FDMVendas.TNotaVendaCODIGO.Value;
                FDMVendas.SP_BaixaEstoque.Params.ParamByName('CODCLI').AsInteger := FDMVendas.TNotaVendaCODCLI.Value;
                FDMVendas.SP_BaixaEstoque.Params.ParamByName('NOMECLI').AsString := FDMVendas.TNotaVendaNOMECLI.Value;
                FDMVendas.SP_BaixaEstoque.Params.ParamByName('TIPO').AsString := 'E';
                FDMVendas.SP_BaixaEstoque.ExecuteMethod;
  {
                FDMVendas.SP_Reservado.Params.ParamByName('NOTA').AsInteger := FDMVendas.TNotaVendaCODIGO.Value;
                FDMVendas.SP_Reservado.Params.ParamByName('CODCLI').AsInteger := FDMVendas.TNotaVendaCODCLI.Value;
                FDMVendas.SP_Reservado.Params.ParamByName('NOMECLI').AsString := FDMVendas.TNotaVendaNOMECLI.Value;
                FDMVendas.SP_Reservado.Params.ParamByName('TIPO').AsString := 'E';
                FDMVendas.SP_Reservado.ExecuteMethod;}
              end
              else if fdm.TNatOpeESTORNAEST.Value = 'S' then
              begin
                FDMVendas.SP_BaixaEstoque.Params.ParamByName('NOTA').AsInteger := FDMVendas.TNotaVendaCODIGO.Value;
                FDMVendas.SP_BaixaEstoque.Params.ParamByName('CODCLI').AsInteger := FDMVendas.TNotaVendaCODCLI.Value;
                FDMVendas.SP_BaixaEstoque.Params.ParamByName('NOMECLI').AsString := FDMVendas.TNotaVendaNOMECLI.Value;
                FDMVendas.SP_BaixaEstoque.Params.ParamByName('TIPO').AsString := 'S';
                FDMVendas.SP_BaixaEstoque.ExecuteMethod;

  {              FDMVendas.SP_Reservado.Params.ParamByName('NOTA').AsInteger := FDMVendas.TNotaVendaCODIGO.Value;
                FDMVendas.SP_Reservado.Params.ParamByName('CODCLI').AsInteger := FDMVendas.TNotaVendaCODCLI.Value;
                FDMVendas.SP_Reservado.Params.ParamByName('NOMECLI').AsString := FDMVendas.TNotaVendaNOMECLI.Value;
                FDMVendas.SP_Reservado.Params.ParamByName('TIPO').AsString := 'S';
                FDMVendas.SP_Reservado.ExecuteMethod;}
              end
              else
                ShowMessage('ATENÇÃO! Não foi possível alterar o estoque, natureza de operação inválida!');
          end;
          end;

        end;
      end;

      //showmessage(UTF8Encode(ACBrNFe1.WebServices.Cancelamento.RetWS));
      showmessage(UTF8Encode(ACBrNFe1.WebServices.Cancelamento.xMotivo));
    end;
end;

procedure inutilizar(ACBrNFe1 : TACBrNFe; ninicial, nfinal, justificativa, ano, serie : String);
var
    retorno1, retorno2 : String;
begin
      ACBrNFe1.WebServices.Inutiliza(fdm.TEmpresaCNPJ.Value, justificativa, StrToInt(ano), StrToInt('01'), StrToInt(serie), StrToInt(ninicial), StrToInt(nfinal));
    retorno1 :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
    retorno2 :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetornoWS); //-- NFE 2.0

    fdmvendas.TInultNfe.Append;
    fdmvendas.TInultNfeCODIGO.Value := ultimo('inultnfe','CODIGO');
    fdmvendas.TInultNfeCODUSU.Value := usulogado;
    fdmvendas.TInultNfeINICIAL.Value := strtoint(ninicial);
    fdmvendas.TInultNfeFINAL.Value := strtoint(nfinal);
    fdmvendas.TInultNfeANO.Value := strtoint(ano);
    fdmvendas.TInultNfeJUSTIFICATIVA.Value := justificativa;
    fdmvendas.TInultNfeRETORNO.Value := retorno1;
    fdmvendas.TInultNfeDATA.Value := DateTimeToSQLTimeStamp(now);
    fdmvendas.TInultNfeSERIE.value := serie;
    fdmvendas.TInultNfeMODELO.value := '01';
    fdmvendas.TInultNfe.Post;

    fdmvendas.TInultNfe.ApplyUpdates(0);
end;


end.

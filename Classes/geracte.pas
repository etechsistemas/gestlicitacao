unit geracte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBGrids,  StdCtrls, XMLDoc,XMLIntf, ACBrCTe, math,
  Buttons, DBCtrls, Menus, ACBrNFeDANFEClass, ACBrNFeDANFERave,
  ACBrCTeDACTEClass, ACBrCTeDACTeQRClass,
  ACBrNFe,pcnConversao, ACBrUtil, pcnNFeW,SQLTimSt, pcnNFeRTXT, ACBrNFeUtil;


  procedure configuraComponente(ACBrCTe1 : TACBrCTe);
  procedure cancelar(ACBrCTe1 : TACBrCTe);
  procedure imprimircte();
  procedure inutilizar(ACBrCTe1 : TACBrCTe; ninicial, nfinal, justificativa, ano, serie : String);
  procedure gerar(ACBrCTe1 : TACBrCTe; contingencia : boolean);

implementation

uses DM, DMVendas, DMCliente, DMFornec, metodosServ, UBiblio, Principal,
  relatorio, Email, DMTransporte, RDanfeCTE;


procedure configuraComponente(ACBrCTe1 : TACBrCTe);
var
  ok : boolean;
begin
      ACBrCTe1.Configuracoes.WebServices.ProxyHost := fdm.TEmpresaHOST.Value;
      if fdm.TEmpresaPORTAPROX.Value > 0 then
        ACBrCTe1.Configuracoes.WebServices.ProxyPort := inttostr(fdm.TEmpresaPORTAPROX.Value)
      else
        ACBrCTe1.Configuracoes.WebServices.ProxyPort := '';
      ACBrCTe1.Configuracoes.WebServices.ProxyUser := fdm.TEmpresaUSUARIO.Value;
      ACBrCTe1.Configuracoes.WebServices.ProxyPass := fdm.TEmpresaSENHA.Value;

      ACBrCTe1.Configuracoes.WebServices.UF         := fdm.TEmpresaUF.Value;
      ACBrCTe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(ok,IntToStr(fdm.TEmpresaTIPOAMB.Value));
      ACBrCTe1.Configuracoes.WebServices.Visualizar := false;

      ACBrCTe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(ok,IntToStr(1));
      ACBrCTe1.Configuracoes.Geral.Salvar       := true;
      ACBrCTe1.Configuracoes.Geral.PathSalvar   := ExtractFilePath(Application.ExeName)+'/cte/';
      ACBrCTe1.Configuracoes.Geral.PathSchemas   := ExtractFilePath(Application.ExeName)+'Schemascte';
      ACBrCTe1.Configuracoes.Arquivos.PathCTe  := ExtractFilePath(Application.ExeName)+'/cte/';
      ACBrCTe1.Configuracoes.Arquivos.PathCan  := ExtractFilePath(Application.ExeName)+'/canceladacte/';
      ACBrCTe1.Configuracoes.Arquivos.PathInu  := ExtractFilePath(Application.ExeName)+'/inutilizadacte/';
      ACBrCTe1.Configuracoes.Arquivos.PathDPEC  := ExtractFilePath(Application.ExeName)+'/dpeccte/';
      ACBrCTe1.Configuracoes.Certificados.NumeroSerie := fdm.TEmpresaCERTIFICADO.Value;
end;

procedure imprimircte();
var
  textoobs : String;

begin
  FDMTransporte.TConhecNota.First;
  try
    Application.CreateForm(TFRDanfeCte,FRDanfeCte);

    FDM.TEmpresa.close;
    FDM.TEmpresa.Open;

//inicio dados do cabeçalho da dacte

    if fdm.TempresaLOGODANFE.Value <> '' then
    begin
      if FileExists(fdm.TempresaLOGODANFE.Value) then
      begin
        FRDanfeCte.QRImage1.Picture.LoadFromFile(fdm.TempresaLOGODANFE.Value);
        FRDanfeCte.QRImage1 := ProportionalHeight(FRDanfeCte.QRImage1,68);
      end
      else
      begin
        showmessage('A Logo não foi encontrada no seguinte caminho: '+fdm.TempresaLOGODANFE.Value);
      end;
    end;

    FRDanfeCte.QREndEmpresa.Caption := FDM.TEmpresaENDERECO.DisplayText+', '+FDM.TEmpresaNUMERO.DisplayText;

    if(FDMVendas.TNotaVendaAVISTA.value = 'S')then
      FRDanfeCte.QRFormaPag.caption := 'PAGO'
    else
      FRDanfeCte.QRFormaPag.caption := 'A PAGAR';

    FRDanfeCte.QRNatOpe.Caption := FDMTransporte.TConhecimentoCFOP.Value;
    FRDanfeCte.QRDescNatOpe.Caption := FDMTransporte.TConhecimentoDESCNATOPE.Value;

//fim dados do cabeçalho da dacte

//inicio dados remetente da dacte
    FDMCliente.TCliente.close;
    FDMCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMTransporte.TConhecimentoCODREMETENTE.Value;
    FDMCliente.TCliente.Open;

    FRDanfeCte.QROrigemPrest.Caption := FDMCliente.TClienteENDERECO.DisplayText+' - '+FDMCliente.TClienteUF.DisplayText;
    FRDanfeCte.QRCodRemet.Caption := FDMCliente.TClienteCODIGO.DisplayText;
    FRDanfeCte.QRNomeRemet.Caption := FDMCliente.TClienteNOME.DisplayText;
    FRDanfeCte.QREndRemet.Caption := FDMCliente.TClienteENDERECO.DisplayText;
    FRDanfeCte.QRBairroRemet.Caption := FDMCliente.TClienteBAIRRO.DisplayText;
    FRDanfeCte.QRCidadeRemet.Caption := FDMCliente.TClienteCIDADE.DisplayText;
    FRDanfeCte.QRUFRemet.Caption := FDMCliente.TClienteUF.DisplayText;
    FRDanfeCte.QRCEPRemet.Caption := FDMCliente.TClienteCEP.DisplayText;

    if FDMCliente.TClienteCNPJ.Value = '' then
    begin
      FRDanfeCte.QRCNPJRemet.Caption:= FDMCliente.TClienteCPF.DisplayText;
      FRDanfeCte.QRIERemet.Caption:= '';
    end
    Else
    begin
      FRDanfeCte.QRCNPJRemet.Caption := FDMCliente.TClienteCNPJ.DisplayText;
      FRDanfeCte.QRIERemet.Caption := FDMCliente.TClienteINSCEST.DisplayText;
    end;
//fim dados remetente da dacte

//inicio dados destinatario da dacte
    FDMCliente.TCliente.close;
    FDMCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMTransporte.TConhecimentoCODDESTINATARIO.Value;
    FDMCliente.TCliente.Open;

    FRDanfeCte.QRDestinoPrest.Caption := FDMCliente.TClienteENDERECO.DisplayText+' - '+FDMCliente.TClienteUF.DisplayText;
    FRDanfeCte.QRCodDest.Caption := FDMCliente.TClienteCODIGO.DisplayText;
    FRDanfeCte.QRNomeDest.Caption := FDMCliente.TClienteNOME.DisplayText;
    FRDanfeCte.QREndDest.Caption := FDMCliente.TClienteENDERECO.DisplayText;
    FRDanfeCte.QRBairroDest.Caption := FDMCliente.TClienteBAIRRO.DisplayText;
    FRDanfeCte.QRCidadeDest.Caption := FDMCliente.TClienteCIDADE.DisplayText;
    FRDanfeCte.QRUFDest.Caption := FDMCliente.TClienteUF.DisplayText;
    FRDanfeCte.QRCEPDest.Caption := FDMCliente.TClienteCEP.DisplayText;

    if FDMCliente.TClienteCNPJ.Value = '' then
    begin
      FRDanfeCte.QRCNPJDest.Caption:= FDMCliente.TClienteCPF.DisplayText;
      FRDanfeCte.QRIEDest.Caption:= '';
    end
    Else
    begin
      FRDanfeCte.QRCNPJDest.Caption := FDMCliente.TClienteCNPJ.DisplayText;
      FRDanfeCte.QRIEDest.Caption := FDMCliente.TClienteINSCEST.DisplayText;
    end;
//fim dados destinatario da dacte

//inicio dados expedidor da dacte
{    FDMCliente.TCliente.close;
    FDMCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMTransporte.TConhecimentoCODDESTINATARIO.Value;
    FDMCliente.TCliente.Open;

    FRDanfeCte.QRDestinoPrest.Caption := FDMCliente.TClienteENDERECO.DisplayText+' - '+FDMCliente.TClienteUF.DisplayText;
    FRDanfeCte.QRCodDest.Caption := FDMCliente.TClienteCODIGO.DisplayText;
    FRDanfeCte.QRNomeDest.Caption := FDMCliente.TClienteNOME.DisplayText;
    FRDanfeCte.QREndDest.Caption := FDMCliente.TClienteENDERECO.DisplayText;
    FRDanfeCte.QRBairroDest.Caption := FDMCliente.TClienteBAIRRO.DisplayText;
    FRDanfeCte.QRCidadeDest.Caption := FDMCliente.TClienteCIDADE.DisplayText;
    FRDanfeCte.QRUFDest.Caption := FDMCliente.TClienteUF.DisplayText;
    FRDanfeCte.QRCEPDest.Caption := FDMCliente.TClienteCEP.DisplayText;

    if FDMCliente.TClienteCNPJ.Value = '' then
    begin
      FRDanfeCte.QRCNPJDest.Caption:= FDMCliente.TClienteCPF.DisplayText;
      FRDanfeCte.QRIEDest.Caption:= '';
    end
    Else
    begin
      FRDanfeCte.QRCNPJDest.Caption := FDMCliente.TClienteCNPJ.DisplayText;
      FRDanfeCte.QRIEDest.Caption := FDMCliente.TClienteINSCEST.DisplayText;
    end;}
//fim dados expedidor da dacte

//inicio dados recebedor da dacte
{    FDMCliente.TCliente.close;
    FDMCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMTransporte.TConhecimentoCODDESTINATARIO.Value;
    FDMCliente.TCliente.Open;

    FRDanfeCte.QRDestinoPrest.Caption := FDMCliente.TClienteENDERECO.DisplayText+' - '+FDMCliente.TClienteUF.DisplayText;
    FRDanfeCte.QRCodDest.Caption := FDMCliente.TClienteCODIGO.DisplayText;
    FRDanfeCte.QRNomeDest.Caption := FDMCliente.TClienteNOME.DisplayText;
    FRDanfeCte.QREndDest.Caption := FDMCliente.TClienteENDERECO.DisplayText;
    FRDanfeCte.QRBairroDest.Caption := FDMCliente.TClienteBAIRRO.DisplayText;
    FRDanfeCte.QRCidadeDest.Caption := FDMCliente.TClienteCIDADE.DisplayText;
    FRDanfeCte.QRUFDest.Caption := FDMCliente.TClienteUF.DisplayText;
    FRDanfeCte.QRCEPDest.Caption := FDMCliente.TClienteCEP.DisplayText;

    if FDMCliente.TClienteCNPJ.Value = '' then
    begin
      FRDanfeCte.QRCNPJDest.Caption:= FDMCliente.TClienteCPF.DisplayText;
      FRDanfeCte.QRIEDest.Caption:= '';
    end
    Else
    begin
      FRDanfeCte.QRCNPJDest.Caption := FDMCliente.TClienteCNPJ.DisplayText;
      FRDanfeCte.QRIEDest.Caption := FDMCliente.TClienteINSCEST.DisplayText;
    end;}
//fim dados recebedor da dacte

//inicio dados tomador da dacte
    if FDMTransporte.TConhecimentoCODTOMADOR.Value > 0 then
    begin
      FDMTransporte.TTomador.Close;
      FDMTransporte.TTomador.Open;

      FDMTransporte.TTomador.Locate('CODIGO',FDMTransporte.TConhecimentoCODTOMADOR.Value,[]);

      FRDanfeCte.QRCodTomador.Caption := FDMTransporte.TTomadorCODIGO.DisplayText;
      FRDanfeCte.QRNomeTomador.Caption := FDMTransporte.TTomadorNOME.DisplayText;
      FRDanfeCte.QREndTomador.Caption := FDMTransporte.TTomadorENDERECO.DisplayText;
      FRDanfeCte.QRCidadeTomador.Caption := FDMTransporte.TTomadorCIDADE.DisplayText;
      FRDanfeCte.QRUFTomador.Caption := FDMTransporte.TTomadorUF.DisplayText;
      FRDanfeCte.QRCEPTomador.Caption := FDMTransporte.TTomadorCEP.DisplayText;

      if FDMTransporte.TTomadorCNPJ.Value = '' then
      begin
        FRDanfeCte.QRCNPJTomador.Caption:= FDMTransporte.TTomadorCPF.DisplayText;
        FRDanfeCte.QRIETomador.Caption:= '';
      end
      else
      begin
        FRDanfeCte.QRCNPJTomador.Caption := FDMTransporte.TTomadorCNPJ.DisplayText;
        FRDanfeCte.QRIETomador.Caption := FDMTransporte.TTomadorINSCEST.DisplayText;
      end;
    end;
//fim dados tomador da dacte

//inicio dados produtos
    FRDanfeCte.QRProdPredom.Caption := FDMTransporte.TConhecimentoCARGA.DisplayText;
    FRDanfeCte.QRCaract.Caption := FDMTransporte.TConhecimentoCARACCARGA.DisplayText;
    FRDanfeCte.QRTotProd.Caption := FDMTransporte.TConhecimentoTOTPROD.DisplayText;
    FRDanfeCte.QRPeso.Caption := FDMTransporte.TConhecimentoPESO.DisplayText;
    FRDanfeCte.QRVolume.Caption := FDMTransporte.TConhecimentoVOLUME.DisplayText;
    FRDanfeCte.QRCubagem.Caption := FDMTransporte.TConhecimentoCUBAGEM.DisplayText;
//    FRDanfeCte.QRQntdMedida1.Caption := FDMTransporte.TConhecimento.DisplayText;
//    FRDanfeCte.QRQntdMedida2.Caption := FDMTransporte.TConhecimento.DisplayText;
//fim dados produtos

//inicio dados seguro
    if FDMTransporte.TConhecimentoCODSEGURO.Value > 0 then
    begin
      FDMTransporte.TSeguradora.Close;
      FDMTransporte.TSeguradora.Open;

      FDMTransporte.TSeguradora.Locate('CODIGO',FDMTransporte.TConhecimentoCODSEGURO.Value,[]);

      FRDanfeCte.QRNomeSeguradora.Caption := FDMTransporte.TSeguradoraNOME.DisplayText;
      FRDanfeCte.QRResponsavel.Caption := FDMTransporte.TConhecimentoRESPSEGURO.DisplayText;
      FRDanfeCte.QRApolice.Caption := FDMTransporte.TConhecimentoAPOLICE.DisplayText;
      FRDanfeCte.QRAverbacao.Caption := FDMTransporte.TConhecimentoAVERBACAO.DisplayText;
    end;
//fim dados seguro

//inicio dados composição serviço
    FRDanfeCte.QRFrete.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoFRETE.Value);
    FRDanfeCte.QRPedagio.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoPEDAGIO.Value);
    FRDanfeCte.QRDCE.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoDCE.Value);
    FRDanfeCte.QRADM.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoADM.Value);
    FRDanfeCte.QRGRI.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoGRIS.Value);
    FRDanfeCte.QRDespacho.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoDESPACHO.Value);
    FRDanfeCte.QRTotServico.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoTOTALPREST.Value);
    FRDanfeCte.QRTotReceber.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoTOTALPREST.Value);
//fim dados composição serviço

//inicio dados composição imposto
    FRDanfeCte.QRSitTribut.Caption := FDMTransporte.TConhecimentoCST.Value;
    FRDanfeCte.QRBaseCalc.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoTOTALPREST.Value);
    FRDanfeCte.QRAliqIcms.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoALIQ.Value);
    FRDanfeCte.QRValIcms.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoTOTICMS.Value);
    FRDanfeCte.QRRedBaseCalcIcms.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoREDUCAOICMS.Value);
    FRDanfeCte.QRIcmsSt.Caption := formatfloat('###,###,###,###,###,##0.00',FDMTransporte.TConhecimentoTOTICMSST.Value);
//fim dados composição imposto

//inicio dados notas
    FRDanfeCte.QRTipoDoc1.Enabled := False;
    FRDanfeCte.QRCNPJCPFEmit1.Enabled := False;
    FRDanfeCte.QRSerieDoc1.Enabled := False;
    FRDanfeCte.QRTipoDoc2.Enabled := False;
    FRDanfeCte.QRCNPJCPFEmit2.Enabled := False;
    FRDanfeCte.QRSerieDoc2.Enabled := False;
    FRDanfeCte.QRTipoDoc3.Enabled := False;
    FRDanfeCte.QRCNPJCPFEmit3.Enabled := False;
    FRDanfeCte.QRSerieDoc3.Enabled := False;
    FRDanfeCte.QRTipoDoc4.Enabled := False;
    FRDanfeCte.QRCNPJCPFEmit4.Enabled := False;
    FRDanfeCte.QRSerieDoc4.Enabled := False;
    FRDanfeCte.QRTipoDoc5.Enabled := False;
    FRDanfeCte.QRCNPJCPFEmit5.Enabled := False;
    FRDanfeCte.QRSerieDoc5.Enabled := False;
    FRDanfeCte.QRTipoDoc6.Enabled := False;
    FRDanfeCte.QRCNPJCPFEmit6.Enabled := False;
    FRDanfeCte.QRSerieDoc6.Enabled := False;
    FRDanfeCte.QRTipoDoc7.Enabled := False;
    FRDanfeCte.QRCNPJCPFEmit7.Enabled := False;
    FRDanfeCte.QRSerieDoc7.Enabled := False;
    FRDanfeCte.QRTipoDoc8.Enabled := False;
    FRDanfeCte.QRCNPJCPFEmit8.Enabled := False;
    FRDanfeCte.QRSerieDoc8.Enabled := False;

    FRDanfeCte.QTTipoDoc1.Enabled := False;
    FRDanfeCte.QTCNPJCPFEmit1.Enabled := False;
    FRDanfeCte.QTSerieDoc1.Enabled := False;
    FRDanfeCte.QTTipoDoc2.Enabled := False;
    FRDanfeCte.QTCNPJCPFEmit2.Enabled := False;
    FRDanfeCte.QTSerieDoc2.Enabled := False;
    FRDanfeCte.QTTipoDoc3.Enabled := False;
    FRDanfeCte.QTCNPJCPFEmit3.Enabled := False;
    FRDanfeCte.QTSerieDoc3.Enabled := False;
    FRDanfeCte.QTTipoDoc4.Enabled := False;
    FRDanfeCte.QTCNPJCPFEmit4.Enabled := False;
    FRDanfeCte.QTSerieDoc4.Enabled := False;
    FRDanfeCte.QTTipoDoc5.Enabled := False;
    FRDanfeCte.QTCNPJCPFEmit5.Enabled := False;
    FRDanfeCte.QTSerieDoc5.Enabled := False;
    FRDanfeCte.QTTipoDoc6.Enabled := False;
    FRDanfeCte.QTCNPJCPFEmit6.Enabled := False;
    FRDanfeCte.QTSerieDoc6.Enabled := False;
    FRDanfeCte.QTTipoDoc7.Enabled := False;
    FRDanfeCte.QTCNPJCPFEmit7.Enabled := False;
    FRDanfeCte.QTSerieDoc7.Enabled := False;
    FRDanfeCte.QTTipoDoc8.Enabled := False;
    FRDanfeCte.QTCNPJCPFEmit8.Enabled := False;
    FRDanfeCte.QTSerieDoc8.Enabled := False;

    FDMTransporte.TConhecNota.First;

    if not FDMTransporte.TConhecNota.Eof then
    begin
      FRDanfeCte.QTTipoDoc1.Enabled := True;
      FRDanfeCte.QTCNPJCPFEmit1.Enabled := True;
      FRDanfeCte.QTSerieDoc1.Enabled := True;
      FRDanfeCte.QRTipoDoc1.Enabled := True;
//      FRDanfeCte.QRCNPJCPFEmit1.Enabled := True;
      FRDanfeCte.QRSerieDoc1.Enabled := True;
      FRDanfeCte.QRTipoDoc1.Caption := 'NF';
//      FRDanfeCte.QRCNPJCPFEmit1.Caption := FDMTransporte.TConhecNota;
      FRDanfeCte.QRSerieDoc1.Caption := FDMTransporte.TConhecNotaSERIE.DisplayText+'/'+FDMTransporte.TConhecNotaNOTA.DisplayText;
      FDMTransporte.TConhecNota.Next;
    end;

    if not FDMTransporte.TConhecNota.Eof then
    begin
      FRDanfeCte.QTTipoDoc2.Enabled := True;
      FRDanfeCte.QTCNPJCPFEmit2.Enabled := True;
      FRDanfeCte.QTSerieDoc2.Enabled := True;
      FRDanfeCte.QRTipoDoc2.Enabled := True;
//      FRDanfeCte.QRCNPJCPFEmit2.Enabled := True;
      FRDanfeCte.QRSerieDoc2.Enabled := True;
      FRDanfeCte.QRTipoDoc2.Caption := 'NF';
//      FRDanfeCte.QRCNPJCPFEmit1.Caption := FDMTransporte.TConhecNota;
      FRDanfeCte.QRSerieDoc2.Caption := FDMTransporte.TConhecNotaSERIE.DisplayText+'/'+FDMTransporte.TConhecNotaNOTA.DisplayText;
      FDMTransporte.TConhecNota.Next;
    end;

    if not FDMTransporte.TConhecNota.Eof then
    begin
      FRDanfeCte.QTTipoDoc3.Enabled := True;
      FRDanfeCte.QTCNPJCPFEmit3.Enabled := True;
      FRDanfeCte.QTSerieDoc3.Enabled := True;
      FRDanfeCte.QRTipoDoc3.Enabled := True;
//      FRDanfeCte.QRCNPJCPFEmit3.Enabled := True;
      FRDanfeCte.QRSerieDoc3.Enabled := True;
      FRDanfeCte.QRTipoDoc3.Caption := 'NF';
//      FRDanfeCte.QRCNPJCPFEmit3.Caption := FDMTransporte.TConhecNota;
      FRDanfeCte.QRSerieDoc3.Caption := FDMTransporte.TConhecNotaSERIE.DisplayText+'/'+FDMTransporte.TConhecNotaNOTA.DisplayText;
      FDMTransporte.TConhecNota.Next;
    end;

    if not FDMTransporte.TConhecNota.Eof then
    begin
      FRDanfeCte.QTTipoDoc4.Enabled := True;
      FRDanfeCte.QTCNPJCPFEmit4.Enabled := True;
      FRDanfeCte.QTSerieDoc4.Enabled := True;
      FRDanfeCte.QRTipoDoc4.Enabled := True;
//      FRDanfeCte.QRCNPJCPFEmit4.Enabled := True;
      FRDanfeCte.QRSerieDoc4.Enabled := True;
      FRDanfeCte.QRTipoDoc4.Caption := 'NF';
//      FRDanfeCte.QRCNPJCPFEmit4.Caption := FDMTransporte.TConhecNota;
      FRDanfeCte.QRSerieDoc4.Caption := FDMTransporte.TConhecNotaSERIE.DisplayText+'/'+FDMTransporte.TConhecNotaNOTA.DisplayText;
      FDMTransporte.TConhecNota.Next;
    end;

    if not FDMTransporte.TConhecNota.Eof then
    begin
      FRDanfeCte.QTTipoDoc5.Enabled := True;
      FRDanfeCte.QTCNPJCPFEmit5.Enabled := True;
      FRDanfeCte.QTSerieDoc5.Enabled := True;
      FRDanfeCte.QRTipoDoc5.Enabled := True;
//      FRDanfeCte.QRCNPJCPFEmit5.Enabled := True;
      FRDanfeCte.QRSerieDoc5.Enabled := True;
      FRDanfeCte.QRTipoDoc5.Caption := 'NF';
//      FRDanfeCte.QRCNPJCPFEmit5.Caption := FDMTransporte.TConhecNota;
      FRDanfeCte.QRSerieDoc5.Caption := FDMTransporte.TConhecNotaSERIE.DisplayText+'/'+FDMTransporte.TConhecNotaNOTA.DisplayText;
      FDMTransporte.TConhecNota.Next;
    end;

    if not FDMTransporte.TConhecNota.Eof then
    begin
      FRDanfeCte.QTTipoDoc6.Enabled := True;
      FRDanfeCte.QTCNPJCPFEmit6.Enabled := True;
      FRDanfeCte.QTSerieDoc6.Enabled := True;
      FRDanfeCte.QRTipoDoc6.Enabled := True;
//      FRDanfeCte.QRCNPJCPFEmit6.Enabled := True;
      FRDanfeCte.QRSerieDoc6.Enabled := True;
      FRDanfeCte.QRTipoDoc6.Caption := 'NF';
//      FRDanfeCte.QRCNPJCPFEmit6.Caption := FDMTransporte.TConhecNota;
      FRDanfeCte.QRSerieDoc6.Caption := FDMTransporte.TConhecNotaSERIE.DisplayText+'/'+FDMTransporte.TConhecNotaNOTA.DisplayText;
      FDMTransporte.TConhecNota.Next;
    end;

    if not FDMTransporte.TConhecNota.Eof then
    begin
      FRDanfeCte.QTTipoDoc7.Enabled := True;
      FRDanfeCte.QTCNPJCPFEmit7.Enabled := True;
      FRDanfeCte.QTSerieDoc7.Enabled := True;
      FRDanfeCte.QRTipoDoc7.Enabled := True;
//      FRDanfeCte.QRCNPJCPFEmit7.Enabled := True;
      FRDanfeCte.QRSerieDoc7.Enabled := True;
      FRDanfeCte.QRTipoDoc7.Caption := 'NF';
//      FRDanfeCte.QRCNPJCPFEmit7.Caption := FDMTransporte.TConhecNota;
      FRDanfeCte.QRSerieDoc7.Caption := FDMTransporte.TConhecNotaSERIE.DisplayText+'/'+FDMTransporte.TConhecNotaNOTA.DisplayText;
      FDMTransporte.TConhecNota.Next;
    end;

    if not FDMTransporte.TConhecNota.Eof then
    begin
      FRDanfeCte.QTTipoDoc8.Enabled := True;
      FRDanfeCte.QTCNPJCPFEmit8.Enabled := True;
      FRDanfeCte.QTSerieDoc8.Enabled := True;
      FRDanfeCte.QRTipoDoc8.Enabled := True;
//      FRDanfeCte.QRCNPJCPFEmit8.Enabled := True;
      FRDanfeCte.QRSerieDoc8.Enabled := True;
      FRDanfeCte.QRTipoDoc8.Caption := 'NF';
//      FRDanfeCte.QRCNPJCPFEmit8.Caption := FDMTransporte.TConhecNota;
      FRDanfeCte.QRSerieDoc8.Caption := FDMTransporte.TConhecNotaSERIE.DisplayText+'/'+FDMTransporte.TConhecNotaNOTA.DisplayText;
      FDMTransporte.TConhecNota.Next;
    end;

    FDMTransporte.TConhecNota.First;
//fim dados notas

    FRDanfeCte.QRObs.Lines.Clear;
    FRDanfeCte.QRObs2.Lines.Clear;

    FRDanfeCte.QRObs.Lines.Add(FDMTransporte.TConhecimentoOBSERVACAO.Value);

    if  FRDanfeCte.QRObs.Lines.Count > 12 then
    begin
       while FRDanfeCte.QRObs.Lines.Count > 12 do
       begin
         textoobs := textoobs+(FRDanfeCte.QRObs.Lines[12]);
         FRDanfeCte.QRObs.Lines.Delete(12);
       end;
       FRDanfeCte.QRObs2.Lines.add(textoobs);
    end;


    FRDanfeCte.ENotaVenda.Preview;
  finally
    FRDanfeCte.Free;

  end;
end;

procedure inutilizar(ACBrCTe1 : TACBrCTe; ninicial, nfinal, justificativa, ano, serie : String);
var
    retorno1, retorno2 : String;
begin
    ACBrCTe1.WebServices.Inutiliza(fdm.TEmpresaCNPJ.Value, justificativa, StrToInt(ano), StrToInt('01'), StrToInt(serie), StrToInt(ninicial), StrToInt(nfinal));
    retorno1 :=  UTF8Encode(ACBrCTe1.WebServices.Inutilizacao.RetWS);
    retorno2 :=  UTF8Encode(ACBrCTe1.WebServices.Inutilizacao.RetornoWS); //-- NFE 2.0

    FDMTransporte.TInultCte.Append;
    FDMTransporte.TInultCteCODIGO.Value := ultimo('inultcte','CODIGO');
    FDMTransporte.TInultCteCODUSU.Value := usulogado;
    FDMTransporte.TInultCteINICIAL.Value := strtoint(ninicial);
    FDMTransporte.TInultCteFINAL.Value := strtoint(nfinal);
    FDMTransporte.TInultCteANO.Value := strtoint(ano);
    FDMTransporte.TInultCteJUSTIFICATIVA.Value := justificativa;
    FDMTransporte.TInultCteRETORNO.Value := retorno1;
    FDMTransporte.TInultCteDATA.Value := DateTimeToSQLTimeStamp(now);
    FDMTransporte.TInultCteSERIE.value := serie;
    FDMTransporte.TInultCteMODELO.value := '01';
    FDMTransporte.TInultCte.Post;

    FDMTransporte.TInultCte.ApplyUpdates(0);
end;

procedure cancelar(ACBrCTe1 : TACBrCTe);
var
    motivo : String;
    ok : boolean;
    sql : String;
begin
    ok := true;

    if not fdmtransporte.TConhecimento.RecordCount > 0 then
    begin
      showmessage('É necessário selecionar um conhecimento!');
      abort;
    end;

    if not (fdmtransporte.TConhecimentoSITUACAO.Value = 'TRANSMITIDO') then
    begin
      showmessage('O conhecimento precisa estar transmitido!');
      abort;
    end;

    if (fdmtransporte.TConhecimentoCHAVE.Value = '') then
    begin
      showmessage('O conhecimento esta sem chave!');
      abort;
    end;

    if (fdmtransporte.TConhecimentoPROTOCOLO.Value = '') then
    begin
      showmessage('O conhecimento esta sem protocolo!');
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
          ACBrCTe1.WebServices.Cancelamento.CTeChave      := fdmtransporte.TConhecimentoCHAVE.Value;
          ACBrCTe1.WebServices.Cancelamento.Protocolo     := fdmtransporte.TConhecimentoPROTOCOLO.Value;
          ACBrCTe1.WebServices.Cancelamento.Justificativa := UpperCase(motivo);
          ACBrCTe1.WebServices.Cancelamento.Executar;
        except
          ok := false;
        end;
      finally
        if ok then
        begin
          fdmtransporte.TConhecimento.Edit;
          fdmtransporte.TConhecimentoMOTIVO.Value := UpperCase(motivo);
          fdmtransporte.TConhecimentoSITUACAO.Value := 'CANCELADO';
          fdmtransporte.TConhecimentoRETORNOCANC.Value := ACBrCTe1.WebServices.Cancelamento.xMotivo;
          fdmtransporte.TConhecimentoDATACANC.Value := date;
          fdmtransporte.TConhecimentoPROTCANC.Value := ACBrCTe1.WebServices.Cancelamento.Protocolo;
          fdmtransporte.TConhecimentoCSTATCANC.Value := inttostr(ACBrCTe1.WebServices.Cancelamento.cStat);
          fdmtransporte.TConhecimento.Post;
          fdmtransporte.TConhecimento.ApplyUpdates(0);

          if fdmtransporte.TConhecNota.RecordCount > 0 then
          begin
            sql := '';
            sql := sql + ' update notavenda set CTE = null where CTE = '+inttostr(fdmtransporte.TConhecimentoCODIGO.Value);
            ExecSQL(sql);
          end;
          ExecSQL(sql);
        end;
      end;

      //showmessage(UTF8Encode(ACBrNFe1.WebServices.Cancelamento.RetWS));
      showmessage(UTF8Encode(ACBrCTe1.WebServices.Cancelamento.xMotivo));
    end;
end;


procedure gerar(ACBrCTe1 : TACBrCTe; contingencia : boolean);
var
  NumCTe : String;
  ok : boolean;
  vNumLote : String;
begin
      vNumLote := '1';

      fdmtransporte.TConhecimento.Edit;
      fdmtransporte.TConhecimentoDATACTE.Value := DateTimeToSQLTimeStamp(now);
      ACBrCTe1.Conhecimentos.Clear;

with ACBrCTe1.Conhecimentos.Add.CTe do
  begin
   //
   // Dados de Identificação do CT-e
   //
   NumCTE := INTTOSTR(FDMTransporte.TConhecimentoCODIGO.Value);

   Ide.cUF    := fdm.TEmpresaCODESTADO.Value;
//   Ide.cCT    := StrToInt(NumCTe); //Caso não seja preenchido será gerado um número aleatório pelo componente
   Ide.cCT    := fdmtransporte.TConhecimentoCODIGO.Value;
   Ide.CFOP   := strtoint(FDMTransporte.TConhecimentoCFOP.Value);
   Ide.natOp  := FDMTransporte.TConhecimentoDESCNATOPE.Value;
//   NumCertCarregado

   if FDMTransporte.TConhecimentoPAGAMENTO.Value = 'P' then
     Ide.forPag := fpPago // ou fpAPagar
   else
    Ide.forPag := fpAPagar; // ou fpAPagar

   Ide.modelo := '57';
   Ide.serie  := StrToIntDef(fdmtransporte.TConhecimentoSERIE.Value,1);
   Ide.nCT    := fdmtransporte.TConhecimentoCODIGO.Value;
   Ide.dhEmi  := SQLTimeStampToDateTime(fdmtransporte.TConhecimentoDATACTE.Value);
   Ide.tpImp  := tiRetrato;

   if contingencia then
   begin
    Ide.tpEmis    := teDPEC;
   end
   else
   begin
     Ide.tpEmis    := teNormal;
   end;

   if fdm.TEmpresaTIPOAMBCTE.Value = 2 then
   begin
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
   end
   else
   begin
     Ide.tpAmb     := taProducao;
   end;


   // TpcteTipoCTe = (tcNormal, tcComplemento, tcAnulacao, tcSubstituto);

   if FDMTransporte.TConhecimentoTIPOCONHECIMENTO.Value = 'NORMAL' then
      Ide.tpCTe   := tcNormal
   else if FDMTransporte.TConhecimentoTIPOCONHECIMENTO.Value = 'COMPLEMENTO' then
      Ide.tpCTe   := tcComplemento
   else if FDMTransporte.TConhecimentoTIPOCONHECIMENTO.Value = 'ANULAÇÃO' then
      Ide.tpCTe   := tcAnulacao
   else if FDMTransporte.TConhecimentoTIPOCONHECIMENTO.Value = 'SUBSTITUTO' then
      Ide.tpCTe   := tcSubstituto;

   Ide.procEmi := peAplicativoContribuinte;
   Ide.verProc := '1.0';  //Versão do seu sistema

   Ide.cMunEmi := strtoint(inttostr(fdm.TEmpresaCODESTADO.value)+inttostr(fdm.TEmpresaCODMUNIC.value));
   Ide.xMunEmi := fdm.TEmpresaCIDADE.Value;
   Ide.UFEmi   := fdm.TEmpresaUF.Value;
   Ide.modal   := mdRodoviario;

   // TpcteTipoServico = (tsNormal, tsSubcontratacao, tsRedespacho, tsIntermediario);
   if FDMTransporte.TConhecimentoTIPOSERVICO.Value = 'NORMAL' then
    Ide.tpServ := tsNormal
   else if FDMTransporte.TConhecimentoTIPOSERVICO.Value = 'SUBCONTRATAÇÃO' then
    Ide.tpServ := tsSubcontratacao
   else if FDMTransporte.TConhecimentoTIPOSERVICO.Value =  'REDESPACHO' then
    Ide.tpServ := tsRedespacho
   else if FDMTransporte.TConhecimentoTIPOSERVICO.Value =  'INTERMEDIARIO' then
    Ide.tpServ := tsIntermediario;


   fdmcliente.TCliente.Close;
   fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmtransporte.TConhecimentoCODREMETENTE.Value;
   fdmcliente.TCliente.Open;


   // Origem da Prestação
   Ide.cMunIni := strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ Zeros(inttostr(fdmcliente.TClienteCODMUNIC.value),5));
   Ide.xMunIni := fdmcliente.TClienteCIDADE.Value;
   Ide.UFIni   := fdmcliente.TClienteUF.Value;

   compl.origCalc := fdmcliente.TClienteCIDADE.Value;

   fdmcliente.TCliente.Close;
   fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmtransporte.TConhecimentoCODDESTINATARIO.Value;
   fdmcliente.TCliente.Open;

   // Destino da Prestação
   Ide.cMunFim    := strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ Zeros(inttostr(fdmcliente.TClienteCODMUNIC.value),5));
   Ide.xMunFim    := fdmcliente.TClienteCIDADE.Value;
   Ide.UFFim      := fdmcliente.TClienteUF.Value;
   Ide.retira     := rtSim;
   Ide.xdetretira := '';

   compl.destCalc := fdmcliente.TClienteCIDADE.Value;


   if FDMTransporte.TConhecimentoTOMADOR.Value = 'REMETENTE' then
    Ide.Toma03.Toma := tmRemetente
   else if FDMTransporte.TConhecimentoTOMADOR.Value = 'EXPEDIDOR' then
    Ide.Toma03.Toma := tmExpedidor
   else if FDMTransporte.TConhecimentoTOMADOR.Value = 'RECEBEDOR' then
    Ide.Toma03.Toma := tmRecebedor
   else if FDMTransporte.TConhecimentoTOMADOR.Value = 'DESTINATARIO' then
    Ide.Toma03.Toma := tmDestinatario
   else if FDMTransporte.TConhecimentoTOMADOR.Value = 'OUTROS' then
    Ide.Toma03.Toma := tmOutros;


   // Totamdor do Serviço no CTe 4 = Outros
   if FDMTransporte.TConhecimentoTOMADOR.Value = 'OUTROS' then
   begin
     FDMTransporte.TTomador.Close;
     FDMTransporte.TTomador.Params.ParamByName('CODIGO').AsInteger := FDMTransporte.TConhecimentoCODTOMADOR.Value;
     FDMTransporte.TTomador.Close;

     Ide.Toma4.Toma    := tmOutros;
     if FDMTransporte.TTomadorPESSOA.Value = 'FISICA' then
     begin
      Ide.Toma4.CNPJCPF := FDMTransporte.TTomadorCPF.Value; // CNPJ do Tomador do Serviço
      Ide.Toma4.IE      := '';
     end
     else
     begin
      Ide.Toma4.CNPJCPF := FDMTransporte.TTomadorCNPJ.Value; // CNPJ do Tomador do Serviço
      Ide.Toma4.IE      := FDMTransporte.TTomadorINSCEST.Value;
     end;
     Ide.Toma4.xNome   := FDMTransporte.TTomadorNOME.Value;
     Ide.Toma4.xFant   := FDMTransporte.TTomadorNOMEFANTA.Value;
     Ide.Toma4.fone    := FDMTransporte.TTomadorFONE1.Value;

     Ide.Toma4.EnderToma.xLgr    := FDMTransporte.TTomadorENDERECO.Value;
     Ide.Toma4.EnderToma.xNum    := FDMTransporte.TTomadorNUMERO.Value;
     Ide.Toma4.EnderToma.xCpl    := FDMTransporte.TTomadorcomplemento.value;
     Ide.Toma4.EnderToma.xBairro := FDMTransporte.TTomadorBAIRRO.Value;
     Ide.Toma4.EnderToma.cMun    := FDMTransporte.TTomadorCODMUNIC.Value;
     Ide.Toma4.EnderToma.xMun    := FDMTransporte.TTomadorCIDADE.Value;
     Ide.Toma4.EnderToma.CEP     := strtoint(sonumeros(FDMTransporte.TTomadorCEP.Value));
     Ide.Toma4.EnderToma.UF      := FDMTransporte.TTomadorUF.Value;
     Ide.Toma4.EnderToma.cPais   := 1058;
     Ide.Toma4.EnderToma.xPais   := 'BRASIL';
    end;

   //
   //  Informações Complementares do CTe
   //
   compl.xCaracAd  := '';
   compl.xCaracSer := '';
   compl.xEmi      := '';
   compl.xObs := fdmtransporte.TConhecimentoOBSERVACAO.Value;

   compl.fluxo.xOrig := '';
   // Incluir caso a Passagem for diferente de ''
   {
   with compl.fluxo.pass.Add do
    begin
     xPass := '';
    end;
   }
   compl.fluxo.xDest := '';
   compl.fluxo.xRota := '';

   {compl.Entrega.TipoData := ; verificar
   case compl.Entrega.TipoData of
        0: compl.Entrega.semData.tpPer := 0;
    1,2,3: begin
            compl.Entrega.comData.tpPer := compl.Entrega.TipoData;
            compl.Entrega.comData.dProg := Date;
           end;
        4: begin
            compl.Entrega.noPeriodo.tpPer := 4;
            compl.Entrega.noPeriodo.dIni  := Date;
            compl.Entrega.noPeriodo.dFim  := Date;
           end;
   end;   }

   {compl.Entrega.TipoHora := 0; verificar
   case compl.Entrega.TipoHora of
        0: compl.Entrega.semHora.tpHor := 0;
    1,2,3: begin
            compl.Entrega.comHora.tpHor := compl.Entrega.TipoHora;
            compl.Entrega.comHora.hProg := StrToTime('10:00');
           end;
        4: begin
            compl.Entrega.noInter.tpHor := 4;
            compl.Entrega.noInter.hIni  := StrToTime('10:00');
            compl.Entrega.noInter.hFim  := StrToTime('11:00');
           end;
   end;}

   // Obs do Contribuinte

  { if (trim(DM_CNT.Conhec2ObsContCampo.AsString)<>'') and
      (trim(DM_CNT.Conhec2ObsContTexto.AsString)<>'')
    then begin
     with compl.ObsCont.Add do
      begin
       xCampo:=DM_CNT.Conhec2ObsContCampo.AsString;
       xTexto:=DM_CNT.Conhec2ObsContTexto.AsString;
      end;
    end;}

   // Obs para o Fisco
   {if (trim(DM_CNT.Conhec2ObsFiscoCampo.AsString)<>'') and
      (trim(DM_CNT.Conhec2ObsFiscoTexto.AsString)<>'')
    then begin
     with compl.ObsFisco.Add do
      begin
       xCampo:=DM_CNT.Conhec2ObsFiscoCampo.AsString;
       xTexto:=DM_CNT.Conhec2ObsFiscoTexto.AsString;
      end;
    end;      }

   //
   // Dados do Emitente
   //

   Emit.CNPJ := fdm.TEmpresaCNPJ.value;

   Emit.IE := fdm.TEmpresaINSCEST.value;

   Emit.xNome := fdm.TEmpresaRAZAOSOCIAL.value;
   Emit.xFant := fdm.TEmpresaNOMEFANTA.value;
   Emit.EnderEmit.xLgr := fdm.TEmpresaENDERECO.value;
   Emit.EnderEmit.nro := fdm.TEmpresaNUMERO.value;
   Emit.EnderEmit.xCpl := fdm.TEmpresaCOMPLEMENTO.value;
   Emit.EnderEmit.xBairro := fdm.TEmpresaBAIRRO.value;

   Emit.EnderEmit.cMun := strtoint(inttostr(fdm.TEmpresaCODESTADO.Value)+Zeros(inttostr(fdm.TEmpresaCODMUNIC.value),5));
   Emit.EnderEmit.xMun := fdm.TEmpresaCIDADE.value;
   Emit.EnderEmit.CEP := StrToInt(SoNumeros(fdm.TEmpresaCEP.value));
   Emit.EnderEmit.UF := fdm.TEmpresaUF.value;
   Emit.EnderEmit.cPais := 1058;
   Emit.EnderEmit.xPais := 'BRASIL';
   Emit.EnderEmit.fone := fdm.TEmpresaFONE1.value;

   //
   //  Dados do Remetente
   //
   if fdmtransporte.TConhecimentoCODREMETENTE.Value > 0 then
   begin
     fdmcliente.TCliente.Close;
     fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmtransporte.TConhecimentoCODREMETENTE.Value;
     fdmcliente.TCliente.Open;

     Rem.xNome := fdmcliente.TClienteNOME.Value;
     Rem.xFant := fdmcliente.TClienteNOMEFANTA.Value;
     Rem.EnderReme.xLgr := fdmcliente.TClienteENDERECO.Value;
     Rem.EnderReme.nro := fdmcliente.TClienteNUMERO.Value;
     Rem.EnderReme.xCpl := fdmcliente.TClienteCOMPLEMENTO.Value;
     Rem.EnderReme.xBairro := fdmcliente.TClienteBAIRRO.Value;

     Rem.EnderReme.cMun := strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ Zeros(inttostr(fdmcliente.TClienteCODMUNIC.value),5));
     Rem.EnderReme.xMun := fdmcliente.TClienteCIDADE.value;
     Rem.EnderReme.CEP := strtoint(sonumeros(fdmcliente.TClienteCEP.value));
     Rem.EnderReme.UF := fdmcliente.TClienteUF.value;
     Rem.EnderReme.cPais := 1058;
     Rem.EnderReme.xPais := 'BRASIL';

      if fdmcliente.TClientePESSOA.Value = 'JURIDICA' then
      begin
        Rem.CNPJCPF           := fdmcliente.TClienteCNPJ.value;
        rem.IE                := fdmcliente.TClienteINSCEST.value;
      end
      else
      begin
        Rem.CNPJCPF           := fdmcliente.TClienteCPF.value;
        Rem.IE                := '';
      end;

     Rem.fone := fdmcliente.TClienteFONE.value;

     //
     // Relação das Notas Fiscais
     //
     fdmtransporte.TConhecNota.First;
     while not fdmtransporte.TConhecNota.Eof do
     begin
         {case DM_CNT.NotasTipo.AsInteger of
          0: begin
              // Nota Fiscal
              with Rem.InfNF.Add do
               begin
                nRoma := DM_CNT.NotasRomaneioNF.AsString;
                nPed  := DM_CNT.NotasPedidoNF.AsString;
                serie := DM_CNT.NotasSerieNF.AsString;
                nDoc  := DM_CNT.NotasNumeroNF.AsString;
                dEmi  := DM_CNT.NotasEmissaoNF.AsDateTime;
                vBC   := RoundTo(DM_CNT.NotasValorBCICMS.AsFloat, -2);
                vICMS := RoundTo(DM_CNT.NotasValorICMS.AsFloat, -2);
                vBCST := RoundTo(DM_CNT.NotasValorBCICMSST.AsFloat, -2);
                vST   := RoundTo(DM_CNT.NotasValorICMSST.AsFloat, -2);
                vProd := RoundTo(DM_CNT.NotasValorProdutos.AsFloat, -2);
                vNF   := RoundTo(DM_CNT.NotasValorNF.AsFloat, -2);
                nCFOP := DM_CNT.NotasCFOPNF.AsInteger;
                nPeso := RoundTo(DM_CNT.NotasPesoKg.AsFloat, -2);
                PIN   := DM_CNT.NotasPinSuframa.AsString;

                // Local de Retirada

                if trim(DM_CNT.NotasCNPJRet.AsString)<>''
                 then begin
                  if copy(DM_CTA.PessoaFJCGC.AsString,10,4)<>'0000'
                   then locRet.CNPJCPF := Copy(DM_CTA.PessoaFJCGC.AsString, 2, 14)
                   else locRet.CNPJCPF := Copy(DM_CTA.PessoaFJCGC.AsString, 1, 9) +
                          Copy(DM_CTA.PessoaFJCGC.AsString, 14, 2);

                  locRet.xNome:=DM_CTA.PessoaFJRSocial.AsString;
                  locRet.xLgr:=DM_CTA.PessoaFJEndereco.AsString;
                  locRet.nro:=DM_CTA.PessoaFJNumero.AsString;
                  locRet.xCpl:=DM_CTA.PessoaFJComplemento.AsString;
                  locRet.xBairro:=DM_CTA.PessoaFJBairro.AsString;
                  CodigoMunicipio:=DM_CTA.PessoaFJCodigoEstado.AsInteger * 100000 +
                      DM_CTA.PessoaFJCodigoMunicipio.AsInteger;
                  locRet.cMun:=CodigoMunicipio;
                  locRet.xMun:=DM_CTA.PessoaFJCidade.AsString;
                  locRet.UF:=DM_CTA.PessoaFJEstado.AsString;
                 end;
               end;
             end;
          1: begin
              // Nota Fiscal Eletrônica
              with Rem.InfNFe.Add do
               begin
                chave := DM_CNT.NotasChaveNFe.AsString;
                PIN   := DM_CNT.NotasPinSuframa.AsString;
               end;
             end;
          2: begin
              // Outros Tipos de Documentos
              with Rem.InfOutros.Add do
               begin
                if DM_CNT.NotasTipoOutros.AsInteger = 0
                 then tpDoc := '00'
                 else begin
                  tpDoc      := '99';
                  descOutros := DM_CNT.NotasDescricao.AsString;
                 end;
                nDoc     := DM_CNT.NotasNumeroNF.AsString;
                dEmi     := DM_CNT.NotasEmissaoNF.AsDateTime;
                vDocFisc := RoundTo(DM_CNT.NotasValorNF.AsFloat, -2);
               end;
             end;
         end;         }

         // Nota Fiscal Eletrônica
         with Rem.InfNFe.Add do
         begin
          chave := fdmtransporte.TConhecNotaCHAVE.Value;
          PIN   := fdmtransporte.TConhecNotaPIN.Value;
         end;

         // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);
         with infCarga.InfQ.Add do
          begin
           if uppercase(fdmtransporte.TConhecNotaunidade.value) = 'KG' then
           begin
            cUnid  := uKg;
            tpMed  := 'Kg';
           end
           else if uppercase(fdmtransporte.TConhecNotaunidade.value) = 'M3' then
           begin
            cUnid  := uM3;
            tpMed  := 'M3';
           end
           else if uppercase(fdmtransporte.TConhecNotaunidade.value) = 'TN' then
           begin
            cUnid  := uTON;
            tpMed  := 'TN';
           end
           else if uppercase(fdmtransporte.TConhecNotaunidade.value) = 'LT' then
           begin
            cUnid  := uLitros;
            tpMed  := 'Lt';
           end
           else
           begin
            cUnid  := uUNIDADE;
            tpMed  := 'UN';
           end;

           qCarga := RoundTo(fdmtransporte.tconhecimentopeso.value, -2);
          end;
         fdmtransporte.TConhecNota.Next;
        end;
     end;

   //
   //  Dados do Destinatario
   //

   fdmcliente.TCliente.Close;
   fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmtransporte.TConhecimentoCODDESTINATARIO.Value;
   fdmcliente.TCliente.Open;

   if fdmtransporte.TConhecimentoCODDESTINATARIO.Value > 0 then
   begin
     Dest.xNome:=fdmcliente.TClienteNOME.Value;
     Dest.EnderDest.xLgr:=fdmcliente.TClienteENDERECO.Value;
     Dest.EnderDest.nro:=fdmcliente.TClienteNUMERO.Value;
     Dest.EnderDest.xCpl:=fdmcliente.TClientecomplemento.value;
     Dest.EnderDest.xBairro:=fdmcliente.TClienteBAIRRO.Value;

     Dest.EnderDest.cMun:=strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ Zeros(inttostr(fdmcliente.TClienteCODMUNIC.value),5));
     Dest.EnderDest.xMun:=fdmcliente.TClientecidade.value;
     Dest.EnderDest.CEP:=StrToIntDef(sonumeros(fdmcliente.TClientecep.value), 0);
     Dest.EnderDest.UF:=fdmcliente.TClienteuf.value;
     Dest.EnderDest.cPais:= 1058;
     Dest.EnderDest.xPais:='Brasil';

     if fdmcliente.TClientePESSOA.Value = 'JURIDICA' then
      begin
        Dest.CNPJCPF           := fdmcliente.TClienteCNPJ.value;
        Dest.IE                := fdmcliente.TClienteINSCEST.value;
      end
      else
      begin
        Dest.CNPJCPF           := fdmcliente.TClienteCPF.value;
        dest.IE                := '';
      end;

     Dest.fone:=fdmcliente.TClienteFONE.value;

     // Local de Entrega
     if fdmtransporte.tconhecimentoCODENDENTREGA.value > 0 then
     begin
        FdmCliente.Qconendentrega.close;
        FdmCliente.Qconendentrega.Params.ParamByName('CODCLI').AsInteger := fdmtransporte.tconhecimentoCODENDENTREGA.value;
        FdmCliente.Qconendentrega.Params.ParamByName('ITEM').AsInteger := fdmtransporte.tconhecimentocodend.value;
        FdmCliente.Qconendentrega.Open;

       if fdmcliente.TClientePESSOA.Value = 'JURIDICA' then
        begin
          Dest.locEnt.CNPJCPF           := fdmcliente.TClienteCNPJ.value;
        end
        else
        begin
          Dest.locEnt.CNPJCPF           := fdmcliente.TClienteCPF.value;
        end;

       Dest.locEnt.xNome:=FdmCliente.Qconendentreganome.value;
       Dest.locEnt.xLgr:=FdmCliente.Qconendentregaendereco.value;
       Dest.locEnt.nro:=FdmCliente.Qconendentreganumero.value;
       Dest.locEnt.xCpl:=FdmCliente.Qconendentregacomplemento.value;
       Dest.locEnt.xBairro:=FdmCliente.Qconendentregabairro.value;
       Dest.locEnt.cMun:=strtoint(inttostr(FdmCliente.QconendentregaCODESTADO.Value)+ Zeros(inttostr(FdmCliente.QconendentregaCODMUNIC.value),5));
       Dest.locEnt.xMun:=FdmCliente.Qconendentregacidade.value;
       Dest.locEnt.UF:=FdmCliente.Qconendentregauf.value;
     end
     else
     begin
     if fdmcliente.TClientePESSOA.Value = 'JURIDICA' then
      begin
        Dest.locEnt.CNPJCPF           := fdmcliente.TClienteCNPJ.value;
      end
      else
      begin
        Dest.locEnt.CNPJCPF           := fdmcliente.TClienteCPF.value;
      end;


       Dest.locEnt.xNome:=fdmcliente.TClienteNOME.value;
       Dest.locEnt.xLgr:=fdmcliente.TClienteENDERECO.value;
       Dest.locEnt.nro:=fdmcliente.TClienteNUMERO.value;
       Dest.locEnt.xCpl:=fdmcliente.TClienteCOMPLEMENTO.value;
       Dest.locEnt.xBairro:=fdmcliente.TClienteBAIRRO.value;
       Dest.locEnt.cMun:=strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ Zeros(inttostr(fdmcliente.TClienteCODMUNIC.value),5));
       Dest.locEnt.xMun:=fdmcliente.TClienteCIDADE.value;
       Dest.locEnt.UF:=fdmcliente.TClienteUF.value;
     end;


    end;

   //
   //  Dados do Expedidor
   //




     Exped.xNome:=fdm.TEmpresaRAZAOSOCIAL.Value;
     Exped.EnderExped.xLgr:=fdm.TEmpresaENDERECO.Value;
     Exped.EnderExped.nro:=fdm.TEmpresaNUMERO.Value;
     Exped.EnderExped.xCpl:=fdm.TEmpresaCOMPLEMENTO.Value;
     Exped.EnderExped.xBairro:=fdm.TEmpresaBAIRRO.Value;

     Exped.EnderExped.cMun:=strtoint(inttostr(fdm.TEmpresaCODESTADO.Value)+Zeros(inttostr(fdm.TEmpresaCODMUNIC.value),5));
     Exped.EnderExped.xMun:=fdm.TEmpresaCIDADE.Value;
     Exped.EnderExped.CEP:=StrToInt(SoNumeros(fdm.TEmpresaCEP.value));
     Exped.EnderExped.UF:=fdm.TEmpresaUF.Value;
     Exped.EnderExped.cPais:=1058;
     Exped.EnderExped.xPais:='BRASIL';

     Exped.CNPJCPF := fdm.TEmpresaCNPJ.value;
     Exped.IE:=fdm.TEmpresaINSCEST.value;
     Exped.fone:=fdm.TEmpresaFONE1.value;


     fdmcliente.TCliente.Close;
     fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmtransporte.TConhecimentoCODDESTINATARIO.Value;
     fdmcliente.TCliente.Open;

   //
   //  Dados do Recebedor
   //
     Receb.xNome:=fdmcliente.TClienteNOME.Value;
     Receb.EnderReceb.xLgr:=fdmcliente.TClienteENDERECO.Value;
     Receb.EnderReceb.nro:=fdmcliente.TClienteNUMERO.Value;
     Receb.EnderReceb.xCpl:=fdmcliente.TClienteCOMPLEMENTO.Value;
     Receb.EnderReceb.xBairro:=fdmcliente.TClienteBAIRRO.Value;

     Receb.EnderReceb.cMun:=strtoint(inttostr(fdmcliente.TClienteCODESTADO.Value)+ Zeros(inttostr(fdmcliente.TClienteCODMUNIC.value),5));
     Receb.EnderReceb.xMun:=fdmcliente.TClienteCIDADE.Value;
     Receb.EnderReceb.CEP:=StrToIntDef(sonumeros(fdmcliente.TClientecep.value), 0);
     Receb.EnderReceb.UF:=fdmcliente.TClienteUf.value;
     Receb.EnderReceb.cPais:=1058;
     Receb.EnderReceb.xPais:='BRASIL';


     if fdmcliente.TClientePESSOA.Value = 'JURIDICA' then
      begin
        Receb.CNPJCPF           := fdmcliente.TClienteCNPJ.value;
      end
      else
      begin
        Receb.CNPJCPF           := fdmcliente.TClienteCPF.value;
      end;

     Receb.IE:= fdmcliente.TClienteINSCEST.Value;
     Receb.fone:=fdmcliente.TClienteFONE.Value;

   //
   //  Valores da Prestação de Serviço
   //
   {vPrest.vTPrest := RoundTo(DM_CNT.Conhec2ValorTotal.AsFloat, -2);
   vPrest.vRec    := RoundTo(DM_CNT.Conhec2ValorTotal.AsFloat, -2);}

   //
   // Relação dos Componentes da Prestação de Serviço
   //
  { if j>0
    then begin
     for i:=1 to j do
      begin
       if DM_CNT.ComponentesValor.AsFloat>0.0
        then begin
         with vPrest.comp.Add do
          begin
           xNome:=DM_CNT.ComponentesDescricao.AsString;
           vComp:=RoundTo(DM_CNT.ComponentesValor.AsFloat, -2);
          end;
        end;
      end;
    end;          }

   //
   //  Valores dos Impostos
   //
   // TpcnCSTIcms = (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51, cst60, cst70, cst80, cst81, cst90);
   // 80 e 81 apenas para CTe

   case fdmtransporte.tconhecimentocst.asinteger of
   00: begin
        Imp.ICMS.SituTrib    := cst00;
        Imp.ICMS.CST00.CST   := cst00; // Tributação Normal ICMS
        Imp.ICMS.CST00.vBC   := RoundTo(fdmtransporte.tconhecimentobaseicms.value, -2);
        Imp.ICMS.CST00.pICMS := RoundTo(fdmtransporte.tconhecimentoaliq.value, -2);
        Imp.ICMS.CST00.vICMS := RoundTo(fdmtransporte.tconhecimentototicms.value, -2);
       end;
   20: begin
        Imp.ICMS.SituTrib     := cst20;
        Imp.ICMS.CST20.CST    := cst20; // Tributação com BC reduzida do ICMS
        Imp.ICMS.CST20.pRedBC := RoundTo(fdmtransporte.tconhecimentoreducaoicms.value, -2);
        Imp.ICMS.CST20.vBC    := RoundTo(fdmtransporte.tconhecimentobaseicms.value, -2);
        Imp.ICMS.CST20.pICMS  := RoundTo(fdmtransporte.tconhecimentoaliq.value, -2);
        Imp.ICMS.CST20.vICMS  := RoundTo(fdmtransporte.tconhecimentototicms.value, -2);
       end;
   40: begin
        Imp.ICMS.SituTrib  := cst40;
        Imp.ICMS.CST45.CST := cst40; // ICMS Isento
       end;
   41: begin
        Imp.ICMS.SituTrib  := cst41;
        Imp.ICMS.CST45.CST := cst41; // ICMS não Tributada
       end;
   51: begin
        Imp.ICMS.SituTrib  := cst51;
        Imp.ICMS.CST45.CST := cst51; // ICMS diferido
       end;
   80: begin
        Imp.ICMS.SituTrib    := cst80;
        Imp.ICMS.CST80.CST   := cst90; // Tributação atribuida ao tomador ou 3. por ST
        Imp.ICMS.CST80.vBC   := RoundTo(fdmtransporte.tconhecimentobaseicms.value, -2);
        Imp.ICMS.CST80.pICMS := RoundTo(fdmtransporte.tconhecimentoaliq.value, -2);
        Imp.ICMS.CST80.vICMS := RoundTo(fdmtransporte.tconhecimentototicms.value, -2);
        Imp.ICMS.CST80.vCred := RoundTo(fdmtransporte.tconhecimentocreditoicms.value, -2);
       end;
   81: begin
        Imp.ICMS.SituTrib     := cst81;
        Imp.ICMS.CST81.CST    := cst90; // Tributação devido a outra UF
        Imp.ICMS.CST81.pRedBC := RoundTo(fdmtransporte.tconhecimentoreducaoicms.value, -2);
        Imp.ICMS.CST81.vBC    := RoundTo(fdmtransporte.tconhecimentobaseicms.value, -2);
        Imp.ICMS.CST81.pICMS  := RoundTo(fdmtransporte.tconhecimentoaliq.value, -2);
        Imp.ICMS.CST81.vICMS  := RoundTo(fdmtransporte.tconhecimentototicms.value, -2);
       end;
   90: begin
        Imp.ICMS.SituTrib     := cst90;
        Imp.ICMS.CST90.CST    := cst90; // ICMS Outros
        Imp.ICMS.CST90.pRedBC := RoundTo(fdmtransporte.tconhecimentoreducaoicms.value, -2);
        Imp.ICMS.CST90.vBC    := RoundTo(fdmtransporte.tconhecimentobaseicms.value, -2);
        Imp.ICMS.CST90.pICMS  := RoundTo(fdmtransporte.tconhecimentoaliq.value, -2);
        Imp.ICMS.CST90.vICMS  := RoundTo(fdmtransporte.tconhecimentototicms.value, -2);
        Imp.ICMS.CST90.vCred  := RoundTo(fdmtransporte.tconhecimentocreditoicms.value, -2);
       end;
   end;

   //
   //  Informações da Carga
   //
   infCarga.vMerc   := RoundTo(fdmtransporte.tconhecimentototnota.value, -2);
   infCarga.proPred := fdmtransporte.tconhecnotaespecie.value;
   infCarga.xOutCat := fdmtransporte.tconhecnotanatureza.value;



   //
   //  Informações da Seguradora
   //
    if fdmtransporte.tconhecimentorespseguro.value <> '' then
     begin
     with infseg.Add do
      begin
       if fdmtransporte.tconhecimentorespseguro.value = 'REMETENTE' then
        respSeg:=rsRemetente
       else if fdmtransporte.tconhecimentorespseguro.value = 'EXPEDIDOR' then
        respSeg:=rsExpedidor
       else if fdmtransporte.tconhecimentorespseguro.value = 'RECEBEDOR' then
        respSeg:=rsRecebedor
       else if fdmtransporte.tconhecimentorespseguro.value = 'DESTINATARIO' then
        respSeg:=rsDestinatario
       else if fdmtransporte.tconhecimentorespseguro.value = 'EMITENTE' then
        respSeg:=rsEmitenteCTe
       else if fdmtransporte.tconhecimentorespseguro.value = 'TOMADOR' then
        respSeg:=rsTomadorServico;

       xSeg:='';

       nApol:= fdmtransporte.TConhecimentoAPOLICE.Value;
       nAver:= fdmtransporte.TConhecimentoNAVER.Value;
      end;
    end;

   //
   //  Dados do Modal Rodoviário
   //

   Rodo.RNTRC:= Zeros(SoNumeros(fdm.TEmpresarntrc.value),14);
   Rodo.dPrev:=(Date+1);
   Rodo.Lota:=ltNao;

   //
   //  Informações do Detalhamento do CTe do tipo Anulação de Valores
   //

   // infCTeAnuEnt.dEmi:=DM_CNT.Conhec2Data.AsDateTime;
   // infCTeAnuEnt.chCTe:='';
  end;


        try
          try
            if contingencia then
            begin
              //ACBrcte1.WebServices.EnviarDPEC.Executar; verificar
              {fdmtransporte.TConhecimentoNUMDPEC.Value := ACBrcte1.WebServices.EnviarDPEC.nRegDPEC;
              fdmtransporte.TConhecimentoDATACONTINGENCIA.value := ACBrcte1.WebServices.EnviarDPEC.DhRegDPEC;
              fdmtransporte.TConhecimentoHORACONTINGENCIA.value := ACBrcte1.WebServices.EnviarDPEC.DhRegDPEC;} //verificar
            end
            else
            begin
              ACBrcte1.Enviar(1);
            end;
            fdmtransporte.TConhecimentoSITUACAO.Value := 'TRANSMITIDO';
            if contingencia then
            begin
              {fdmtransporte.TConhecimentoRETORNO.Value := ACBrcte1.WebServices.EnviarDPEC.xMotivo;
              fdmtransporte.TConhecimentoCHAVE.Value := ACBrcte1.WebServices.EnviarDPEC.NFeChave;
              fdmtransporte.TConhecimentoCSTAT.Value := inttostr(ACBrcte1.WebServices.EnviarDPEC.cStat);
              fdmtransporte.TConhecimentoDATAHOMOLOG.Value := ACBrcte1.WebServices.EnviarDPEC.DhRegDPEC;
              fdmtransporte.TConhecimentoPROTOCOLO.Value := ACBrcte1.WebServices.EnviarDPEC.nRegDPEC+' '+DateTimeToStr(ACBrcte1.WebServices.EnviarDPEC.DhRegDPEC);
              showmessage(ACBrcte1.WebServices.EnviarDPEC.xMotivo);} //verificar
            end
            else
            begin
              fdmtransporte.TConhecimentoRETORNO.Value := ACBrcte1.WebServices.Retorno.CteRetorno.ProtCTe.Items[0].xMotivo;
              fdmtransporte.TConhecimentoCHAVE.Value := ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].chcte;
//              fdmvendas.TNotaVendaDIGVAL.Value := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal;
              fdmtransporte.TConhecimentoCSTAT.Value := inttostr(ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].cStat);
              fdmtransporte.TConhecimentoDATAHOMOLOG.Value := ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].dhRecbto;
              fdmtransporte.TConhecimentoPROTOCOLO.Value := ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].nProt;
              showmessage(ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].xMotivo);
              if (FDM.TConfigENVIAREMAILAUTO.Value = 'S') and (fdmcliente.TClienteEMAIL.Value <> '') then
              begin
                {try
                  Application.CreateForm(TFEMail,FEMail);
                  FEMail.nfe := true;
                  FEMail.destino := fdmcliente.TClienteEMAIL.Value;
                  if FilesExists(ExtractFilePath(Application.ExeName)+'nfe/'+fdmvendas.TNotaVendaCHAVE.Value+'-nfe.xml') then
                    FEMail.arquivo := ExtractFilePath(Application.ExeName)+'nfe/'+fdmvendas.TNotaVendaCHAVE.Value+'-nfe.xml';
                    FEMail.BtOk.Click;
                finally
                  FEMail.Free;
                  showmessage('O xml foi enviado automaticamente para o seguinte endereço: '+fdmcliente.TClienteEMAIL.Value)
                end;}
              end;
            end;
          except
              on E :Exception do begin
                gravalogex(e,'ctelog');
                MessageDlg(E.Message, mtError, [mbOk], 0);
                fdmtransporte.TConhecimentoRETORNO.Value := e.Message;
                if contingencia then
                begin
                  {fdmtransporte.TConhecimentoCHAVE.Value := ACBrcte1.WebServices.EnviarDPEC.NFeChave;
                  if ((ACBrcte1.WebServices.EnviarDPEC.cStat = 104) or
                     (ACBrcte1.WebServices.EnviarDPEC.cStat = 105) or
                     (ACBrcte1.WebServices.EnviarDPEC.cStat = 106)) then
                  begin
//                    fdmvendas.TNotaVendaSITUACAO.Value := 'TRANSMITIDO';
                    fdmvendas.TNotaVendaRETORNO.Value := ACBrcte1.WebServices.EnviarDPEC.xMotivo;
                    fdmvendas.TNotaVendaCHAVE.Value := ACBrcte1.WebServices.EnviarDPEC.NFeChave;
                    fdmvendas.TNotaVendaCSTAT.Value := inttostr(ACBrcte1.WebServices.EnviarDPEC.cStat);
                    fdmvendas.TNotaVendaDATAHOMOLOG.Value := ACBrcte1.WebServices.EnviarDPEC.DhRegDPEC;
                    fdmvendas.TNotaVendaPROTOCOLO.Value := ACBrcte1.WebServices.EnviarDPEC.nRegDPEC+' '+DateTimeToStr(ACBrNFe1.WebServices.EnviarDPEC.DhRegDPEC);
                  end;} //verificar
                end
                else
                begin
                  if (ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Count > 0) then
                    fdmtransporte.TConhecimentoCHAVE.Value := ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].chcte;
                  if ((ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].cStat = 104) or
                     (ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].cStat = 105) or
                     (ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].cStat = 106)) then
                  begin
                    fdmtransporte.TConhecimentoSITUACAO.Value := 'TRANSMITIDO';
                    fdmtransporte.TConhecimentoRETORNO.Value := ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].xMotivo;
                    fdmtransporte.TConhecimentoCHAVE.Value := ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].chcte;
                    fdmtransporte.TConhecimentoCSTAT.Value := inttostr(ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].cStat);
                    fdmtransporte.TConhecimentoDATAHOMOLOG.Value := ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].dhRecbto;
                    fdmtransporte.TConhecimentoPROTOCOLO.Value := ACBrcte1.WebServices.Retorno.cteRetorno.Protcte.Items[0].nProt;
                  end;
                end;
              end;
           end;
        finally
          fdmtransporte.TConhecimento.Post;
          fdmtransporte.TConhecimento.ApplyUpdates(0);
          ACBrCte1.conhecimentos.Items[0].SaveToFile;
        end;


end;

end.

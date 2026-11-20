program ClienteEtechLic;



uses
  Forms,
  Controls,
  Arquivos in 'Classes\Arquivos.pas',
  dialogos in 'Classes\dialogos.pas',
  metodosServ in 'Classes\metodosServ.pas',
  AtualizaArquivos in 'Classes\AtualizaArquivos.pas',
  relatorio in 'Classes\relatorio.pas',
  UBiblio in 'Classes\UBiblio.pas',
  Cliente in 'Cliente.pas' {FCliente},
  CliListaConf in 'CliListaConf.pas' {FCliListaConf},
  CliPotenCont in 'CliPotenCont.pas' {FCliPotenCont},
  CliRefBanc in 'CliRefBanc.pas' {FCliRefBanc},
  CliRefCom in 'CliRefCom.pas' {FCliRefCom},
  CliRefPes in 'CliRefPes.pas' {FCliRefPes},
  CondPag in 'CondPag.pas' {FCondPag},
  Configuracoes in 'Configuracoes.pas' {FConfiguracoes},
  Customizar in 'Customizar.pas' {FCustomizar},
  DM in 'DM.pas' {FDM: TDataModule},
  DMCliente in 'DMCliente.pas' {FDMCliente: TDataModule},
  DMFornec in 'DMFornec.pas' {FDMFornec: TDataModule},
  DMSistema in 'DMSistema.pas' {FDMSistema: TDataModule},
  DMUsuario in 'DMUsuario.pas' {FDMUsuario: TDataModule},
  Localizador in 'Localizador.pas' {FLocalizador},
  Login in 'Login.pas' {FLogin},
  Municipio in 'Municipio.pas' {FMunicipio},
  Principal in 'Principal.pas' {FPrincipal},
  Sobre in 'Sobre.pas' {FSobre},
  Servico in 'Servico.pas' {FServico},
  Vendedores in 'Vendedores.pas' {FVendedores},
  DMRh in 'DMRh.pas' {FDMRh: TDataModule},
  TipoCliente in 'TipoCliente.pas' {FTipoCliente},
  Fornecedor in 'Fornecedor.pas' {FFornecedor},
  RelRecibo in 'RelRecibo.pas' {FRelRecibo},
  ConUsuario in 'ConUsuario.pas' {FConUsuario},
  FuncoesDEV in 'Classes\FuncoesDEV.pas',
  ConCli in 'ConCli.pas' {FConCli},
  CliCont in 'CliCont.pas' {FCliCont},
  CliDoc in 'CliDoc.pas' {FCliDoc},
  CliFilial in 'CliFilial.pas' {FCliFilial},
  CliPoten in 'CliPoten.pas' {FCliPoten},
  RelCli in 'RelCli.pas' {FRelCli},
  RelConCliente in 'RelConCliente.pas' {FRelConCliente},
  DM2 in 'DM2.pas' {FDM2: TDataModule},
  DMGerLicitacao in 'DMGerLicitacao.pas' {FDMGerLicitacao: TDataModule},
  Entidade in 'Entidade.pas' {FEntidade},
  Pais in 'Pais.pas' {FPais},
  TipoEntidade in 'TipoEntidade.pas' {FTipoEntidade},
  Modalidade in 'Modalidade.pas' {FModalidade},
  FonteLic in 'FonteLic.pas' {FFonteLic},
  Processo in 'Processo.pas' {FProcesso},
  ProcLicDoc in 'ProcLicDoc.pas' {FProcLicDoc},
  ConEmpresa in 'ConEmpresa.pas' {FConEmpresa},
  Contato in 'Contato.pas' {FContato},
  Filial in 'Filial.pas' {FFilial},
  ContatoEntidade in 'ContatoEntidade.pas' {FContatoEntidade},
  FilialEntidade in 'FilialEntidade.pas' {FFilialEntidade},
  Email in 'Email.pas' {FEMail},
  EntidadeDoc in 'EntidadeDoc.pas' {FEntidadeDoc},
  EntidadeFilial in 'EntidadeFilial.pas' {FEntidadeFilial},
  ProcessoDup in 'ProcessoDup.pas' {FProcessoDup},
  ItemProcesso in 'ItemProcesso.pas' {FItemProcesso},
  ConProcesso in 'ConProcesso.pas' {FConProcesso},
  RelProcesso in 'RelProcesso.pas' {FRelProcesso},
  RelProcesso2 in 'RelProcesso2.pas' {FRelProcesso2},
  RelProcessoFinanc in 'RelProcessoFinanc.pas' {FRelProcessoFinanc},
  RelProcessoVigencia in 'RelProcessoVigencia.pas' {FRelProcessoVigencia},
  DMCRM in 'DMCRM.pas' {FDMCRM: TDataModule},
  PipelineVenda in 'PipelineVenda.pas' {FPipelineVenda},
  ServPipelineVenda in 'ServPipelineVenda.pas' {FServPipelineVenda},
  HistoPipelineVenda in 'HistoPipelineVenda.pas' {FHistoPipelineVenda},
  EntidadeCont in 'EntidadeCont.pas' {FEntidadeCont},
  RRelCust in 'RRelCust.pas' {FRRelCust},
  ConBuscaContato in 'ConBuscaContato.pas' {FConBuscaContato};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'E-Tech Gestão de Licitações';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFLogin, FLogin);
  try
    if (FLogin.ShowModal <> mrok) then
    begin
      Application.Terminate;
    end
    else
    begin
      Application.CreateForm(TFDM, FDM);
      Application.CreateForm(TFDM2, FDM2);
      Application.CreateForm(TFDMRh, FDMRh);
      Application.CreateForm(TFDMSistema, FDMSistema);
      Application.CreateForm(TFDMFornec, FDMFornec);
      Application.CreateForm(TFDMCRM, FDMCRM);
      Application.CreateForm(TFDMCliente, FDMCliente);
      Application.CreateForm(TFDMGerLicitacao,FDMGerLicitacao);
    end;
  finally
    FLogin.Free;
    FLogin := nil;
  end;

  Application.Run;
end.

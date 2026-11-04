unit balanca;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Buttons, DB, DbTables, DBCtrls, ComCtrls, Gauges, DBGrids,
  Mask, FileCtrl, Math, BDE, IniFiles, Registry, Jpeg, ExtCtrls, TypInfo, WinInet,
  Urlmon, printers, DateUtils, Variants, Grids,shellapi,MAPI,cxgrid, cxGridDBTableView,DBClient,
  cxButtons,cxDBNavigator,strutils, WinSock;

  function geraarqtoledo(tipoprod, nomeprod, imprimeval, imprimeemb : String; codprod, validade : integer; valor : real): String;

implementation

uses UBiblio;

function geraarqtoledo(tipoprod, nomeprod, imprimeval, imprimeemb : String; codprod, validade :integer; valor : real): String;
var
  linha : String;
begin
  // gera arquivo balanca toledo soft mgv versao do arquivo 1.0

  linha := '';
  linha := linha + '01'; //código do departamento (2 casas)
  linha := linha + tipoprod;// tipo de produto 0 - venda por peso | 1 venda por unidade | 2 - EAN (1 casa)
  linha := linha + Zeros(inttostr(codprod),6); // codigo do produto (6 casas)
  linha := linha + Zeros(SoNumeros(formatfloat('0.00',valor)),6); // valor do produto (6 casas)
  linha := linha + zeros(inttostr(validade),3); // validade em dias (3 casas)
  linha := linha + Espacos(copy(nomeprod,1,50),50,'D'); // nome do produto (50 casas)
  linha := linha + '000000';// Código da Inf. Extra do item "000000" = não haverá associação (6 casas)
  linha := linha + '000'; //Código da Imagem do Item "000" = não haverá associação (3 casas)
  linha := linha + '0000'; //Código da Informação Nutricional "0000" = não haverá associação (4 casas)

  if imprimeval = 'S' then // data de validade 1 - imprime 0 - não imprime (1 casa)  
    linha := linha  + '1'
  else
    linha := linha  + '0';
    
  if imprimeemb = 'S' then // data de embalagem 1 - imprime 0 - não imprime (1 casa)  
    linha := linha  + '1'
  else
    linha := linha  + '0';  

  linha := linha + '0000'; //codigo do fornecedor "0000" = não haverá associação (4 casas)
  linha := linha + zeros('0',12); // lote (12 casas)
  linha := linha + zeros('0',11); // codigo especial (11 casas)

  result := linha;

end;



end.

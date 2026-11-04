unit relatorio;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxgrid, cxGridDBTableView, DBGrids,
  DBCtrls, ComCtrls,ExtCtrls,BDE, DB, StdCtrls,  Mask, QuickRpt,Qrctrls, printers, qrprntr, jpeg;



//Procedure PrintString(RVSystem:TRVSystem;Row: Double;Column:Double;TextToPrint:String;NewFontName:String;NewFontSize:Integer;NewFontColor:TColor);
Procedure RelCustGrid2(form : TForm; grid:TDBGrid; filtro : string; nregs, rel : integer);
Procedure RelCustGrid3(form : TForm; grid:TcxGridDBTableView; filtro : string; nregs, rel : integer);
function ProportionalHeight(var Image: TqrImage; NewHeight:Integer) : TqrImage;

implementation

uses DM, Customizar, Principal, UBiblio, metodosServ;


{Procedure PrintString(
   RVSystem:TRVSystem; // Objeto do RAVE
   Row: Double; // Linha
   Column:Double; // Coluna
   TextToPrint:String; // Texto a ser impresso
   NewFontName:String; // Fonte
   NewFontSize:Integer; // Tamanho
   NewFontColor:TColor // Cor
   );
   Begin
     With RVSystem.BaseReport do Begin
     GotoXY(Column,Row);
     FontColor := NewFontColor;
     FontSize := NewFontSize;
     FontName := NewFontName;
     Print(TextToPrint);
   End;
End; }

Procedure RelCustGrid2(form : TForm; grid:TDBGrid; filtro : string; nregs, rel : integer);
var i : integer;
    sql : String;
begin
   Application.CreateForm(TFCustomizar,FCustomizar);
   FDM.TRelCust.close;
   FDM.TRelCust.Params.ParamByName('FORM').AsString := form.name;
   FDM.TRelCust.Params.ParamByName('REL').AsInteger := rel;
   FDM.TRelCust.Open;

   FDM.TConfigRel.close;
   FDM.TConfigRel.Params.ParamByName('FORM').AsString := form.name;
   FDM.TConfigRel.Params.ParamByName('REL').AsInteger := rel;
   FDM.TConfigRel.open;

   fdm.TRelCustItem.Close;
   FDM.TRelCustItemIt.Close;

   if (FDM.TRelCust.RecordCount = 0) or (application.MessageBox('Já Existe um relatório Pré-Definido, deseja utilizá-lo?','E-Tech',MB_ICONQUESTION+MB_YESNO) = idno) then
     begin
        sql := '';
        sql := sql + 'delete from relcust where FORM = '+QuotedStr(form.name)+' and REL = '+inttostr(rel)+';';
        ExecSQL(sql);
        FDM.TRelCust.Refresh;

        for i:= 0 to (grid.Columns.Count-1) do
          begin
             if grid.Columns.Items[i].Visible Then
               begin
                 FDM.TRelCust.Append;
                 FDM.TRelCustREL.value := rel;
                 FDM.TRelCustFORM.Value := form.Name;
                 FDM.TRelCustCOLUNA.Value := i+1;
                 FDM.TRelCustCAMPO.Value := grid.Columns.Items[i].FieldName;
                 FDM.TRelCustTITULO.Value := grid.Columns.Items[i].Title.Caption;
                 FDM.TRelCustEXIBIR.Value := 'S';
                 FDM.TRelCustSOMAR.Value := 'N';
                 FDM.TRelCustTAMANHO.Value := grid.Columns.Items[i].Width;
                 FDM.TRelCust.Post;
               end;
          end;
          FDM.TRelCust.ApplyUpdates(0);
     end
     else
     begin
          sql := '';
          sql := sql + ' update relcust set TOTAL = 0 where FORM = '+QuotedStr(form.name)+' and REL = '+inttostr(rel)+';';
          ExecSQL(sql);
          FDM.TRelCust.Refresh;
     end;

     if (FDM.TConfigRel.RecordCount = 0) then
     begin
       FDM.TConfigRel.Append;
       FDM.TConfigRelFORM.value := form.Name;
       FDM.TConfigRelREL.value := rel;
       FDM.TConfigRelCODUSU.Value := usulogado;
       FDM.TConfigRelCODIGO.Value := ultimo('configrel','CODIGO');
       fdm.TConfigRelMARGEMTOP.Value := 1;
       fdm.TConfigRelMARGEMINF.Value := 1;
       fdm.TConfigRelMARGEMDIR.Value := 1;
       fdm.TConfigRelMARGEMESQ.Value := 1;
       fdm.TConfigRelTAMCABE.Value := 12;
       fdm.TConfigRelTAMCORPO.Value := 10;
       fdm.TConfigRelCORCABE.Value := 'clblack';
       fdm.TConfigRelCORCORPO.Value := 'clblack';
       fdm.TConfigRelFONTECORPO.Value := '';
       fdm.TConfigRelFONTECABE.Value := '';
       fdm.TConfigRelORIENTACAO.Value := 'RETRATO';
       fdm.TconfigrelCAMINHOLOGO.Value := '';
       FDM.TConfigRel.Post;
       FDM.TConfigRel.ApplyUpdates(0);
     end;

   FCustomizar.ETitulo.Text := 'Relatório - '+ form.Caption;
   FCustomizar.filtro := filtro;
   FCustomizar.tabela := grid.DataSource.DataSet;
   FCustomizar.cxPageControl1.Pages[1].TabVisible := false;
   FCustomizar.ShowModal;
   FCustomizar.Free;
end;

Procedure RelCustGrid3(form : TForm; grid:TcxGridDBTableView; filtro : string; nregs, rel : integer);
var i : integer;
    sql : String;
begin
   Application.CreateForm(TFCustomizar,FCustomizar);
   FDM.TRelCust.close;
   FDM.TRelCust.Params.ParamByName('FORM').AsString := form.name;
   FDM.TRelCust.Params.ParamByName('REL').AsInteger := rel;
   FDM.TRelCust.Open;

   FDM.TConfigRel.close;
   FDM.TConfigRel.Params.ParamByName('FORM').AsString := form.name;
   FDM.TConfigRel.Params.ParamByName('REL').AsInteger := rel;
   FDM.TConfigRel.open;

   fdm.TRelCustItem.Close;
   FDM.TRelCustItemIt.Close;

   if (FDM.TRelCust.RecordCount = 0) or (application.MessageBox('Já Existe um relatório Pré-Definido, deseja utilizá-lo?','E-Tech',MB_ICONQUESTION+MB_YESNO) = idno) then
     begin
        sql := '';
        sql := sql + 'delete from relcust where FORM = '+QuotedStr(form.name)+' and REL = '+inttostr(rel)+';';
        ExecSQL(sql);
        FDM.TRelCust.Refresh;

        for i:= 0 to (grid.ColumnCount-1) do
          begin
             if grid.Columns[i].Visible Then
               begin
                 FDM.TRelCust.Append;
                 FDM.TRelCustREL.value := rel;
                 FDM.TRelCustFORM.Value := form.Name;
                 FDM.TRelCustCOLUNA.Value := i+1;
                 FDM.TRelCustCAMPO.Value := grid.Columns[i].DataBinding.FieldName;
                 FDM.TRelCustTITULO.Value := grid.Columns[i].Caption;
                 FDM.TRelCustEXIBIR.Value := 'S';
                 FDM.TRelCustSOMAR.Value := 'N';
                 FDM.TRelCustTAMANHO.Value := grid.Columns[i].Width;
                 FDM.TRelCust.Post;
               end;
          end;
          FDM.TRelCust.ApplyUpdates(0);
     end
     else
     begin
          sql := '';
          sql := sql + ' update relcust set TOTAL = 0 where FORM = '+QuotedStr(form.name)+' and REL = '+inttostr(rel)+';';
          ExecSQL(sql);
          FDM.TRelCust.Refresh;
     end;

     if (FDM.TConfigRel.RecordCount = 0) then
     begin
       FDM.TConfigRel.Append;
       FDM.TConfigRelREL.value := rel;
       FDM.TConfigRelFORM.value := form.Name;
       FDM.TConfigRelCODUSU.Value := usulogado;
       FDM.TConfigRelCODIGO.Value := ultimo('configrel','CODIGO');
       fdm.TConfigRelMARGEMTOP.Value := 1;
       fdm.TConfigRelMARGEMINF.Value := 1;
       fdm.TConfigRelMARGEMDIR.Value := 1;
       fdm.TConfigRelMARGEMESQ.Value := 1;
       fdm.TConfigRelTAMCABE.Value := 12;
       fdm.TConfigRelTAMCORPO.Value := 10;
       fdm.TConfigRelCORCABE.Value := 'clblack';
       fdm.TConfigRelCORCORPO.Value := 'clblack';
       fdm.TConfigRelFONTECORPO.Value := '';
       fdm.TConfigRelFONTECABE.Value := '';
       fdm.TConfigRelORIENTACAO.Value := 'RETRATO';
       fdm.TconfigrelCAMINHOLOGO.Value := '';
       FDM.TConfigRel.Post;
       FDM.TConfigRel.ApplyUpdates(0);
     end;

   FCustomizar.ETitulo.Text := 'Relatório - '+ form.Caption;
   FCustomizar.filtro := filtro;
   FCustomizar.tabela := grid.DataController.DataSource.DataSet;
   FCustomizar.cxPageControl1.Pages[1].TabVisible := false;
   FCustomizar.ShowModal;
   FCustomizar.Free;
end;

Function ProportionalHeight(var Image: TqrImage; NewHeight:Integer):TqrImage;
var
  W, H: Integer;
  Fator: Double;
begin
  with Image do
    begin
      try
        Visible := False;
        Stretch := False;
        AutoSize := True;

        W := Width;
        H := Height;

        Stretch := True;
        AutoSize := False;

        if NewHeight > H then
          begin
            Fator := NewHeight / H;
            Image.Width := Trunc(W * Fator);
            Image.Height := NewHeight;
          end;

        if NewHeight < H then
          begin
            Fator := H / NewHeight;
            Image.Width := W div Trunc(Fator);
            Image.Height := NewHeight;
          end


      finally
        Visible := True;
        result := image;
      end;
    end;
end;
end.


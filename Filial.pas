unit Filial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, Grids, DBGrids, dxSkinsCore,
  dxSkinBlack;

type
  TFFilial = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    BtCep: TcxButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    BtAddCont: TcxButton;
    BtRevCont: TcxButton;
    DBGrid4: TDBGrid;
    Panel2: TPanel;
    cxButton4: TcxButton;
    BtCancel: TcxButton;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtCepClick(Sender: TObject);
    procedure BtAddContClick(Sender: TObject);
    procedure BtRevContClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codcliente : Integer;
  end;

var
  FFilial: TFFilial;

implementation

uses Principal, DMCliente, DB, Cliente, metodosServ, UBiblio;

{$R *.dfm}

procedure TFFilial.BtAddContClick(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if fdmcliente.TCliFilialENDERECO.value = '' then
    begin
      showmessage('O endereço é obrigatório!');
      DBEdit1.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o local de entrega '+fdmcliente.TCliFilialENDERECO.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if checaform(Fcliente) then
      begin
        if fdmcliente.TCliFilial.State = dsinsert then
          FCliente.codultfilial := FCliente.codultfilial + 1
        else
          editando := true;
        fdmcliente.TCliFilialITEM.Value := FCliente.codultfilial;
        fdmcliente.TCliFilial.Post;
        fdmcliente.QConFilial.Refresh;
        if editando then
        begin
          fdmcliente.TCliFilial.Last;
          FCliente.codultfilial := fdmcliente.TCliFilialITEM.Value;
        end;
      end
      else
      begin
        if fdmcliente.QConFilial.RecordCount > 0 then
        begin
          fdmcliente.QConFilial.Last;
          fdmcliente.TCliFilialITEM.Value := fdmcliente.QConFilialITEM.Value + 1;
          fdmcliente.TCliFilial.Post;
          fdmcliente.TCliFilial.ApplyUpdates(0);
        end
        else
        begin
          fdmcliente.TCliFilialITEM.Value := 1;
          fdmcliente.TCliFilial.Post;
          fdmcliente.TCliFilial.ApplyUpdates(0);
        end;
        fdmcliente.QConFilial.Refresh;
      end;
      fdmcliente.TCliFilial.Append;
      DBEdit4.SetFocus;
    end
    else
    begin
      if fdmcliente.TCliFilial.State = dsedit then
        editando := true;

      fdmcliente.TCliFilial.cancel;
      if editando then
      begin
        fdmcliente.TCliFilial.Last;
        FCliente.codultfilial := fdmcliente.TCliFilialITEM.Value;
      end;
      fdmcliente.TCliFilial.Append;
      DBEdit4.SetFocus;


    end;
end;

procedure TFFilial.BtCancelClick(Sender: TObject);
begin
    modalresult := mrcancel;
end;

procedure TFFilial.BtCepClick(Sender: TObject);
var
  temp : TStringList;
begin
    if (fdmcliente.TCliFilialCEP.Value <> '') and (length(fdmcliente.TCliFilialCEP.Value)=9) and (IsConnectedToInternet) then
    begin
      temp := TStringList.Create;
      temp.Assign(buscaCep(StringReplace(fdmcliente.TCliFilialCEP.Value,'-','',[rfReplaceAll])));
      if temp.Strings[0] = 'CEP não encontrado!' then
      begin
        showmessage('CEP não encontrado!');
        abort;
      end;
      fdmcliente.TCliFilialENDERECO.Value := temp.Strings[0];
      fdmcliente.TCliFilialBAIRRO.Value := temp.Strings[1];
      fdmcliente.TCliFilialCIDADE.Value := temp.Strings[2];
      fdmcliente.TCliFilialUF.Value := temp.Strings[3];
      dbedit6.SetFocus;
    end;
end;

procedure TFFilial.BtFecharClick(Sender: TObject);
begin
    fdmcliente.TCliFilial.Cancel;
    close;
end;

procedure TFFilial.BtRevContClick(Sender: TObject);
begin
  if FdmCliente.TCliFilial.Locate('CODCLI;CODUSU;ITEM',VarArrayOf([FdmCliente.QConFilialCODCLI.Value,FdmCliente.QConFilialCODUSU.Value,FdmCliente.QConFilialITEM.Value]),[]) then
  begin
    FdmCliente.TCliFilial.Delete;
    FdmCliente.TCliFilial.ApplyUpdates(0);
    FdmCliente.QConFilial.Refresh;
  end
  else
    ShowMessage('Não é possível excluir este item!');
end;

procedure TFFilial.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if fdmcliente.TCliFilialENDERECO.value = '' then
    begin
      showmessage('O endereço é obrigatório!');
      DBEdit1.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o local de entrega '+fdmcliente.TCliFilialENDERECO.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if fdmcliente.TCliFilial.State = dsinsert then
        FCliente.codultfilial := FCliente.codultfilial + 1
      else
        editando := true;
      fdmcliente.TCliFilialITEM.Value := FCliente.codultfilial;
      fdmcliente.TCliFilial.Post;
      if editando then
      begin
        fdmcliente.TCliFilial.Last;
        FCliente.codultfilial := fdmcliente.TCliFilialITEM.Value;
      end;
      fdmcliente.TCliFilial.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if fdmcliente.TCliFilial.State = dsedit then
        editando := true;

      fdmcliente.TCliFilial.cancel;
      if editando then
      begin
        fdmcliente.TCliFilial.Last;
        FCliente.codultfilial := fdmcliente.TCliFilialITEM.Value;
      end;
      fdmcliente.TCliFilial.Append;
      DBEdit2.SetFocus;


    end;
end;

procedure TFFilial.cxButton4Click(Sender: TObject);
begin
    ModalResult := mrok;
end;

procedure TFFilial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FdmCliente.TCliFilial.Cancel;
end;

procedure TFFilial.FormShow(Sender: TObject);
begin
  FdmCliente.TCliFilial.Open;
  FdmCliente.TCliFilial.Append;
  DBEdit4.SetFocus;
end;

end.

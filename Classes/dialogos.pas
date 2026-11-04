unit dialogos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Buttons, DB, DbTables, DBCtrls, ComCtrls, Gauges, DBGrids,
  Mask, FileCtrl, Math, BDE, IniFiles, Registry, Jpeg, ExtCtrls, TypInfo,
  WinInet,
  Urlmon, printers, DateUtils, Variants, Grids;

function CustomMessage(const strCaption, Msg: string; AType: TMsgDlgType;
  AButtons: TMsgDlgButtons; DefButton: TModalResult; HelpCtx: Longint): Word;
procedure DisplayMessage(Msg: string);
procedure DisplayError(Msg: string; EnableBeep: Boolean = True);
Function DisplayConfirmation(Msg: string; EnableBeep: Boolean = False;
  DefaultButton: TModalResult = mrYes): Boolean;
procedure NewException(ErrorMsg: string);
Function QuitApplication: Boolean;
function InputString(const ACaption, APrompt, ADefault: string): string;
function InputQueryMask(const ACaption, APrompt: String; var Value: String;
  Mask: String = ''; PasswdChar: Char = #0): Boolean;

implementation

function CustomMessage(const strCaption, Msg: string; AType: TMsgDlgType;
  AButtons: TMsgDlgButtons; DefButton: TModalResult; HelpCtx: Longint): Word;
var
  i: Integer;
begin
  with CreateMessageDialog(Msg, AType, AButtons) do
  Begin
    try
      HelpContext := HelpCtx;
      Caption := strCaption;
      // if Width<150 then Width := 150;
      for i := 0 to ComponentCount - 1 do
      begin
        if (Components[i] is TLabel) then
          TLabel(Components[i]).Top := 20;

        if (Components[i] is TButton) then
        begin
          with TButton(Components[i]) do
          Begin
            case ModalResult of
              mrYes:
                Caption := '&Sim';
              mrNo:
                Caption := 'Não';
              mrCancel:
                Caption := '&Cancelar';
              mrAbort:
                Caption := 'Abortar';
              mrRetry:
                Caption := 'Tentar';
              mrIgnore:
                Caption := 'Ignorar';
              mrAll:
                Caption := 'Todos';
            end;
          end;
          if (TButton(Components[i]).ModalResult = DefButton) then
            ActiveControl := TButton(Components[i]);
        end;
      end;
      Result := ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure DisplayMessage(Msg: string);
Begin
  CustomMessage('Informação', Msg, mtInformation, [mbOk], mrOk, 0);
end;

procedure DisplayError(Msg: string; EnableBeep: Boolean = True);
Begin
  if EnableBeep then
    Beep;
  CustomMessage('Erro', Msg, mtError, [mbOk], mrOk, 0);
end;

Function DisplayConfirmation(Msg: string; EnableBeep: Boolean = False;
  DefaultButton: TModalResult = mrYes): Boolean;
Begin
  if EnableBeep then
    Beep;
  Result := CustomMessage('Confirmação', Msg, mtConfirmation, [mbYes, mbNo],
    DefaultButton, 0) = mrYes;
end;

procedure NewException(ErrorMsg: string);
Begin
  raise Exception.Create(ErrorMsg);
end;

Function QuitApplication: Boolean;
Begin
  Result := CustomMessage('Confirmação', 'Deseja encerrar a aplicação?',
    mtConfirmation, [mbYes, mbNo], mrYes, 0) = mrYes;
End;

function InputString(const ACaption, APrompt, ADefault: string): string;

  function InputQuery(const ACaption, APrompt: string;
    var Value: string): Boolean;
  var
    W: TForm;
    Edit: TEdit;
    L: TLabel;
    OKButton, CancelButton: TBitBtn;
  begin
    Result := False;
    W := TForm.Create(Application);
    try
      with W do
      begin
        BorderStyle := bsDialog;
        Ctl3D := True;
        Width := 280;
        Height := 160;
        Caption := ACaption;
        Font.Name := 'MS Sans Serif';
        Position := poScreenCenter;

        L := TLabel.Create(W);
        with L do
        begin
          Parent := W;
          AutoSize := True;
          Left := 10;
          Top := 10;
          Caption := APrompt;
        end;

        Edit := TEdit.Create(W);
        with Edit do
        begin
          Parent := W;
          Left := 10;
          Top := L.Top + L.Height + 5;
          Width := W.ClientWidth - 20;
          MaxLength := 255;
          Text := Value;
          SelectAll;
        end;
        L.FocusControl := Edit;

        OKButton := TBitBtn.Create(W);
        with OKButton do
        begin
          Parent := W;
          Kind := bkOK;
          Style := bsAutoDetect;
          Top := Edit.Top + Edit.Height + 10;
          Width := 77;
          Height := 27;
          Left := (W.ClientWidth div 2) - (((OKButton.Width * 2) + 10) div 2)
        end;

        CancelButton := TBitBtn.Create(W);
        with CancelButton do
        begin
          Parent := W;
          Kind := bkCancel;
          Caption := 'Cancelar';
          Style := bsAutoDetect;
          Top := OKButton.Top;
          Width := 77;
          Height := 27;
          Left := OKButton.Left + OKButton.Width + 10;
        end;
        ClientHeight := OKButton.Top + OKButton.Height + 10;
      end;
      if W.ShowModal = mrOk then
      begin
        Result := True;
        Value := Edit.Text;
      end;
    finally
      W.Free;
    end;
  end;

var
  S: string;
begin
  S := ADefault;
  if InputQuery(ACaption, APrompt, S) then
    Result := S
  else
    Result := ADefault;
end;

function InputQueryMask(const ACaption, APrompt: String; var Value: String;
  Mask: String = ''; PasswdChar: Char = #0): Boolean;
  function GetAveCharSize(Canvas: TCanvas): TPoint;
  var
    i: Integer;
    Buffer: array [0 .. 51] of Char;
  begin
    for i := 0 to 25 do
      Buffer[i] := Chr(i + Ord('A'));
    for i := 0 to 25 do
      Buffer[i + 26] := Chr(i + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X := Result.X div 52;
  end;

var
  Form: TForm;
  Prompt: TLabel;
  MkEdit: TMaskEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      ClientHeight := MulDiv(63, DialogUnits.Y, 8);
      Position := poScreenCenter;
      Prompt := TLabel.Create(Form);

      with Prompt do
      begin
        Parent := Form;
        AutoSize := True;
        Left := MulDiv(8, DialogUnits.X, 4);
        Top := MulDiv(8, DialogUnits.Y, 8);
        Caption := APrompt;
      end;

      MkEdit := TMaskEdit.Create(Form);
      with MkEdit do
      begin
        Parent := Form;
        MkEdit.EditMask := Mask;
        Left := Prompt.Left;
        Top := MulDiv(19, DialogUnits.Y, 8);
        Width := MulDiv(164, DialogUnits.X, 4);
        MaxLength := 255;
        PasswordChar := PasswdChar;
        Text := Value;
        SelectAll;
      end;

      ButtonTop := MulDiv(41, DialogUnits.Y, 8);
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);

      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := 'Ok';
        ModalResult := mrOk;
        Default := True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := 'Cancelar';
        ModalResult := mrCancel;
        Cancel := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      if ShowModal = mrOk then
      begin
        Value := MkEdit.Text;
        Result := True;
      end;
    finally
      Form.Free;
    end;
end;

end.

unit FuncoesDEV;

interface
uses
  cxEditConsts, cxFilterControlStrs, cxGridStrs,cxClasses;

procedure renomeia();

implementation

procedure renomeia();
begin

//renomeia a grid da devexpress
  cxSetResourceString(@scxGridGroupByBoxCaption, 'Arraste as colunas para agrupa-las'); //precisa da unit cxGridStrs
  //cxSetResourceString(@scxGridDeletingConfirmationCaption, 'Confirmar');
  cxSetResourceString(@scxGridDeletingFocusedConfirmationText, 'Deletar registro?');
  cxSetResourceString(@scxGridDeletingSelectedConfirmationText, 'Deletar todos os registros?');
  cxSetResourceString(@scxGridNoDataInfoText, '<Sem Dados>');
  cxSetResourceString(@scxGridFilterRowInfoText, 'Clique aqui para definir o filtro');
  cxSetResourceString(@scxGridFilterIsEmpty, '<Filtro vazio>');
  cxSetResourceString(@scxGridCustomizationFormCaption, 'Customizar');
  cxSetResourceString(@scxGridFilterApplyButtonCaption, 'Aplicar Filtro');
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption, 'Customizar...');
  cxSetResourceString(@scxGridColumnsQuickCustomizationHint, 'Clique aqui para mostrar/esconder/mover colunas');
  cxSetResourceString(@scxGridBandsQuickCustomizationHint, 'Clique aqui para mostrar/esconder/mover bandas');
  cxSetResourceString(@scxGridCustomizationFormBandsPageCaption, 'Bandas');
  cxSetResourceString(@scxGridCustomizationFormRowsPageCaption, 'Linhas');

  cxSetResourceString(@scxGridYesterday, 'Ontem');
  cxSetResourceString(@scxGridToday, 'Hoje');
  cxSetResourceString(@scxGridTomorrow, 'Amanhã');
  cxSetResourceString(@scxGridLast30Days, 'Últimos 30 dias');
  cxSetResourceString(@scxGridLast14Days, 'Últimos 14 dias');
  cxSetResourceString(@scxGridLast7Days, 'Últimos 7 dias');
  cxSetResourceString(@scxGridNext7Days, 'Próximos 7 dias');
  cxSetResourceString(@scxGridNext14Days, 'Próximos 14 dias');
  cxSetResourceString(@scxGridNext30Days, 'Próximos 30 dias');
  cxSetResourceString(@scxGridLastTwoWeeks, 'Últimas 2 semanas');
  cxSetResourceString(@scxGridLastWeek, 'Última semana');
  cxSetResourceString(@scxGridThisWeek , 'Esta semana');
  cxSetResourceString(@scxGridNextWeek, 'Próxima semana');
  cxSetResourceString(@scxGridNextTwoWeeks, 'Próximas 2 semanas');
  cxSetResourceString(@scxGridLastMonth, 'Último mês');
  cxSetResourceString(@scxGridThisMonth, 'Este mês');
  cxSetResourceString(@scxGridNextMonth, 'Próximo mês');
  cxSetResourceString(@scxGridLastYear, 'Último ano');
  cxSetResourceString(@scxGridThisYear, 'Este ano');
  cxSetResourceString(@scxGridNextYear, 'Próximo ano');
  cxSetResourceString(@scxGridPast, 'Passado');
  cxSetResourceString(@scxGridFuture, 'Futuro');



  //renomeia filtros devexpress

  // precisa da unit cxFilterControlStrs


// cxFilterBoolOperator
{  cxSetResourceString(@cxSFilterBoolOperatorAnd,'E');        // all
  cxSetResourceString(@cxSFilterBoolOperatorOr,'OU');          // any
  cxSFilterBoolOperatorNotAnd = 'NOT AND'; // not all
  cxSFilterBoolOperatorNotOr = 'NOT OR';   // not any                }
  //
  cxSetResourceString(@cxSFilterRootButtonCaption, 'Filtro');
  cxSetResourceString(@cxSFilterAddCondition,'Adicionar &Condição');
  cxSetResourceString(@cxSFilterAddGroup, 'Adicionar &Grupo');
  cxSetResourceString(@cxSFilterRemoveRow, '&Remover linha');
  cxSetResourceString(@cxSFilterClearAll, 'Apagar &Tudo');
  cxSetResourceString(@cxSFilterFooterAddCondition, 'Precione o botão para adicionar nova condição');

  cxSetResourceString(@cxSFilterGroupCaption, 'Aplicar para as seguintes condições');
  //cxSFilterRootGroupCaption = '<root>';
  //cxSFilterControlNullString = '<empty>';

  cxSetResourceString(@cxSFilterErrorBuilding, 'Não pode construir filtro para esta fonte');

  //FilterDialog
  cxSetResourceString(@cxSFilterDialogCaption, 'Customizar filtro');
  cxSetResourceString(@cxSFilterDialogInvalidValue, 'Valor invalido');
  //cxSFilterDialogUse = 'Use';
  cxSetResourceString(@cxSFilterDialogSingleCharacter, 'Para representar qualquer caractere unico');
  cxSetResourceString(@cxSFilterDialogCharactersSeries, 'Para representar uma série de caracteres');
  //cxSFilterDialogOperationAnd = 'AND';
  //cxSFilterDialogOperationOr = 'OR';
  cxSetResourceString(@cxSFilterDialogRows, 'Mostrar linhas onde:');

  // FilterControlDialog
  cxSetResourceString(@cxSFilterControlDialogCaption, 'Construir Filtro');
  cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, 'Abra um filtro existente');
  cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, 'Salve o filtro ativo');
  cxSetResourceString(@cxSFilterControlDialogActionSaveCaption, '&Salvar Como...');
  cxSetResourceString(@cxSFilterControlDialogActionSaveHint, 'Salvar Como|Salva o filtro ativo com um novo nome');
  cxSetResourceString(@cxSFilterControlDialogActionOpenCaption, '&Abrir...');
  cxSetResourceString(@cxSFilterControlDialogActionOpenHint, 'Abrir|Abre um filtro existente');
  cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, '&Aplicar');
  cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, 'Cancelar');








  //renomeia controles devexpress

  // precisa da unit cxEditConsts




  cxSetResourceString(@cxSEditButtonCancel, 'Cancelar');
  //cxSEditButtonOK = 'OK';
  cxSetResourceString(@cxSEditDateConvertError, 'Não foi possível converter data');
  cxSetResourceString(@cxSEditInvalidRepositoryItem, 'O repositório e itens não é aceitavel');
  cxSetResourceString(@cxSEditNumericValueConvertError, 'Não foi possível converter o valor para numérico');
  cxSetResourceString(@cxSEditPopupCircularReferencingError, 'Referência circular não é permitida');
  cxSetResourceString(@cxSEditPostError, 'Ocorreu um erro durante a gravação do valor editado');
  cxSetResourceString(@cxSEditTimeConvertError, 'Não foi possível converter para hora');
  cxSetResourceString(@cxSEditValidateErrorText, 'Valor invalido, precione ESC para cancelar');
  cxSetResourceString(@cxSEditValueOutOfBounds, 'Valor for dos limites');

  // blob
  //cxSBlobButtonOK                    = '&OK';
  cxSetResourceString(@cxSBlobButtonCancel, '&Cancelar');
  cxSetResourceString(@cxSBlobButtonClose, '&Fechar');
  //cxSBlobMemo                        = '(MEMO)';
  //cxSBlobMemoEmpty                   = '(memo)';
  //cxSBlobPicture                     = '(PICTURE)';
  //cxSBlobPictureEmpty                = '(picture)';

  // popup menu items
  cxSetResourceString(@cxSMenuItemCaptionCut,'&Recortar');
  cxSetResourceString(@cxSMenuItemCaptionCopy, '&Copiar');
  cxSetResourceString(@cxSMenuItemCaptionPaste,'&Colar');
  cxSetResourceString(@cxSMenuItemCaptionDelete, '&Delete');
  cxSetResourceString(@cxSMenuItemCaptionLoad, '&Carregar...');
  cxSetResourceString(@cxSMenuItemCaptionSave, '&Salvar Como...');

  // date
  cxSetResourceString(@cxSDatePopupClear,'Limpar');
  cxSetResourceString(@cxSDatePopupNow,'Agora');
  //cxSetResourceString(@cxSDatePopupOK                     = 'OK';
  cxSetResourceString(@cxSDatePopupToday,'Hoje');
  cxSetResourceString(@cxSDateError,'Data inválida');

  // navigator
  cxSetResourceString(@cxNavigatorHint_First, 'Primeiro registro');
  cxSetResourceString(@cxNavigatorHint_Prior, 'Último registro');
  cxSetResourceString(@cxNavigatorHint_PriorPage, 'Primeira Página');
  cxSetResourceString(@cxNavigatorHint_Next, 'Próximo registro');
  cxSetResourceString(@cxNavigatorHint_NextPage, 'Próxima página');
  cxSetResourceString(@cxNavigatorHint_Last, 'Último registro');
  cxSetResourceString(@cxNavigatorHint_Insert, 'Inserir');
  cxSetResourceString(@cxNavigatorHint_Append, 'Inserir no final');
  cxSetResourceString(@cxNavigatorHint_Delete, 'Deletar');
  cxSetResourceString(@cxNavigatorHint_Edit, 'Editar');
  cxSetResourceString(@cxNavigatorHint_Post, 'Gravar');
  cxSetResourceString(@cxNavigatorHint_Cancel, 'Cancelar');
  cxSetResourceString(@cxNavigatorHint_Refresh, 'Atualizar');
  cxSetResourceString(@cxNavigatorHint_SaveBookmark, 'Salvar Bookmark');
  cxSetResourceString(@cxNavigatorHint_GotoBookmark, 'Ir para Bookmark');
  cxSetResourceString(@cxNavigatorHint_Filter, 'Filtrar data');
  cxSetResourceString(@cxNavigator_DeleteRecordQuestion, 'Deletar registro?');

  // edit repository
  {scxSEditRepositoryBlobItem         = 'BlobEdit|Represents the BLOB editor';
  scxSEditRepositoryButtonItem       = 'ButtonEdit|Represents an edit control with embedded buttons';
  scxSEditRepositoryCalcItem         = 'CalcEdit|Represents an edit control with a dropdown calculator window';
  scxSEditRepositoryCheckBoxItem     = 'CheckBox|Represents a check box control that allows selecting an option';
  scxSEditRepositoryComboBoxItem     = 'ComboBox|Represents the combo box editor';
  scxSEditRepositoryCurrencyItem     = 'CurrencyEdit|Represents an editor enabling editing currency data';
  scxSEditRepositoryDateItem         = 'DateEdit|Represents an edit control with a dropdown calendar';
  scxSEditRepositoryHyperLinkItem    = 'HyperLink|Represents a text editor with hyperlink functionality';
  scxSEditRepositoryImageComboBoxItem = 'ImageComboBox|Represents an editor displaying the list of images and text strings within the dropdown window';
  scxSEditRepositoryImageItem        = 'Image|Represents an image editor';
  scxSEditRepositoryLookupComboBoxItem = 'LookupComboBox|Represents a lookup combo box control';
  scxSEditRepositoryMaskItem         = 'MaskEdit|Represents a generic masked edit control.';
  scxSEditRepositoryMemoItem         = 'Memo|Represents an edit control that allows editing memo data';
  scxSEditRepositoryMRUItem          = 'MRUEdit|Represents a text editor displaying the list of most recently used items (MRU) within a dropdown window';
  scxSEditRepositoryPopupItem        = 'PopupEdit|Represents an edit control with a dropdown list';
  scxSEditRepositorySpinItem         = 'SpinEdit|Represents a spin editor';
  scxSEditRepositoryRadioGroupItem   = 'RadioGroup|Represents a group of radio buttons';
  scxSEditRepositoryTextItem         = 'TextEdit|Represents a single line text editor';
  scxSEditRepositoryTimeItem         = 'TimeEdit|Represents an editor displaying time values';}

  //scxRegExprLine = 'Line';
  //scxRegExprChar = 'Char';
  {scxRegExprNotAssignedSourceStream = 'The source stream is not assigned';
  scxRegExprEmptySourceStream = 'The source stream is empty';
  scxRegExprCantUsePlusQuantifier = 'The ''+'' quantifier cannot be applied here';
  scxRegExprCantUseStarQuantifier = 'The ''*'' quantifier cannot be applied here';
  scxRegExprCantCreateEmptyAlt = 'The alternative should not be empty';
  scxRegExprCantCreateEmptyBlock = 'The block should not be empty';
  scxRegExprIllegalSymbol = 'Illegal ''%s''';
  scxRegExprIllegalQuantifier = 'Illegal quantifier ''%s''';
  scxRegExprNotSupportQuantifier = 'The parameter quantifiers are not supported';
  scxRegExprIllegalIntegerValue = 'Illegal integer value';
  scxRegExprTooBigReferenceNumber = 'Too big reference number';
  scxRegExprCantCreateEmptyEnum = 'Can''t create empty enumeration';
  scxRegExprSubrangeOrder = 'The starting character of the subrange must be less than the finishing one';
  scxRegExprHexNumberExpected0 = 'Hexadecimal number expected';
  scxRegExprHexNumberExpected = 'Hexadecimal number expected but ''%s'' found';
  scxRegExprMissing = 'Missing ''%s''';
  scxRegExprUnnecessary = 'Unnecessary ''%s''';
  scxRegExprIncorrectSpace = 'The space character is not allowed after ''\''';
  scxRegExprNotCompiled = 'Regular expression is not compiled';
  scxRegExprIncorrectParameterQuantifier = 'Incorrect parameter quantifier';
  scxRegExprCantUseParameterQuantifier = 'The parameter quantifier cannot be applied here';}

  cxSetResourceString(@scxMaskEditRegExprError, 'Erro na expressão regular');
  cxSetResourceString(@scxMaskEditInvalidEditValue, 'O valor editado é inválido');
  //scxMaskEditNoMask = 'None';
  cxSetResourceString(@scxMaskEditIllegalFileFormat, 'Formato de arquivo inválido');
  //scxMaskEditEmptyMaskCollectionFile = 'The mask collection file is empty';
  //scxMaskEditMaskCollectionFiles = 'Mask collection files';
  cxSetResourceString(@cxSSpinEditInvalidNumericValue, 'Valor numérico inválido');
end;

end.

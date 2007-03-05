object frmUpdateSellPrices: TfrmUpdateSellPrices
  Left = 258
  Top = 170
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Update Sell Prices..'
  ClientHeight = 354
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinGroupBox1: TbsSkinGroupBox
    Left = 172
    Top = 124
    Width = 269
    Height = 165
    TabOrder = 6
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'Markup Calculation'
    object bsSkinLabel1: TbsSkinLabel
      Left = 8
      Top = 28
      Width = 161
      Height = 21
      TabOrder = 0
      SkinDataName = 'label'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      BorderStyle = bvFrame
      Caption = 'Percentage'
      AutoSize = False
    end
    object txtMarkupPercentage: TbsSkinSpinEdit
      Left = 8
      Top = 48
      Width = 161
      Height = 20
      TabOrder = 1
      SkinDataName = 'spinedit'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ValueType = vtInteger
      Value = 30.000000000000000000
      Increment = 1.000000000000000000
      EditorEnabled = True
      MaxLength = 0
    end
  end
  object btnOk: TbsSkinButton
    Left = 300
    Top = 304
    Width = 67
    Height = 25
    TabOrder = 0
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Update'
    NumGlyphs = 1
    Spacing = 1
    Default = True
    OnClick = btnOkClick
  end
  object btnCancel: TbsSkinButton
    Left = 376
    Top = 304
    Width = 67
    Height = 25
    TabOrder = 1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Close'
    NumGlyphs = 1
    Spacing = 1
    Cancel = True
    OnClick = btnCancelClick
  end
  object rdoColumnSelect: TbsSkinRadioGroup
    Left = 172
    Top = 8
    Width = 269
    Height = 109
    TabOrder = 2
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'Build Sell prices based on ?'
    OnClick = rdoColumnSelectClick
    ButtonSkinDataName = 'radiobox'
    ButtonDefaultFont.Charset = DEFAULT_CHARSET
    ButtonDefaultFont.Color = clWindowText
    ButtonDefaultFont.Height = 14
    ButtonDefaultFont.Name = 'Arial'
    ButtonDefaultFont.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Standard Relay Calculation'
      'Cost Price Column'
      'Existing Selling Price Column'
      'or Custom SQL update command')
  end
  object lstSupplierList: TbsSkinCheckListBox
    Left = 8
    Top = 24
    Width = 153
    Height = 305
    TabOrder = 3
    SkinDataName = 'checklistbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinItemHeight = True
    Columns = 0
    CaptionMode = False
    DefaultCaptionHeight = 20
    DefaultCaptionFont.Charset = DEFAULT_CHARSET
    DefaultCaptionFont.Color = clWindowText
    DefaultCaptionFont.Height = 14
    DefaultCaptionFont.Name = 'Arial'
    DefaultCaptionFont.Style = []
    DefaultItemHeight = 20
    ItemIndex = -1
    MultiSelect = False
    ListBoxFont.Charset = DEFAULT_CHARSET
    ListBoxFont.Color = clWindowText
    ListBoxFont.Height = 14
    ListBoxFont.Name = 'Arial'
    ListBoxFont.Style = []
    ListBoxTabOrder = 0
    ListBoxTabStop = True
    ListBoxDragMode = dmManual
    ListBoxDragKind = dkDrag
    ListBoxDragCursor = crDrag
    ExtandedSelect = True
    Sorted = False
    AutoComplete = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ImageIndex = -1
    NumGlyphs = 1
    Spacing = 2
    RowCount = 0
  end
  object lblSupplierList: TbsSkinLabel
    Left = 8
    Top = 8
    Width = 153
    Height = 17
    TabOrder = 4
    SkinDataName = 'label'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    BorderStyle = bvFrame
    Caption = 'Supplier'
    AutoSize = False
  end
  object SynMemo1: TSynMemo
    Left = 172
    Top = 124
    Width = 269
    Height = 165
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 5
    Gutter.DigitCount = 3
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Highlighter = SynSQLSyn1
    Lines.Strings = (
      'UPDATE'
      '  products'
      'SET '
      '  OurSellingPrice = ROUND((OurBuyingPrice*1.5)*1.1,2)')
  end
  object gagProgress: TbsSkinGauge
    Left = 172
    Top = 308
    Width = 117
    Height = 20
    TabOrder = 7
    Visible = False
    SkinDataName = 'gauge'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    ShowProgressText = False
    ShowPercent = True
    MinValue = 0
    MaxValue = 100
    Value = 50
    Vertical = False
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    MinHeight = 0
    MinWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 168
    Top = 176
  end
  object QryDoUpdates: TADOQuery
    Parameters = <>
    Left = 208
    Top = 176
  end
  object dlgMessage: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ButtonSkinDataName = 'button'
    MessageLabelSkinDataName = 'stdlabel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    UseSkinFont = True
    Left = 280
    Top = 192
  end
  object SynSQLSyn1: TSynSQLSyn
    Left = 408
    Top = 32
  end
  object dlgSQL: TbsSkinTextDialog
    ShowToolBar = True
    ClientWidth = 350
    ClientHeight = 200
    Caption = 'Input text'
    AlphaBlend = False
    AlphaBlendValue = 200
    AlphaBlendAnimation = False
    ButtonSkinDataName = 'button'
    MemoSkinDataName = 'memo'
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    DefaultMemoFont.Charset = DEFAULT_CHARSET
    DefaultMemoFont.Color = clWindowText
    DefaultMemoFont.Height = 14
    DefaultMemoFont.Name = 'Arial'
    DefaultMemoFont.Style = []
    UseSkinFont = True
    Left = 240
    Top = 176
  end
  object SynPasSyn1: TSynPasSyn
    Left = 408
    Top = 64
  end
  object DelphiWebScriptII: TDelphiWebScriptII
    Config.CompilerOptions = []
    Config.MaxDataSize = 0
    Config.Timeout = 0
    Left = 408
    Top = 96
  end
  object dlgCompileErrors: TbsSkinTextDialog
    ShowToolBar = True
    ClientWidth = 350
    ClientHeight = 200
    Caption = 'Input text'
    AlphaBlend = False
    AlphaBlendValue = 200
    AlphaBlendAnimation = False
    ButtonSkinDataName = 'button'
    MemoSkinDataName = 'memo'
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    DefaultMemoFont.Charset = DEFAULT_CHARSET
    DefaultMemoFont.Color = clWindowText
    DefaultMemoFont.Height = 14
    DefaultMemoFont.Name = 'Arial'
    DefaultMemoFont.Style = []
    UseSkinFont = True
    Left = 264
    Top = 296
  end
end

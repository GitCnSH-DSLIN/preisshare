object frmCustomerAdd: TfrmCustomerAdd
  Left = 201
  Top = 107
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Customer/Prospect Add..'
  ClientHeight = 391
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinGroupBox1: TbsSkinGroupBox
    Left = 8
    Top = 40
    Width = 357
    Height = 150
    TabOrder = 0
    SkinData = frmMain.bsSkinData1
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
    Caption = 'Name and Address Details'
    object bsSkinLabel1: TbsSkinLabel
      Left = 12
      Top = 32
      Width = 257
      Height = 21
      TabOrder = 0
      SkinData = frmMain.bsSkinData1
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
      Caption = 'Name'
      AutoSize = False
    end
    object bsSkinEdit1: TbsSkinEdit
      Left = 12
      Top = 52
      Width = 257
      Height = 20
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 20
      ButtonMode = False
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object bsSkinEdit2: TbsSkinEdit
      Left = 12
      Top = 100
      Width = 257
      Height = 20
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 20
      ButtonMode = False
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object bsSkinLabel2: TbsSkinLabel
      Left = 12
      Top = 80
      Width = 257
      Height = 21
      TabOrder = 3
      SkinData = frmMain.bsSkinData1
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
      Caption = 'Email Address'
      AutoSize = False
    end
  end
  object bsSkinGroupBox2: TbsSkinGroupBox
    Left = 8
    Top = 200
    Width = 129
    Height = 129
    TabOrder = 1
    SkinData = frmMain.bsSkinData1
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
    Caption = 'Update Frequency'
    object bsSkinCheckRadioBox1: TbsSkinCheckRadioBox
      Left = 8
      Top = 52
      Width = 101
      Height = 25
      TabOrder = 0
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'radiobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = True
      Checked = True
      GroupIndex = 1
      Caption = 'Weekly'
    end
    object bsSkinCheckRadioBox2: TbsSkinCheckRadioBox
      Left = 8
      Top = 76
      Width = 101
      Height = 25
      TabOrder = 1
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'radiobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = True
      Checked = False
      GroupIndex = 1
      Caption = 'Fortnightly'
    end
    object bsSkinCheckRadioBox3: TbsSkinCheckRadioBox
      Left = 8
      Top = 100
      Width = 109
      Height = 25
      TabOrder = 2
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'radiobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = True
      Checked = False
      GroupIndex = 1
      Caption = 'When Changed'
    end
    object bsSkinCheckRadioBox8: TbsSkinCheckRadioBox
      Left = 8
      Top = 28
      Width = 109
      Height = 25
      TabOrder = 3
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'radiobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = True
      Checked = False
      GroupIndex = 1
      Caption = 'Daily'
    end
  end
  object bsSkinButton1: TbsSkinButton
    Left = 204
    Top = 336
    Width = 75
    Height = 25
    TabOrder = 2
    SkinData = frmMain.bsSkinData1
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
    Caption = 'Save'
    NumGlyphs = 1
    Spacing = 1
    ModalResult = 1
  end
  object bsSkinButton2: TbsSkinButton
    Left = 288
    Top = 336
    Width = 75
    Height = 25
    TabOrder = 3
    SkinData = frmMain.bsSkinData1
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
    ModalResult = 2
  end
  object bsSkinGroupBox3: TbsSkinGroupBox
    Left = 152
    Top = 200
    Width = 93
    Height = 129
    TabOrder = 4
    SkinData = frmMain.bsSkinData1
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
    Caption = 'Pricelist Format'
    object bsSkinCheckRadioBox4: TbsSkinCheckRadioBox
      Left = 8
      Top = 28
      Width = 69
      Height = 25
      TabOrder = 0
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'HTML'
    end
    object bsSkinCheckRadioBox5: TbsSkinCheckRadioBox
      Left = 8
      Top = 48
      Width = 69
      Height = 25
      TabOrder = 1
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'XLS'
    end
    object bsSkinCheckRadioBox6: TbsSkinCheckRadioBox
      Left = 8
      Top = 68
      Width = 69
      Height = 25
      TabOrder = 2
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'XML'
    end
    object bsSkinCheckRadioBox7: TbsSkinCheckRadioBox
      Left = 8
      Top = 88
      Width = 69
      Height = 25
      TabOrder = 3
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'CSV'
    end
  end
  object bsSkinControlBar1: TbsSkinControlBar
    Left = 0
    Top = 0
    Width = 386
    Height = 33
    SkinDataName = 'controlbar'
    SkinData = frmMain.bsSkinData1
    SkinBevel = False
    Align = alTop
    AutoDrag = False
    AutoSize = True
    RowSnap = False
    TabOrder = 5
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 11
      Top = 2
      Width = 350
      Height = 25
      TabOrder = 0
      SkinData = frmMain.bsSkinData1
      SkinDataName = 'toolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 25
      UseSkinFont = True
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'bsSkinToolBar1'
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = False
      Flat = False
      object bsSkinSpeedButton1: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 49
        Height = 25
        SkinData = frmMain.bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Search'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
      end
      object bsSkinSpeedButton2: TbsSkinSpeedButton
        Left = 49
        Top = 0
        Width = 48
        Height = 25
        SkinData = frmMain.bsSkinData1
        SkinDataName = 'toolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Email'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
      end
    end
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
    SkinData = frmMain.bsSkinData1
    MinHeight = 0
    MinWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 164
    Top = 340
  end
end
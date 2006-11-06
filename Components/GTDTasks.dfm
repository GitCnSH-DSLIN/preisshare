object GTDTaskPanel: TGTDTaskPanel
  Left = 0
  Top = 0
  Width = 430
  Height = 289
  TabOrder = 0
  object bsSkinSpeedButton1: TbsSkinSpeedButton
    Left = 328
    Top = 280
    Width = 29
    Height = 25
    Visible = False
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
    Caption = 'Start'
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinSpeedButton1Click
  end
  object bsSkinSpeedButton2: TbsSkinSpeedButton
    Left = 364
    Top = 280
    Width = 29
    Height = 25
    Visible = False
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
    Caption = 'Stop'
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinSpeedButton2Click
  end
  object bsSkinSpeedButton3: TbsSkinSpeedButton
    Left = 164
    Top = 280
    Width = 33
    Height = 21
    Visible = False
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
    Caption = 'Load'
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinSpeedButton3Click
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 289
    TabOrder = 3
    SkinDataName = 'panel'
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
    BorderStyle = bvNone
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel1'
    Align = alClient
    object btnShowDetails: TbsSkinSpeedButton
      Left = 12
      Top = 256
      Width = 69
      Height = 25
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
      Caption = 'Details : Off'
      ShowCaption = True
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnShowDetailsClick
    end
    object btnProcess: TbsSkinButton
      Left = 340
      Top = 256
      Width = 75
      Height = 29
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
      Caption = 'Process'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnProcessClick
    end
  end
  object mmoReport: TbsSkinMemo
    Left = 12
    Top = 8
    Width = 405
    Height = 241
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    BitMapBG = False
    SkinDataName = 'memo'
  end
  object bsSkinGauge1: TbsSkinGauge
    Left = 88
    Top = 260
    Width = 245
    Height = 20
    TabOrder = 1
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
    ShowPercent = False
    MinValue = 0
    MaxValue = 100
    Value = 50
    Vertical = False
  end
  object lstCheckList: TbsSkinListView
    Left = 12
    Top = 8
    Width = 405
    Height = 241
    Columns = <
      item
        Caption = 'Filename'
        Width = 120
      end
      item
        Caption = 'Task Name'
        Width = 130
      end
      item
        Caption = 'Status'
        Width = 140
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    PopupMenu = bsSkinPopupMenu1
    TabOrder = 2
    ViewStyle = vsReport
    HeaderSkinDataName = 'resizebutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    SkinDataName = 'listview'
    DefaultColor = clWindow
  end
  object cbxTasks: TbsSkinComboBox
    Left = 100
    Top = 256
    Width = 120
    Height = 20
    TabOrder = 4
    Visible = False
    SkinDataName = 'combobox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    AlphaBlend = False
    AlphaBlendValue = 0
    AlphaBlendAnimation = False
    HideSelection = True
    AutoComplete = True
    ListBoxUseSkinFont = True
    ListBoxUseSkinItemHeight = True
    ImageIndex = -1
    ListBoxCaptionMode = False
    ListBoxDefaultFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultFont.Color = clWindowText
    ListBoxDefaultFont.Height = 14
    ListBoxDefaultFont.Name = 'Arial'
    ListBoxDefaultFont.Style = []
    ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultCaptionFont.Color = clWindowText
    ListBoxDefaultCaptionFont.Height = 14
    ListBoxDefaultCaptionFont.Name = 'Arial'
    ListBoxDefaultCaptionFont.Style = []
    ListBoxDefaultItemHeight = 20
    ListBoxCaptionAlignment = taLeftJustify
    TabStop = True
    ItemIndex = -1
    DropDownCount = 8
    HorizontalExtent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Sorted = False
    Style = bscbFixedStyle
  end
  object DosCommand: TDosCommand
    Left = 4
    Top = 16
    Width = 0
    Height = 0
    OnNewLine = DosCommandNewLine
    OnTerminated = DosCommandTerminated
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
  end
  object SmtpCli1: TSmtpCli
    Tag = 0
    LocalAddr = '0.0.0.0'
    Port = 'smtp'
    AuthType = smtpAuthNone
    CharSet = 'iso-8859-1'
    ContentType = smtpPlainText
    OwnHeaders = False
    OnRequestDone = SmtpCli1RequestDone
    Left = 4
    Top = 84
  end
  object bsSkinMessage1: TbsSkinMessage
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
    Left = 36
    Top = 16
  end
  object bsSkinPopupMenu1: TbsSkinPopupMenu
    Left = 36
    Top = 48
    object Run1: TMenuItem
      Caption = 'Start'
      OnClick = Run1Click
    end
    object Stop1: TMenuItem
      Caption = 'Stop'
    end
  end
  object ftpClient: TIdFTP
    OnStatus = ftpClientStatus
    MaxLineAction = maException
    ReadTimeout = 0
    OnWork = ftpClientWork
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    OnAfterClientLogin = ftpClientAfterClientLogin
    Left = 36
    Top = 116
  end
end

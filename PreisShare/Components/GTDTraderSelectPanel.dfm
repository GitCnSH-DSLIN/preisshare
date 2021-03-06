object pnlTraderGet: TpnlTraderGet
  Left = 0
  Top = 0
  Width = 387
  Height = 297
  TabOrder = 0
  OnResize = FrameResize
  object bsSkinPanel1: TbsSkinPanel
    Left = 0
    Top = 0
    Width = 387
    Height = 297
    TabOrder = 0
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
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel1'
    Align = alClient
    object grdScroll: TbsSkinScrollBar
      Left = 356
      Top = 52
      Width = 19
      Height = 165
      TabOrder = 3
      Visible = False
      SkinDataName = 'vscrollbar'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 19
      DefaultHeight = 0
      UseSkinFont = True
      Both = False
      BothMarkerWidth = 19
      BothSkinDataName = 'bothhscrollbar'
      CanFocused = False
      Kind = sbVertical
      PageSize = 0
      Min = 0
      Max = 100
      Position = 0
      SmallChange = 1
      LargeChange = 1
    end
    object lblEnterTraderName: TbsSkinLabel
      Left = 8
      Top = 8
      Width = 257
      Height = 16
      TabOrder = 2
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
    object btnSelect: TbsSkinButton
      Left = 308
      Top = 244
      Width = 75
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
      Caption = 'Select'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnSelectClick
    end
    object bsSkinDBGrid1: TbsSkinDBGrid
      Left = 8
      Top = 52
      Width = 349
      Height = 165
      TabOrder = 4
      SkinDataName = 'grid'
      UseSkinFont = True
      UseSkinCellHeight = True
      VScrollBar = grdScroll
      GridLineColor = clWindowText
      DefaultCellHeight = 20
      UseColumnsFont = False
      DefaultRowHeight = 17
      MouseWheelSupport = False
      SaveMultiSelection = False
      PickListBoxSkinDataName = 'listbox'
      PickListBoxCaptionMode = False
      DataSource = dsSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = bsSkinDBGrid1CellClick
    end
    object txtEnterTraderName: TbsSkinEdit
      Left = 8
      Top = 24
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
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnButtonClick = txtEnterTraderNameButtonClick
      OnKeyPress = txtEnterTraderNameKeyPress
    end
    object pnlNewTrader: TbsSkinGroupBox
      Left = 8
      Top = 52
      Width = 370
      Height = 173
      TabOrder = 6
      Visible = False
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
      Caption = 'Address Details'
      object lblAddress: TbsSkinLabel
        Left = 8
        Top = 25
        Width = 233
        Height = 17
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
        Caption = 'Address'
        AutoSize = False
      end
      object txtAddress1: TbsSkinEdit
        Left = 8
        Top = 42
        Width = 233
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
        SkinDataName = 'edit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object txtAddress2: TbsSkinEdit
        Left = 8
        Top = 62
        Width = 233
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
        SkinDataName = 'edit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object lblState: TbsSkinLabel
        Left = 248
        Top = 45
        Width = 113
        Height = 17
        TabOrder = 5
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
        Caption = 'State/Province'
        AutoSize = False
      end
      object cbxState: TbsSkinComboBox
        Left = 248
        Top = 62
        Width = 113
        Height = 20
        TabOrder = 6
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
        ItemIndex = -1
        DropDownCount = 8
        HorizontalExtent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Sorted = False
        Style = bscbEditStyle
      end
      object cbxCountry: TbsSkinComboBox
        Left = 248
        Top = 106
        Width = 113
        Height = 20
        TabOrder = 7
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
        OnClick = cbxCountryClick
      end
      object lblCountry: TbsSkinLabel
        Left = 248
        Top = 89
        Width = 113
        Height = 17
        TabOrder = 8
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
        Caption = 'Country'
        AutoSize = False
      end
      object lblSuburbTown: TbsSkinLabel
        Left = 8
        Top = 89
        Width = 233
        Height = 17
        TabOrder = 3
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
        Caption = 'Suburb / Town'
        AutoSize = False
      end
      object txtSuburbTown: TbsSkinEdit
        Left = 8
        Top = 106
        Width = 233
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
        SkinDataName = 'edit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object txtShortname: TbsSkinEdit
        Left = 8
        Top = 146
        Width = 353
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
        SkinDataName = 'edit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object lblShortName: TbsSkinLabel
        Left = 8
        Top = 129
        Width = 353
        Height = 17
        TabOrder = 10
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
        Caption = 'Short Name (used for searching)'
        AutoSize = False
      end
    end
    object lblCustomerType: TbsSkinLabel
      Left = 276
      Top = 8
      Width = 101
      Height = 17
      TabOrder = 1
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
      Caption = 'Existing or New?'
      AutoSize = False
    end
    object cbxCustomerType: TbsSkinComboBox
      Left = 276
      Top = 24
      Width = 101
      Height = 20
      TabOrder = 5
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
      HideSelection = False
      AutoComplete = True
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      ImageIndex = 0
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
      Text = 'New'
      Items.Strings = (
        'Existing'
        'New')
      ItemIndex = 1
      DropDownCount = 8
      HorizontalExtent = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Sorted = False
      Style = bscbFixedStyle
      OnChange = cbxCustomerTypeChange
    end
  end
  object dsSource: TDataSource
    Left = 36
    Top = 68
  end
  object dlg1: TbsSkinMessage
    AlphaBlend = True
    AlphaBlendAnimation = True
    AlphaBlendValue = 255
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
    Left = 96
    Top = 224
  end
end

object PricelistGenerator: TPricelistGenerator
  Left = 0
  Top = 0
  Width = 534
  Height = 315
  TabOrder = 0
  object pnlBack: TbsSkinPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 315
    TabOrder = 1
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
    Caption = 'pnlBack'
    Align = alClient
    object lblStatus: TbsSkinStdLabel
      Left = 340
      Top = 197
      Width = 181
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ready'
    end
    object lblListCount: TbsSkinStdLabel
      Left = 50
      Top = 410
      Width = 88
      Height = 13
      UseSkinFont = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Alignment = taCenter
      Caption = '0 Customers found'
      OnClick = lblListCountClick
    end
    object btnList: TbsSkinSpeedButton
      Left = 424
      Top = 452
      Width = 73
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
      Caption = 'Browse List'
      ShowCaption = True
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnListClick
    end
    object btnPreview: TbsSkinSpeedButton
      Left = 11
      Top = 486
      Width = 73
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
      Caption = 'Preview'
      ShowCaption = True
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnPreviewClick
    end
    object btnGenerateAll: TbsSkinSpeedButton
      Left = 342
      Top = 260
      Width = 77
      Height = 23
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
      Caption = '&Start'
      ShowCaption = True
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnGenerateAllClick
    end
    object Image1: TImage
      Left = 12
      Top = 16
      Width = 149
      Height = 109
      Picture.Data = {
        0A544A504547496D616765E2200000FFD8FFE000104A46494600010101004800
        480000FFDB00430006040506050406060506070706080A100A0A09090A140E0F
        0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D
        302D283025282928FFDB0043010707070A080A130A0A13281A161A2828282828
        2828282828282828282828282828282828282828282828282828282828282828
        28282828282828282828282828FFC00011080071009603011100021101031101
        FFC4001C0000030101000301000000000000000000040506070300010208FFC4
        004A100002010204030504060606070900000001020304110005122106314113
        2251617107148191153242A1B1C1233382B2D1F02434355272E1366273758392
        A21625445374A3B4D2F1FFC4001A010003010101010000000000000000000002
        030401050006FFC4003111000202010302050401030403000000000001021103
        122131044113223251617181B1F04205C1D1233334A191E1F1FFDA000C030100
        02110311003F004759481D8E61491DA54FD7C27A78FF003F1E58F9D8CF4EC762
        51B3CCFA696A68E4CC2821567D206841BACA7637F223F00798C53826A0E9F727
        CD0735F41A704F0EAE5B430766B7465EFA5AE4FDA3F336DBCCE119B26B958DC7
        1D11A28E6E1C8E4A2932F9E6672D269D406E9D5945FA73B7A7960542E548F3C9
        4ACEB9CC3974D52F95D276C0D0247DABBF26B9BDC1F226C7FC58B611F0129478
        FEC47925E3C9C65CFF007FDD8ED0D63E60B3C12A4695303767A4383A936B36DC
        AC4DBE230FCAB4359170C9F137913C6F943CCFE76A68E8E06522209AEE96DCB1
        DC9F4E7F1C2D79BCA3A5E55ABD827282C94354F7B1B88C01E37B9FB860A6ED6A
        5DFF0020C55797DBF0194329BB11F66DA7E773F861698458650D7A9D85D4AEB0
        4283EBB9E5D3962CC4C5496E2C8E201D9D4692643A97ADEFFCFE3D714E364B34
        33C9805AAAB93724B2A5BF62F8D93A61638F71D118F060932DE49073BA72F9E3
        CCC44E7D2DF622C86BE571B124585FE04E17B9EB48F4D9966A7F51C390AF9CD3
        81F88C7B73757C1F30CF54F97D78CC169E9A58D9661D9B828A3727AF40A318F8
        3C99F94FDA4E719BF1371A663586302969A99691E48C8748D5594950DCAFAE41
        85CDA6CD95C6097B961ECEE68B83B849331A8899E7CC263B13BE80362411D6C6
        DF1C66AA42B4EA6134D97BB4B25743FD66C220A4D83A2DFEF249DFD31C26F6D2
        7D072ECE7D9FD1B2FBF52A76D97CD749E13B693D548E841F91FBFC9D6CCD6AF7
        5C967C38C169E3AE7749A89B5765A46EBA492AADE679FC7069687ADF02E4F579
        1721F03B54D24B31222203B6B236536B96FE7C70EC1E68EA7DC4E6F2CA976136
        4513499B4D2D68882471B199C2EE6FCD89EA397C2F8B30CB52D12EC47963A5F8
        91E19F792D0D1CF9DD2D440CC6392E5182ECEAC083ABE563E6302A5A62F14BED
        F4FF00D04E1AE4B2C7EFFBF3F91FD6CAF575D5109A63DA40F70C1AE2C3ECFC40
        C7979A3B728D7E596FC3183C51C74E1617D42693B653E2028FFEC7193AE63DCD
        56953EC74A750031E40BEDEA07F9E051E63FC92731B2961709DD239F318A313D
        C09044CC92C69346DA91ADB8E4716637D89722DACE79648DF4BD6A8274EB4DBF
        E18C326B6031BF30E727AA96B681269D11243B32A36A00FAE3038BB567498E99
        C1F15FCF192E0D8F24557E7421628AD3A804ADBB13CEC795EDE581EDC02E54F9
        14D57108D3CEB3483B911A0163623ED785FE781FB19ABE4F9E11CFA2145526B3
        DEA68E983ACD513269234AF7AE2DC8057F1C7BB1B176F6308E18635B55534732
        E97CDE96791940D848FF00A65FDD518953B6C6677E6AF62DF386CBE8EA6382BE
        16A9A0CBE24A558D4D89908BDC1EA02A007CDB039377A7D8F4124B711F1FCB5F
        94645157E5D1D33D0D3C812A5245BB2A12AA0AEFE27D711E1E9D648B93FB1D39
        E770928A0DC8649A5A2D50C724E2431B342CC5BB44736E67ED021B7EA06FCF12
        34DBA654E92B1865F591E4758B10935E4D9810A5830B466FB35F90B1E7838BFE
        12EE0495F997287DC6154D95F0F2D340251513C5A832286EEEA05AD7B5CDBEEB
        E2EC6941C62FF590646E71935FA89DE1DEDEAB85E296599D6561244892102468
        AE458AF5B59ADE430DCB1717AE3CA158A4A4B44F863FE0F79CD454CAF1AC9EEC
        81A2453BDF4588F2BD81C0E4929D4A21E38B836A47CF0CE6D50D9854BD523178
        64D4ECD6EF2B31E43CAD7F42704E495658F1DFF7E018A6DBC52E7B7EFC95F5A8
        A8D12C202AA47AD5474B9248F911854ABB0C57DCED4E47611A1DB502CBEB7B7E
        58F23CC3E89ED2D42027BD700F98BFF0C322F760B0FA673EE6BA98377751205A
        E4DCF2FE77BE2EC7BA4C927B6C7C6526F9DD7F5B4C83FF006530E9702F1FA86F
        C306F96B5FA3FE4318F90A1E90ACC085960FF5B50FBAF819701AE487CCAB29A0
        CDE4578E90DBEB4924EA08371B589F5F9602FE4C6B7D903C999D12A921F2DD80
        B0122B5FA743E16C65A329FB113ED178A443C279BD2BD551C6F5CE9490342194
        859080E58916FAA5FAF4C0CE551743312F36FD888F67114557C555199BA32D15
        044D2924580B8D2A37F2BFCB13C16956C549EA97D44BC7B2B9148BF48D44016E
        D2AC08199A57DD89BF82845B742BE78CC7F282C924B61B67F9657CD9F9E1F9A4
        EDE9AB9C54CAEBB09220469523ECD9801E637F219392C58FCBD8A71C5E4C96CD
        2387F2D144D398C44550247005041DAEA2FF0012C7F6B1CAE773A4DF61A3F0FE
        59574BEEDEEC863D6B74E874F336F1DBE3BE1B862A6C564938AB27B8DF88F2FA
        6E2EA4E1B9E02B0AD3A5E68D7F51235CAF2E96B7A5F1D1F0B5C1B642F2E89AAE
        40B349DE8B2BD137610CB48E3B362BCAE798F106D8CC536FC92E7F27B2C52FF5
        23C7E1845356B5270854E628A43D5A7704409008FAC56F63622F6BF9617A6319
        D7C8DD52963FB0570DD40AB861A830B9F79223248D3DE039DBC0DEFF003C1BAC
        72717C3FC80BFD48A6B95F82AB3062B5F2B25B4A6C07928D247FD2309972316E
        191005D233D02953EB63F9E08C67D09596032AFD657B91E23AFE38F27DCF0D72
        F1AA8937BEABFE27F9F963A583D088B37A8F59235F3ACC7CAA147CA141874B81
        70F50CF83AAE9EAB2C6EC18960D76054A9B1D81DC0F03F2C63E42C6EE230CDAC
        BEEEC6DB496F9823192E03EE40713E5B96367B0D4564F2C3310404406CFDD26E
        7CEC3EEC2D3067157B9E1A2CA549726660356C39730FF9E36D835132BF6A797E
        4B3711E4F4660734E21F78AA2E6C597508D05C780ED0FC06119A6D521B04A307
        25F40AE1ECB0651C34F0D52912D6D4BB4C08B1EC6226E2FE7A76FF00161137A6
        35EE0E35BD919C4F94D2CF9A479A977735915D8F68D7ED031127236E6063D29B
        D285B7B94F95652F91D54F3D5D4B48580ECE694921540B000F95C9F97AE20C99
        DE4A4CEE430AC76E25A64928658991B520BCADE479283F0FC308D431C68A1CB5
        4B51CF2A3106C406F0F3C59D34528397B92E79372A5D8CDEB72CAD938A92A2BA
        6D7505848EACA02D4151DD607E0015E98A71CDA7A27F664D921A97890FBA1AE6
        5D856F6743245A5DD59A10EB75B0B5E363D01E9E9E982CD8DFA97280C3957A5F
        0C6D99AA5270E6594691A84545D71EA1755D80DFC77F98C2E31D69D8D9CFC36B
        48370EF646BE8E2D41444E09503BAEB7D4187C87CB1E53B8E99728DD152D51E0
        6E5DE6527ADFB4F5D5CC7CEF853DC31BC44AD5480800A16D27C85FF860972676
        3954315A6249B12A7F0071E3071928B65B4BCB740DB7F3F3F863A983D088B2FA
        99C3259BFEFDAF1B77AB8AFCA35FE1864F8158FD47AA0A96A1969EB2304AA8D3
        2A8FB4879FCB98F4F3C7A5CD9EC6E9145C46E0C597C8A7BBEF49CBA821B02F81
        ADF046717D266D3E6F03E5B30311235A1891BB3E42E0917EA709EE14AFB2054C
        B73A263D559501750D414A2D869DED61CEF8DA40F9BD884E2BE0C9B8DB23ADCC
        696A644CDA82A8D14E2494913247636F22A6471B73B1EB6C4D2DE568A97960B5
        FD4E3ED0AA264A49E3A4A9EC5D48A74611862C01058589E658A0BF91C2E4D39E
        E4AFCB0FA9135195CB9970C47491D6CAD5347544EA4B23689149DFC7BCAC7D49
        C314AD5D09D91430D7D564C91E5D9DC26B32BED11835AE554106DE9B5BD39781
        E65A93DF93E874D7A4D1E9D28A5A64ADCA6447A297EB8DEF11E9F0F5E4703971
        AAB88309BE241FC5B571E4BC0D5AE046CF28102AB3050C5CEFBFF86F8E9E3824
        947D8E7E59BA72F720E86AA2FA3E872FCCA62A1D43C13837EC5BA007C002BFFE
        72DC98F5A6063C8E2D3EE0F2F0FD45771765CB55232CB4CDA8A735600DC30F22
        45BCB9605676A0F1CB9FC84FA7529AC91E3BAF61DF12D4D34BC41509013DAD3A
        A0923FFCC5001DBC48B8B8C2FCD1F3A1ADC64FC397FF0003E9FB395A6ADA7B92
        B0C8A847237EEA91F318DC9A5D49198F52B8B0CCAEA0C93C279A865BFF008588
        FCF0B5C8C6388662E92BB0B1553BFAEDF9E35304F9AF7BD158AFD826FE78F37B
        1EA1FE54BA6869810BFAB5B5B91D86FF00C71D6C3E844193D4C4FC3AE5F3EAD2
        B761EFEF7B5CDACB6F3FCB053E00C7EA08CBBBD471DFAA8FC306F9023C1419D0
        0990D138E4AF137F3F3C0B1BD9121C7B984744D4E1ABE6A026CDDAAA12AC0302
        41371D05BE389EF71925B7342B97882922825A96ACAF9228503B111DEC0124DE
        EDD46D8F3952BA054753A4C45ECAEAAAE9F877894668CAEF74AE454DC317792E
        39732CA07AE22C734D397DCB73C5EAAEC4071D2C6D5514F5159288D55E36D125
        97B4537623E2C4FC4636375B220C8EE429E00E20CB726CE2AC56CE5A09A2BB76
        8FA86B0C2DD79D8B61CAFB814DF08BE9DA4A51253E6A1AAA8A49961A79F4DE46
        25413ABC6DBEFCF63CF1C996E77E275E16A0CD328E2043944CB365553DCA885D
        ACBA3FBC39EFE16186E093BA179EAAFB945C6396AE6D56C29E689AAE2886BA59
        0DD244249171D37BD88C555ABCD174C93569F2C95A22F31AFAE3DA414D4B0280
        407320EFC0E361B750458023F3B6198B2296D2D98ACB8DADE3BA1D7B31ABCCB3
        0A9AB8B34A48D928897A499ADAD54EB013D0587C0DBD3D95476A370B93B018B2
        FAC978AA7A8AEA87041ED1A256B0F1257C54DBF23E798A49AD12E4DC9177AE3C
        7E075963AAE495134258473C8BDDFEE1176207C5461338E86D0F84B5C531AE52
        C2279A45DC2A30E5C8104A9FC46010728B4B71AD34CB2D1B8E5B007E7FE58D4F
        601F2799AB95CBF6B6EA2FF13FE78F3E0F2E4A9A34D11C29A42D945C0E5D371E
        471D9C7E947367C99655F126639457CCB92E50F9AE65366552C91165D31AA1B1
        76246C2E40D883E7D301967A507831B9BFA07F0B7164FEF74994711E59265399
        D42930F7C3C53586E1587DAF238CC59E33741E5E9A58D5F634FCF77E0E57E7A5
        223FF52E1AF917FC498E3EA7CB6A3297FA7558D0A82CDA45C8B29F0F22713F7D
        864A9ADC8AE3092820E0F9972283B492A644A75465B190B95722E76FA80FA624
        EA32B4DC6F62CE93041C7C4ADFB0C3D96D3F6FC3E94958B696BA19241220B140
        B25D0EFD6ECC473E584C2B568F809A7E0A6CC638F386AA387A92B72CA978656A
        3AC49639428EFC72A11723A1FD1ADC7F961CA4D6CC9FC186A54B910F0770B4F9
        E9A9792431524561DD046A73CBEA83D01F9E19AACC9D63DA26F39645A2A61A7A
        8D32760BA9EE2E0B373FBAFF00F36390FE4E8FD0A4A28D259A49D148E80741E9
        E58AB0A5A5C89F27A944CAD3369F35E26CC6AA0B2223958A61706D7D29BDF972
        C52A34922594AE4D9475555966709047EF090D7AF763A80B6BDFECB03B1BF872
        F0B60651D4B70A13D2EE3FF83B64E7FECBF0CE6F55551B25410E5144BAF51D1B
        04BEE0776F63B8B9C626DC9290CF2A8B701070A55366B928553388A224D2D44C
        46B4B9B6936E6BB1B8E9F837363BFA88C33A28B34AC9728CAB2D6A9A749229DE
        492A923DD940B0D6BE3BDCDBA82713CADEECAA34B640794D1D4E5F9853C5472B
        54E5B9835CCA641A6327756076B861EA6E3A93808E394DA51289668B8BD6558A
        69685E48AA05B70C08E4C05F71839C1C1D4899494B747BCE0DE0041FD668DBE0
        318CF22C32E747D2B1821058696E687C3D31DB4A8E65D98766DFD1279B3659A5
        310CC2A03C109D0B3699DFBAE77DBBCD7E86DD00BE22EAFB1D1FE9AB5392FA0C
        1728A4ACCB72D92132D3494352B5D1334A642A46E45CDCE93B6C3C0621C7924A
        4B4F2743363834D4F836CCD7BDC1529F0881F930FE18ED48E02F4913ED26BE7C
        BF84DABE08E9EA638D57B48278C38915881D7D7C3134DD0E5BA3348E8789733E
        1F82BA9691BBB9A16584441555195087B03DD500E9037DBAF4C43962DBD4CBB0
        C9382C68B0A3A95A3E35C961A533AD3C132D26841DC6568E48D3578D9839FDB5
        3E185607E76FEC6F54D6C976FEF632E3BE1FA1CD133B86A9343CE29E6ED55416
        BD99147FCCA3E78A24B764EE5A6A5EC24E1DC869F26CBE2A0B6948C5DC89346A
        636DEF7EBDEFE4618A92DC91DCE4D84AC5A64131D9EA1BB43F1E5F7003A72E78
        E54F9A3B31E0619D66B4591D152D3D754474EF564C68CE4A82C798D5C81F538B
        269C20947B13636A73B7DC9B1C3AD96CF1C94DAAAA0FAE6236D7B0361B731720
        F8EDC8E361993D9F204F038EF1E04D9C1A7811653029594B332016001361F81C
        324F627E06F9FAC14FC27972E63DA5A5703AB32369E77E7B5BEFC02F36C5127A
        12762DA2135040B11658A2671EEF528A3431DECAD6D85EFCF91FBB071934FCDB
        A0251535E5D9FEF073F69135553D4D0E6F04CEB90515188981543DA49A9BBC97
        606FC86C37FC1BE1292D8F6A717B8665DEE54FC1318AA96A1A8ABE60D1C96B08
        0B02C091F6546C6FD09E58995C5DAE50DE7665A70FF124940572DCFD8321EE47
        3B28D2E2DC9AFD7F9F3C5F8B2C72AA64F3838BB432CF72679C46F43792079431
        0BBB463ADBC461197A66A571E028E54D531DE5BAA027B506EA3EB1FB4078E2F5
        2B22D3466D94651F4E655594DFA412B56554B1C854128FDA1D249041037B7536
        F8615962A71DC6F4D9258E7685FECFEBD0710B6539FD438AA894346023156BEF
        A59FA6D6F23702F72019B1F4952D533A39BAB4E35046D92849B287A171A63742
        8581DC0271759CDD2AA88EE3DA2CCAA78625A6E1CA848AB4811AF6B6FD228B8D
        20F426FCFF000E617387B0699D72AA27C93D9D475B50EF1544D4D13C892ECB0B
        8455DC1E405AE7E3887A84E18DBF729E99D495F63146CEE3A6CF2A2B0D46A4A7
        6A5AE4FE91F551648F4AD80E5A5FE36F8E138E2E2A3B01396A94DFC27F8FF26D
        3C561A4CD5B46B431425458DB535EE0FA0BEDEA7CB1435BD8BCB275A513DC419
        ED26474F15456D399FB56D31C4101016D7D4437536DBCBD4E15276F63DE587A8
        F79555D3663574F531387A645D7A86E001E7CBEFC47863AB2ABEC74B2BD18DD7
        72778978B323CCB3D6CB26991B4ADBB191352BF5208B5ADB5B73D31D156F739D
        34C069456E4CC6A321A954A63CB2FAB62D091E08DF5A3FBC7FAB85CB1C641C3A
        894767B850CEB2BCEE668B3049B2BCD1549EC25709DA91D15877641E9B8F2C21
        C678FE514DE3CAAD7276E34A89EAA9A929E9093A74C64A824063B5EFC87C71EC
        534E74FB13E5B6934790CB3FBACF1025DCC7A42817D4C6E36F3E58A1C94580B7
        4651ED36AABA4926C8670562CB942AAEFDF909FADF90FC77C3F1BA8ADCD76DB6
        CB1F69D9B9E1CA5E15CB29D43C2E244954733B22ADBCFEB7AEF8463829C58C94
        A995A869E99B29C8AA503A4F4EA519C96B90C4693E1B2DC1F2B6DB612AD53433
        6761B936695DC392F641DAB32E6274A93DF8FD3C462DC5D52AF3099E16F82EB2
        3CFE93398F4432A3CA05C75BA9C58A9EE899A6B6612F4F4EB472434891D302D7
        3D9285B3137BED6DC9EB8DA3383245AD6A4F6BE34C6A8CB2A5386D5CD19554F9
        FD6BF3C1D6C17636292A4842A87E3E180A3091A9CD529B886A693B50CC512429
        7DC120806DFB1CF191E426B6B2CA555CD72D7A4AAD12514D132C9130376D56E4
        6FB0B5FE77C233C2D7C078A47E7A8384DEB38B9691E198E5D2412412BB1E51A3
        14009B73EEA7CF1C9D4D6C75A114E9FC1ABF1E55C547422A6498D35E05447D01
        CBC87900A7981D6FFC714B971672F3474B6FD8C3B33CD6A6A2AA539D56D54F98
        248D1C9A621D982AC4774721C878FAF89354F639F39393BA3469A2CAE869A7AB
        CA6330A542692A8C42B7DA36036E40F2F1C231A54E4BE8763249B6A2CC7F85DA
        1AACF6B2BE697B1AB753FD1E66D12876363A50EF6B16DC788C533B51A171A6CD
        1E286D51451C2C2328BA882095F97F0B614A4CC9634CE9232FBC461D60ECD9B5
        EA750C971B0BA9FCBC79E33234E22D41C589327CC33086493B188D5C4D216EC5
        D8AD94DEC109DADCAC0EDD2E30978353B37166D2FCC8B6E176A7ACCEA1F73A7A
        98921BBD44750854C4E00B0DF63E37048DB6C322A69D487C96371D51F7177176
        574D9956D34B5F0EED28B58FD56BEA1BF99163EB8C4DA768DD9A1171DD3CA78D
        B867B4A333D3B698CB940CA19CC80DEFE00A91864778BDC1BA68732A55C1ED1E
        A6BC98E4A482896186006EE24508FAADD0112117EB63E18D74D25DCC57C80516
        7351F436586A98495B3533540254EE9701751FEF588BF2BDEFE389B36D16D156
        08DE449945ECFB268786F231512E979A4AC79966B59C09047A81F8EAB0E5C8F3
        B9C743A3CBAE0991F5B1D191AF7341A994B4067520D869974F23E0C3CB91F8E2
        F2530CCE2ADE3E37AB9E560B2D3D606DDAC0EE0FC70DFE262DCDB8D4F73B4B8D
        2EA19748B6DF9F3C299E443F1E5300B16714A5DAB21EEE91B1D04827E00807E0
        7C71910BE061C29C633D541153450CD575414967882E94049B02490355BECF3D
        B1E92D8D495F2379C7D1B43532C91CA1E56798A8B5D751BB585EDCC8B0EA4818
        E2F570F05D2EE74FA6C9AD52E509B3BCBA8B8F3D9BD2E650AFBB4D4E92490991
        AF65566167B78A807C413EB8DF0DF86AF942164B9BFA988714448D9DCF2B1D3D
        B849C023FBC8A4FDF7C64F749838237170F66CA5E3BE23A5E178E9A20D2CB075
        074EB25B9036007218662C569289B9326EDB1570FE71C3DC6198D2E5B3CB4C82
        67B7F4C4B2A0E64DCDC0D87F7B0D58A7162B5C59DF32865C933495322CCE7952
        31A544DFA6888B5C5B51D436F07F860767EA437247C3749D88A8B89EAF3A15B1
        5553B470519ECE431B6A526F6D9799B907C6D8CC9852A6988937265070CE6547
        3D65E9DCB28917EAC84B2FF881DFC39E334B82DC38C13469DC3D9A52C0B9A665
        526F0C11127B35B13CEFB5F9F2F9E35BDAD9918D3A0C33E599D65CB559355C35
        51AD9B45FBD19079907707D474C2DA4377EE7D6654AEAF46420EE30058F3D3A7
        F881817135315E66B0D2556733B46E25A7A795CBDAE5EF1EC07FC96B63537679
        2E09BCCE28A9B2EA4D51AEB7A5897BC0F737274EDFB381508F86D498F8E47E2A
        6BDDFF00D9614DA1787E821560E8EEA0827EB25C5F7F116C3FA36BC326EB95E5
        3BF00E6318E18CB15E51298A9A28A6EB742A0A37326D623AF2231D383BE48BE8
        611ED851F29F6835B3C419A3595348E841456B13F1C5307B02D70CDAF35E29CA
        783F2981736AA4887FE1E15EF3BAF5551E03E42E37C26ACDB3F3F7B44F69D9C6
        679B4CD96D5353654C418E98008E0585F5329B9B9BED7B636B4EE793D5B09F84
        F89EAB2DAE4AECBA792094302F117363637F883E070C4D490A945C59BE71471C
        53E6BC3990D5D03EA592759E6D2E7F46C96BA35B99B927E03C71C8EB650D4A0F
        945B8B1E471538716BFC953ECA5FDF386F3FCAA7523DD332A8A4B137BC6556C7
        E37385C29E343A7078F24BEAD9119D70754F10E674BF468459BE8F80F6679596
        EAE6FE4C47CF0A71728AA3D866A19669988FB4AABAACF33392A2289CC0A4C877
        17B1D858733603EFC5B86518BDD89C8D2A4460CBAB23A9A78648658649C811EB
        05755CDB6C52A71970C5DA619519C56AE6B34B4157346ACFA63D2D6B20D947C0
        00318E29ADD1AB6E0B5A557C8B80DEB63282B6A6A35DDC036502C0EFB7D66C4A
        DA9E4A7D875546C8EAAE21CCA5904925596995BBA7B24053FC2C371F0C50A11F
        6176CD872ECD333A0F611555B5352D266156FF00A291EC582996D63E3FA93CFC
        713CE31D6A3D838B6D367D7B35AE96BB3097DFA18D572E6D48D1291A9996DC87
        A9E5E189A715169AEE510529BD08D0F84FDA0499FE775395B2D3D64093CAA1C0
        31BC0818E9E9DEE4074F1B9C6BD4B69201A5568A289F2FE204ACA7A69D6579E2
        74950AE974524817F11F5AC7CB02A9EE8C76B92538AA9A962CAA47AC320A8120
        5805EDA8D9351DFA5B561596E30B28E9A0B2654EF8DC6B98CC28B8768AA15449
        147C94733A9ADF71187F4A9AC69FEF223AB69E569FEEC0BC2B511D365996C910
        D2BEEF4EB3457E49EE910361CEC181E7CCA63A9192BA205174CCE3DBD2AC1AD9
        AD219551A337FB0001B1EB6DBE0461D692DC38EEB631FCDB3EABCE254A8AF99E
        69910441E43A8AA8E401E831E524C0D2C57337680126E7C71AF73CB607B953CC
        DB0AE18CE4D77D9599333E1ECC68615ED258245A8096BF7023873FB9F2C737FA
        8C378CD16F452F2CA0FE19BCFB229CAE7DC4F09E538A5AC5FDA425BEF618474F
        2B8D0EEB23E652F738F10E692F0DD5475D4F70F1CB514405BEC990483EED386E
        27568E7679689A97BA06C967C8E9F2FA6A4923864892317D6818163B9F1EA4E2
        49619B939517ACB0D356039C51709D6AB18E86952B22178A6897498EE6C6D6F8
        7CF050C7963742E7E0BE684596F0170555B14A8AC8E19E22341252E36F31B8C1
        279FB80F161FE2FF00EC92F6959484F79CBF29A7A9ADA3A78CA44D1465849A9B
        98D3E0C15ADE0314F4E9A77207234D5232B190667AC28CB6B868BDCB40C0137F
        4C5BA909A37BCD387E59BD9D70F64A8D1A48A6179BB4245942A3B72EA4B38C45
        92753B1F895A0AF665950CB0D54B55A564791A56EF03650CC47DD6C254B530E4
        B601F64DC3F5793E7598D45525A558C1600DFBDAD99FF77EFC1CA7ADD02D5224
        F2B96BE2E01832E7F7CFA4331CC102B0B8658C4D1D8DEF71BDAD6C39C56B6FE0
        1BB8D1A1716CD3D7FB86573441C526A90B25D99D761737F316F8E11994B24128
        F61FD2E4C7866E537C87F19D5B5070D1F746026F7301435BF464F682F6F1EF03
        EB83C517182BEDFE454DAC999FCFF820B8E73B9329E0FADFA3E5922AA7AC5A18
        EA23650D681554EEA7A804F2F1BF9D90B94F726D2A28CA388B8A334CDA9A9E96
        B2B4D4534089D9A328BA369EF6F604EF7E77C3B7460B15699A0626545981D015
        477585B9EFD6FD7016E2FDD0DA8CE37C301DD45F9ADED7C39312CF97171718C9
        6E796C683EC578AA1E14E3BCBAAEB081452BFBBD413C951C152DE80907D06159
        61AE3F40E12D327F27EA2E19A3829BDA1573E5BAC524F426351A765D25181F4B
        580C71B0B4B2351E0EBF5509783194B92238D2AEB73092A1D673030A85678D24
        78ECC5349BD8D8FEAEE3C8E29C6F76703AC72718B47C65FF00AF1EB8632A0E8F
        EA577ECFEF0C62358643F517D31E341A9BF5EFFCF5C6773C79C41FD593D70681
        03A3FEA51FA7E431E6790553FD44F438F3303B22FAB53FECDBF0384BE46AE08C
        CABFB5729FF87FBF1618BB82FB14D4FF00E90557FE987FF2460A1C013E498F68
        1FD6730FF623F7C637F8B0B1FF00BA883F697FE87D37FBEAB7F1C558BD7F614F
        D265737EB3E3874B9323C1C70B08260FEAF2E1B0F4B025CA388E6702B9099ED3
        EAE311E67EEEF673FDA0BFEED1FBB16389D3FF00BB23B7D67FC787EFB915C41F
        DA759EB1FE3261F0F533E7BA8F4A3FFFD9}
    end
    object gbErrorLog: TbsSkinGroupBox
      Left = 172
      Top = 17
      Width = 349
      Height = 168
      TabOrder = 4
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
      Caption = 'Processing Log'
      object mmoErrLog: TbsSkinMemo
        Left = 6
        Top = 29
        Width = 339
        Height = 132
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
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
    end
    object pnlSettings: TbsSkinGroupBox
      Left = 120
      Top = 428
      Width = 173
      Height = 145
      TabOrder = 3
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
      Caption = 'Settings'
      object cbxSpecialsOnly: TbsSkinCheckRadioBox
        Left = 8
        Top = 28
        Width = 137
        Height = 25
        TabOrder = 0
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
        Checked = True
        GroupIndex = 0
        Caption = 'Specials Only'
      end
      object cbxNewProducts: TbsSkinCheckRadioBox
        Left = 8
        Top = 92
        Width = 150
        Height = 25
        TabOrder = 1
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
        Caption = 'New Products'
        Enabled = False
      end
      object cbxFullPricelist: TbsSkinCheckRadioBox
        Left = 8
        Top = 116
        Width = 114
        Height = 25
        TabOrder = 2
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
        Caption = 'Full Pricelists'
        Enabled = False
      end
      object cbxTemplateName: TbsSkinComboBox
        Left = 32
        Top = 72
        Width = 133
        Height = 20
        TabOrder = 3
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
        Text = 'SpecialsListing.html'
        Items.Strings = (
          'SpecialsListing.html')
        ItemIndex = 0
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
      object lblTemplateName: TbsSkinLabel
        Left = 32
        Top = 52
        Width = 133
        Height = 21
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
        Caption = 'Template Name'
        AutoSize = False
      end
    end
    object mmoLog: TbsSkinMemo
      Left = 12
      Top = 132
      Width = 149
      Height = 157
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'This utility will generate '
        'and send pricelists to all '
        'customers on the '
        'Custom-Pricelist and '
        'Email Distribution List.'
        ''
        'When you are ready, click '
        'on the [Start] button '
        'and processing and '
        'sending will commence.')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
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
    object lsvItems: TbsSkinListView
      Left = 304
      Top = 425
      Width = 93
      Height = 129
      Columns = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
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
    object dbgCustomerList: TbsSkinDBGrid
      Left = 172
      Top = 16
      Width = 349
      Height = 169
      TabOrder = 2
      SkinDataName = 'grid'
      UseSkinFont = True
      UseSkinCellHeight = True
      GridLineColor = clWindowText
      DefaultCellHeight = 20
      UseColumnsFont = False
      DefaultRowHeight = 17
      MouseWheelSupport = False
      SaveMultiSelection = False
      PickListBoxSkinDataName = 'listbox'
      PickListBoxCaptionMode = False
      DataSource = DataSource1
      ReadOnly = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Trader_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 240
          Visible = True
        end>
    end
    object rdoGenerateForHowMany: TbsSkinRadioGroup
      Left = 172
      Top = 200
      Width = 149
      Height = 89
      TabOrder = 5
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
      Caption = 'Send to..'
      ButtonSkinDataName = 'radiobox'
      ButtonDefaultFont.Charset = DEFAULT_CHARSET
      ButtonDefaultFont.Color = clWindowText
      ButtonDefaultFont.Height = 14
      ButtonDefaultFont.Name = 'Arial'
      ButtonDefaultFont.Style = []
      ItemIndex = 1
      Items.Strings = (
        'Selected Customer'
        'All Customers')
    end
  end
  object sgProgress: TbsSkinGauge
    Left = 340
    Top = 225
    Width = 181
    Height = 20
    TabOrder = 0
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
    Value = 0
    Vertical = False
  end
  object qryFindTargets: TQuery
    RequestLive = True
    SQL.Strings = (
      'select * from trader')
    Left = 308
    Top = 172
  end
  object DataSource1: TDataSource
    DataSet = qryFindTargets
    Left = 500
    Top = 200
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
    Left = 512
    Top = 140
  end
  object SmtpEmail: TSmtpCli
    Tag = 0
    ShareMode = smtpShareDenyWrite
    LocalAddr = '0.0.0.0'
    Port = 'smtp'
    AuthType = smtpAuthLogin
    ConfirmReceipt = False
    RcptName.Strings = (
      'sinu@preisshare.net')
    HdrPriority = smtpPriorityNone
    CharSet = 'iso-8859-1'
    SendMode = smtpToSocket
    DefaultEncoding = smtpEnc7bit
    Allow8bitChars = True
    FoldHeaders = False
    WrapMessageText = False
    ContentType = smtpPlainText
    OwnHeaders = False
    OnDisplay = SmtpEmailDisplay
    OnRequestDone = SmtpEmailRequestDone
    Left = 256
    Top = 16
  end
  object PageProducer1: TPageProducer
    Left = 440
    Top = 12
  end
end

object FormTRTM: TFormTRTM
  Left = 229
  Top = 175
  Caption = #1056#1077#1096#1077#1085#1080#1077' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1093' '#1087#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1081
  ClientHeight = 577
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlMain: TPageControl
    Left = 0
    Top = 0
    Width = 869
    Height = 577
    ActivePage = TabSheetTask
    Align = alClient
    TabOrder = 0
    object TabSheetTask: TTabSheet
      Caption = '&'#1056#1077#1096#1077#1085#1080#1077' '#1079#1072#1076#1072#1095#1080
      object Splitter1: TSplitter
        Left = 390
        Top = 0
        Height = 549
        Beveled = True
        ExplicitHeight = 554
      end
      object PanelPageControlMethods: TPanel
        Left = 393
        Top = 0
        Width = 468
        Height = 549
        Align = alClient
        Locked = True
        TabOrder = 1
        object PageControlMethods: TPageControl
          Left = 1
          Top = 1
          Width = 466
          Height = 547
          ActivePage = TabSheetObjectsList
          Align = alClient
          TabOrder = 0
          object TabSheetObjectsList: TTabSheet
            Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1086#1073#1098#1077#1082#1090#1072
            object PanelObjectsList: TPanel
              Left = 0
              Top = 0
              Width = 458
              Height = 519
              Align = alClient
              DragKind = dkDock
              TabOrder = 0
              object ListBoxObjects: TListBox
                Left = 1
                Top = 1
                Width = 456
                Height = 517
                Style = lbOwnerDrawVariable
                Align = alClient
                DragMode = dmAutomatic
                ItemHeight = 16
                Items.Strings = (
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  '')
                TabOrder = 0
                OnEndDrag = ListBoxObjectsEndDrag
                OnStartDock = ListBoxObjectsStartDock
              end
            end
          end
          object TabSheetAdvicedMethods: TTabSheet
            Caption = #1055#1088#1077#1076#1083#1072#1075#1072#1077#1084#1099#1077' '#1084#1077#1090#1086#1076#1099
            ImageIndex = 1
            object PanelMethodsList: TPanel
              Left = 0
              Top = 0
              Width = 458
              Height = 519
              Align = alClient
              TabOrder = 0
              object Splitter4: TSplitter
                Left = 1
                Top = 515
                Width = 456
                Height = 3
                Cursor = crVSplit
                Align = alBottom
                ExplicitTop = 520
              end
              object RichEditMethods: TRichEdit
                Left = 1
                Top = 1
                Width = 456
                Height = 253
                Align = alClient
                DragKind = dkDock
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
                OnEndDrag = RichEditMethodsEndDrag
                OnStartDock = RichEditMethodsStartDock
              end
              object ChartMethodsCharacteristics: TChart
                Left = 1
                Top = 254
                Width = 456
                Height = 261
                BackWall.Brush.Color = clWhite
                BackWall.Brush.Style = bsClear
                Title.Text.Strings = (
                  'TChart')
                Align = alBottom
                TabOrder = 1
                DragKind = dkDock
                object Series1: TBarSeries
                  Marks.Callout.Brush.Color = clBlack
                  Marks.Visible = True
                  ShowInLegend = False
                  Title = #1063#1072#1089#1090#1086#1090#1072' '#1087#1088#1077#1076#1083#1072#1075#1072#1077#1084#1099#1093' '#1084#1077#1090#1086#1076#1086#1074
                  Gradient.Direction = gdTopBottom
                  XValues.Name = 'X'
                  XValues.Order = loAscending
                  YValues.Name = 'Bar'
                  YValues.Order = loNone
                end
              end
            end
          end
          object TabSheetAllMethods: TTabSheet
            Caption = #1042#1089#1077' '#1084#1077#1090#1086#1076#1099
            ImageIndex = 2
            object PanelAllMethodsList: TPanel
              Left = 0
              Top = 0
              Width = 458
              Height = 519
              Align = alClient
              DragKind = dkDock
              TabOrder = 0
              object RichEditAllMethods: TRichEdit
                Left = 1
                Top = 1
                Width = 456
                Height = 517
                Align = alClient
                DragKind = dkDock
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
                OnEndDrag = RichEditAllMethodsEndDrag
                OnStartDock = RichEditAllMethodsStartDock
              end
            end
          end
        end
      end
      object PanelTaskAndSolutions: TPanel
        Left = 0
        Top = 0
        Width = 390
        Height = 549
        Align = alLeft
        TabOrder = 0
        object Splitter2: TSplitter
          Left = 1
          Top = 209
          Width = 388
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Beveled = True
        end
        object Splitter3: TSplitter
          Left = 1
          Top = 362
          Width = 388
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object PanelTask: TPanel
          Left = 1
          Top = 1
          Width = 388
          Height = 208
          Align = alTop
          TabOrder = 0
          DesignSize = (
            388
            208)
          object Label4: TLabel
            Left = 5
            Top = 171
            Width = 64
            Height = 13
            Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1086#1077
          end
          object Label3: TLabel
            Left = 5
            Top = 138
            Width = 65
            Height = 13
            Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077
          end
          object Label2: TLabel
            Left = 5
            Top = 112
            Width = 97
            Height = 13
            Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1086#1077
          end
          object Label1: TLabel
            Left = 5
            Top = 82
            Width = 109
            Height = 16
            Caption = #1055#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1103
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LabelTask: TLabel
            Left = 5
            Top = 8
            Width = 56
            Height = 16
            Caption = #1047#1072#1076#1072#1095#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object MemoFP: TMemo
            Left = 117
            Top = 171
            Width = 268
            Height = 35
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 3
          end
          object MemoTP: TMemo
            Left = 117
            Top = 135
            Width = 268
            Height = 35
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
          end
          object MemoAP: TMemo
            Left = 117
            Top = 99
            Width = 268
            Height = 35
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
          object MemoTask: TMemo
            Left = 5
            Top = 24
            Width = 379
            Height = 55
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
        end
        object PanelSolutions: TPanel
          Left = 1
          Top = 212
          Width = 388
          Height = 150
          Align = alTop
          Constraints.MinHeight = 50
          TabOrder = 1
          object PanelSolutionButtons: TPanel
            Left = 1
            Top = 123
            Width = 386
            Height = 26
            Align = alBottom
            Constraints.MinHeight = 25
            TabOrder = 1
            object ButtonEvaluate: TButton
              Left = 3
              Top = 2
              Width = 110
              Height = 25
              Caption = #1054#1073#1089#1095#1080#1090#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
              TabOrder = 0
              OnClick = ButtonEvaluateClick
            end
            object ButtonShowReport: TButton
              Left = 115
              Top = 2
              Width = 101
              Height = 25
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1086#1090#1095#1077#1090
              TabOrder = 1
              OnClick = ButtonShowReportClick
            end
            object ButtonBuildGraphics: TButton
              Left = 219
              Top = 2
              Width = 109
              Height = 25
              Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1075#1088#1072#1092#1080#1082#1080
              TabOrder = 2
              Visible = False
              OnClick = ButtonBuildGraphicsClick
            end
            object ButtonAddProb: TButton
              Left = 219
              Top = 2
              Width = 70
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              TabOrder = 3
              OnClick = ButtonAddProbClick
            end
            object ButtonDelProb: TButton
              Left = 291
              Top = 2
              Width = 72
              Height = 25
              Caption = #1059#1076#1072#1083#1080#1090#1100
              TabOrder = 4
              OnClick = ButtonDelProbClick
            end
          end
          object GridViewMethods: TGridView
            Left = 1
            Top = 1
            Width = 386
            Height = 122
            Hint = #1050#1083#1072#1074#1080#1096#1072' INS - '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1087#1088#1086#1073#1083#1077#1084#1099
            Align = alClient
            AllowEdit = True
            Columns = <
              item
                Alignment = taCenter
                WantReturns = True
                WordWrap = True
                DefWidth = 60
              end
              item
                DefWidth = 80
              end
              item
                ReadOnly = True
                DefWidth = 80
              end
              item
                ReadOnly = True
                DefWidth = 80
              end
              item
                DefWidth = 80
              end
              item
                DefWidth = 80
              end>
            Header.AutoSynchronize = False
            Header.FullSynchronizing = True
            Header.Sections = <
              item
                Width = 60
              end
              item
                Width = 80
              end
              item
                Width = 80
              end
              item
                Width = 80
              end
              item
                Width = 80
              end
              item
                Width = 80
              end
              item
                Width = 80
              end>
            Header.Synchronized = False
            ImageHighlight = False
            ParentShowHint = False
            Rows.AutoHeight = True
            Rows.Count = 1
            ShowCellTips = False
            ShowHint = True
            TabOrder = 0
            OnDragDrop = GridDragDrop
            OnDragOver = GridDragOver
            OnGetCellText = GridViewMethodsGetCellText
            OnKeyDown = GridViewMethodsKeyDown
            OnSetEditText = GridViewMethodsSetEditText
          end
        end
        object PanelResult: TPanel
          Left = 1
          Top = 365
          Width = 388
          Height = 183
          Align = alClient
          TabOrder = 2
          DesignSize = (
            388
            183)
          object Label6: TLabel
            Left = 5
            Top = 8
            Width = 80
            Height = 16
            Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object MemoResult: TMemo
            Left = 5
            Top = 24
            Width = 380
            Height = 137
            Anchors = [akLeft, akTop, akRight, akBottom]
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
    end
    object TabSheetReport: TTabSheet
      Caption = '&'#1054#1090#1095#1077#1090
      ImageIndex = 2
      object PanelAuthor: TPanel
        Left = 0
        Top = 0
        Width = 861
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 8
          Width = 117
          Height = 13
          Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100', '#1082#1072#1092#1077#1076#1088#1072
        end
        object LabelProjectName: TLabel
          Left = 136
          Top = 8
          Width = 94
          Height = 13
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1077#1082#1090#1072
        end
        object EditAuthor: TEdit
          Left = 8
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object EditProjectName: TEdit
          Left = 136
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 1
        end
      end
      object PanelReport: TPanel
        Left = 0
        Top = 49
        Width = 861
        Height = 500
        Align = alClient
        TabOrder = 1
        object QuickRep: TQuickRep
          Left = 0
          Top = 0
          Width = 794
          Height = 1123
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Functions.Strings = (
            'PAGENUMBER'
            'COLUMNNUMBER'
            'REPORTTITLE'
            'QRSTRINGSBAND1')
          Functions.DATA = (
            '0'
            '0'
            #39#39
            #39#39)
          OnNeedData = QuickRepNeedData
          Options = [FirstPageHeader, LastPageFooter]
          Page.Columns = 1
          Page.Orientation = poPortrait
          Page.PaperSize = A4
          Page.Values = (
            100.000000000000000000
            2970.000000000000000000
            100.000000000000000000
            2100.000000000000000000
            100.000000000000000000
            100.000000000000000000
            0.000000000000000000)
          PrinterSettings.Copies = 1
          PrinterSettings.OutputBin = Auto
          PrinterSettings.Duplex = False
          PrinterSettings.FirstPage = 0
          PrinterSettings.LastPage = 0
          PrinterSettings.UseStandardprinter = False
          PrinterSettings.UseCustomBinCode = False
          PrinterSettings.CustomBinCode = 0
          PrinterSettings.ExtendedDuplex = 0
          PrinterSettings.UseCustomPaperCode = False
          PrinterSettings.CustomPaperCode = 0
          PrinterSettings.PrintMetaFile = False
          PrinterSettings.PrintQuality = 0
          PrinterSettings.Collate = 0
          PrinterSettings.ColorOption = 0
          PrintIfEmpty = False
          ShowProgress = False
          SnapToGrid = True
          Units = MM
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsNormal
          PrevInitialZoom = qrZoomToFit
          object QRLabelCopyright: TQRLabel
            Left = 602
            Top = 16
            Width = 155
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1592.791666666667000000
              42.333333333333330000
              410.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1058#1056#1058#1052' -- '#1041#1088#1072#1090#1094#1077#1074#1072' '#1043'.'#1043'., '#1057#1086#1073#1086#1083#1077#1074' '#1057'.'#1055'., 2005'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object TitleBand1: TQRBand
            Left = 38
            Top = 38
            Width = 718
            Height = 67
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              177.270833333333300000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabelProjectName: TQRLabel
              Left = 286
              Top = 1
              Width = 146
              Height = 25
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                66.145833333333330000
                756.708333333333300000
                2.645833333333333000
                386.291666666666700000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = True
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1077#1082#1090#1072
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 12
            end
            object QRLabelAuthor: TQRLabel
              Left = 112
              Top = 40
              Width = 144
              Height = 25
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                66.145833333333300000
                296.333333333333000000
                105.833333333333000000
                381.000000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1080' '#1082#1072#1092#1077#1076#1088#1091
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel5: TQRLabel
              Left = 0
              Top = 40
              Width = 87
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                105.833333333333300000
                230.187500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object QRBandTask: TQRBand
            Left = 38
            Top = 105
            Width = 718
            Height = 113
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              298.979166666666700000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRMemoTask: TQRMemo
              Left = 8
              Top = 24
              Width = 705
              Height = 49
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                129.645833333333000000
                21.166666666666700000
                63.500000000000000000
                1865.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              Lines.Strings = (
                #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1079#1072#1076#1072#1095#1080' '#1085#1072' '#1087#1077#1088#1074#1086#1081' '#1089#1090#1088#1072#1085#1080#1094#1077)
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabelTask: TQRLabel
              Left = 0
              Top = 0
              Width = 49
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                0.000000000000000000
                129.645833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1047#1072#1076#1072#1095#1072
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object QRLabelDateTime: TQRLabel
            Left = 40
            Top = 16
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              105.833333333333300000
              42.333333333333330000
              132.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1088#1077#1084#1103' '#1087#1077#1095#1072#1090#1080
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 6
          end
          object ChildBandAC: TQRChildBand
            Left = 38
            Top = 218
            Width = 718
            Height = 71
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              187.854166666666700000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = QRBandTask
            object QRMemoAC: TQRMemo
              Left = 152
              Top = 32
              Width = 561
              Height = 33
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                87.312500000000000000
                402.166666666667000000
                84.666666666666700000
                1484.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              Lines.Strings = (
                #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1086#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1103
                #1085#1072' '#1087#1077#1088#1074#1086#1081' '#1089#1090#1088#1072#1085#1080#1094#1077)
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabelContrAdmin: TQRLabel
              Left = 8
              Top = 32
              Width = 114
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                84.666666666666670000
                301.625000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1086#1077
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabelContradictions: TQRLabel
              Left = 0
              Top = 0
              Width = 96
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                0.000000000000000000
                254.000000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1055#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1103
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object ChildBandTC: TQRChildBand
            Left = 38
            Top = 289
            Width = 718
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              105.833333333333300000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = ChildBandAC
            object QRLabelContrTech: TQRLabel
              Left = 8
              Top = 0
              Width = 77
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                0.000000000000000000
                203.729166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRMemoTC: TQRMemo
              Left = 152
              Top = 0
              Width = 561
              Height = 33
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                87.312500000000000000
                402.166666666667000000
                0.000000000000000000
                1484.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              Lines.Strings = (
                #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1103
                #1085#1072' '#1087#1077#1088#1074#1086#1081' '#1089#1090#1088#1072#1085#1080#1094#1077)
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object ChildBandPHC: TQRChildBand
            Left = 38
            Top = 329
            Width = 718
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              105.833333333333300000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = ChildBandTC
            object QRMemoPC: TQRMemo
              Left = 152
              Top = 0
              Width = 561
              Height = 33
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                87.312500000000000000
                402.166666666667000000
                0.000000000000000000
                1484.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              Lines.Strings = (
                #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1092#1080#1079#1080#1095#1077#1089#1082#1086#1075#1086' '#1087#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1103
                #1085#1072' '#1087#1077#1088#1074#1086#1081' '#1089#1090#1088#1072#1085#1080#1094#1077)
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabelContrPhys: TQRLabel
              Left = 8
              Top = 0
              Width = 73
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                0.000000000000000000
                193.145833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1086#1077
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object ChildBandMethodsHeader: TQRChildBand
            Left = 38
            Top = 369
            Width = 718
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              105.833333333333300000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = ChildBandPHC
            object QRLabelToChange: TQRLabel
              Left = 0
              Top = 16
              Width = 122
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                42.333333333333330000
                322.791666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1063#1090#1086' '#1085#1091#1078#1085#1086' '#1080#1079#1084#1077#1085#1080#1090#1100
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabelBobj: TQRLabel
              Left = 144
              Top = 16
              Width = 192
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                381.000000000000000000
                42.333333333333330000
                508.000000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1063#1090#1086' '#1091#1093#1091#1076#1096#1072#1077#1090#1089#1103' '#1087#1088#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1080
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabelMethods: TQRLabel
              Left = 352
              Top = 16
              Width = 111
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                931.333333333333300000
                42.333333333333330000
                293.687500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1059#1082#1072#1079#1072#1085#1086' '#1074' '#1090#1072#1073#1083#1080#1094#1077
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel1: TQRLabel
              Left = 472
              Top = 16
              Width = 81
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1248.833333333333000000
                42.333333333333330000
                214.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1044#1091#1073#1083#1080#1088#1091#1102#1090#1089#1103
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel2: TQRLabel
              Left = 560
              Top = 16
              Width = 80
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1481.666666666667000000
                42.333333333333330000
                211.666666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1055#1086#1076#1093#1086#1076#1103#1097#1080#1077
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel3: TQRLabel
              Left = 648
              Top = 16
              Width = 50
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1714.500000000000000000
                42.333333333333330000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1053#1077#1087#1086#1076#1093'.'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabelAnalysis: TQRLabel
              Left = 496
              Top = 0
              Width = 99
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1312.333333333333000000
                0.000000000000000000
                261.937500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1040#1085#1072#1083#1080#1079' '#1087#1088#1080#1105#1084#1086#1074
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object QRBandMethods: TQRChildBand
            Left = 38
            Top = 409
            Width = 718
            Height = 112
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              296.333333333333300000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = ChildBandMethodsHeader
            object QRMemoObjData: TQRMemo
              Left = 0
              Top = 8
              Width = 129
              Height = 97
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                256.645833333333000000
                0.000000000000000000
                21.166666666666700000
                341.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRMemoBobjsData: TQRMemo
              Left = 144
              Top = 8
              Width = 193
              Height = 97
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                256.645833333333000000
                381.000000000000000000
                21.166666666666700000
                510.645833333333000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRMemoMethodsData: TQRMemo
              Left = 352
              Top = 8
              Width = 113
              Height = 97
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                256.645833333333000000
                931.333333333333000000
                21.166666666666700000
                298.979166666667000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRMemoPopularData: TQRMemo
              Left = 472
              Top = 8
              Width = 81
              Height = 97
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                256.645833333333000000
                1248.833333333330000000
                21.166666666666700000
                214.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRMemoGoodData: TQRMemo
              Left = 560
              Top = 8
              Width = 81
              Height = 97
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                256.645833333333000000
                1481.666666666670000000
                21.166666666666700000
                214.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRMemoBadData: TQRMemo
              Left = 648
              Top = 8
              Width = 65
              Height = 97
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                256.645833333333000000
                1714.500000000000000000
                21.166666666666700000
                171.979166666667000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object ChildBandImage: TQRChildBand
            Left = 38
            Top = 521
            Width = 718
            Height = 112
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              296.333333333333300000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = QRBandMethods
            object QRLabelChartTitle: TQRLabel
              Left = 240
              Top = 8
              Width = 238
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                635.000000000000000000
                21.166666666666670000
                629.708333333333300000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1087#1088#1077#1076#1083#1072#1075#1072#1077#1084#1099#1093' '#1084#1077#1090#1086#1076#1086#1074
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object ChildBandResult: TQRChildBand
            Left = 38
            Top = 633
            Width = 718
            Height = 184
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              486.833333333333300000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = ChildBandImage
            object QRMemoSolution: TQRMemo
              Left = 8
              Top = 25
              Width = 705
              Height = 104
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                275.166666666667000000
                21.166666666666700000
                66.145833333333300000
                1865.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              Lines.Strings = (
                #1042#1074#1077#1076#1080#1090#1077' '#1088#1077#1096#1077#1085#1080#1077' '#1085#1072' '#1087#1077#1088#1074#1086#1081' '#1089#1090#1088#1072#1085#1080#1094#1077)
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel4: TQRLabel
              Left = 8
              Top = 1
              Width = 60
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                2.645833333333333000
                158.750000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #1056#1077#1096#1077#1085#1080#1077
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object ChildBandMethodsPop: TQRChildBand
            Left = 38
            Top = 817
            Width = 718
            Height = 144
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              381.000000000000000000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = ChildBandResult
            object QRMemoMethdsPop: TQRMemo
              Left = 8
              Top = 9
              Width = 697
              Height = 128
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                338.666666666667000000
                21.166666666666700000
                23.812500000000000000
                1844.145833333330000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
        end
      end
    end
    object TabSheetProperties: TTabSheet
      Caption = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 3
      object CheckBoxPrintImage: TCheckBox
        Left = 8
        Top = 16
        Width = 233
        Height = 17
        Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1075#1088#1072#1092#1080#1082' '#1087#1086#1087#1091#1083#1103#1088#1085#1086#1089#1090#1080' '#1084#1077#1090#1086#1076#1086#1074
        TabOrder = 0
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 144
    object MainMenuFile: TMenuItem
      Caption = '&'#1060#1072#1081#1083
      object MainMenuFileNew: TMenuItem
        Caption = '&'#1053#1086#1074#1099#1081
        ShortCut = 16462
        OnClick = MainMenuFileNewClick
      end
      object MainMenuFilleOpen: TMenuItem
        Caption = '&'#1054#1090#1082#1088#1099#1090#1100
        ShortCut = 16463
        OnClick = MainMenuFilleOpenClick
      end
      object MainMenuFileSave: TMenuItem
        Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = MainMenuFileSaveClick
      end
      object MainMenuFileSaveAs: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' &'#1082#1072#1082'..'
        ShortCut = 24659
        OnClick = MainMenuFileSaveAsClick
      end
      object MainMenuFileDelim1: TMenuItem
        Caption = '-'
      end
      object MainMenuFileExport: TMenuItem
        Caption = '&'#1069#1082#1089#1087#1086#1088#1090
        object MainMenuFileExportMethods: TMenuItem
          Caption = #1057#1087#1080#1089#1086#1082' '#1084#1077#1090#1086#1076#1086#1074
          OnClick = MainMenuFileExportMethodsClick
        end
        object MainMenuFileExportTable: TMenuItem
          Caption = #1058#1072#1073#1083#1080#1094#1072' '#1088#1072#1079#1088#1077#1096#1077#1085#1080#1103' '#1087#1088#1086#1090#1080#1074#1086#1088#1077#1095#1080#1081
          OnClick = MainMenuFileExportTableClick
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MainMenuFilePrint: TMenuItem
        Caption = '&'#1055#1077#1095#1072#1090#1100
        ShortCut = 16464
        OnClick = MainMenuFilePrintClick
      end
      object MainMenuFileDelim2: TMenuItem
        Caption = '-'
      end
      object MainMenuFileHistory: TMenuItem
        Caption = '&'#1048#1089#1090#1086#1088#1080#1103' '#1079#1072#1076#1072#1095
        ShortCut = 16456
        object N2: TMenuItem
          Caption = #1076#1072#1085#1085#1072#1103' '#1092#1091#1085#1082#1094#1080#1103' '#1087#1086#1082#1072' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
          Enabled = False
        end
      end
      object MainMenuFileDelim3: TMenuItem
        Caption = '-'
      end
      object MainMenuFileExit: TMenuItem
        Caption = '&'#1042#1099#1093#1086#1076
        ShortCut = 32856
        OnClick = MainMenuFileExitClick
      end
    end
    object MainMenuView: TMenuItem
      Caption = '&'#1042#1080#1076
      object MainMenuViewTasks: TMenuItem
        Caption = '&'#1047#1072#1076#1072#1095#1080
        ShortCut = 16433
        OnClick = MainMenuViewTasksClick
      end
      object MainMenuViewReport: TMenuItem
        Caption = '&'#1054#1090#1095#1105#1090
        ShortCut = 16434
        OnClick = MainMenuViewReportClick
      end
      object MainMenuViewProperties: TMenuItem
        Caption = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
        ShortCut = 16435
        OnClick = MainMenuViewPropertiesClick
      end
      object MainMenuViewMaster: TMenuItem
        Caption = #1052#1072#1089#1090#1077#1088' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1080' '#1088#1077#1096#1077#1085#1080#1103
        Enabled = False
        ShortCut = 16461
        OnClick = MainMenuViewMasterClick
      end
    end
    object MainMenuHelp: TMenuItem
      Caption = '?'
      object MainMenuHelpHelp: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1072
        ShortCut = 112
        OnClick = MainMenuHelpHelpClick
      end
      object MainMenuHelpDelim1: TMenuItem
        Caption = '-'
      end
      object MainMenuHelpAbout: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        ShortCut = 8304
        OnClick = MainMenuHelpAboutClick
      end
    end
  end
  object ActionList1: TActionList
    Left = 552
    Top = 112
    object ActionExit: TAction
      Caption = 'ActionExit'
      ShortCut = 32856
      OnExecute = ActionExitExecute
    end
    object ActionHelp: TAction
      Caption = 'ActionHelp'
    end
  end
  object OpenRizFileDialog: TOpenDialog
    Left = 549
    Top = 177
  end
  object SaveToFileDialog: TSaveDialog
    Left = 493
    Top = 145
  end
  object SaveToFileAsDialog: TSaveDialog
    Left = 496
    Top = 176
  end
  object SaveDialogExportTRTMTable: TSaveDialog
    Left = 493
    Top = 113
  end
  object TimerShowMaster: TTimer
    Enabled = False
    Interval = 300
    OnTimer = TimerShowMasterTimer
    Left = 453
    Top = 113
  end
  object XPManifest1: TXPManifest
    Left = 592
    Top = 112
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 631
  ClientWidth = 1237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1237
    Height = 73
    Align = alTop
    TabOrder = 0
    object LabeledEdit1: TLabeledEdit
      Left = 16
      Top = 27
      Width = 121
      Height = 21
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
      TabOrder = 0
      OnChange = LabeledEdit1Change
    end
    object LabeledEdit2: TLabeledEdit
      Left = 168
      Top = 27
      Width = 121
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = #1102#1088'. '#1072#1076#1088#1077#1089
      TabOrder = 1
      OnChange = LabeledEdit1Change
    end
    object LabeledEdit3: TLabeledEdit
      Left = 320
      Top = 27
      Width = 121
      Height = 21
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
      TabOrder = 2
      OnChange = LabeledEdit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 424
    Height = 558
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1043#1086#1088#1086#1076
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1102#1088'.'#1072#1076#1088#1077#1089
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1087#1086#1095#1090'. '#1072#1076#1088'.'
        Width = 100
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 424
    Top = 73
    Width = 813
    Height = 558
    Align = alRight
    DataSource = DataSource2
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1043#1086#1076'/'#1052#1077#1089#1103#1094
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1071#1085#1074#1072#1088#1100
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1077#1074#1088#1072#1083#1100
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1052#1072#1088#1090
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1040#1087#1088#1077#1083#1100
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1052#1072#1081
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1102#1085#1100
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1102#1083#1100
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1040#1074#1075#1091#1089#1090
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1077#1085#1090#1103#1073#1088#1100
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1082#1090#1103#1073#1088#1100
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1103#1073#1088#1100
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1077#1082#1072#1073#1088#1100
        Width = 45
        Visible = True
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=airtem_test'
      'User_Name=airtem_test'
      'Password=s3e2r1f1'
      'Server=airtem.mysql.tools'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 488
    Top = 136
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 488
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnDataChange = DataSource1DataChange
    Left = 640
    Top = 208
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      ' f.NAME'
      ' ,j.CITY_NAME '#39#1102#1088'.'#1072#1076#1088#1077#1089#39' '
      ',p.CITY_NAME '#39#1087#1086#1095#1090'. '#1072#1076#1088'.'#39' '
      ',f.`FIRM_ID`'
      'FROM CITY AS p, CITY AS j, FIRM AS f '
      'WHERE '
      'f.JUR_CITY_ID=j.CITY_ID '
      'AND f.POST_CITY_ID=p.CITY_ID'
      'AND f.NAME LIKE :NAME'
      'AND j.CITY_NAME LIKE :CITY_J'
      ' AND p.CITY_NAME LIKE :CITY_P')
    Left = 552
    Top = 456
    ParamData = <
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
        Size = 150
        Value = '%'
      end
      item
        Name = 'CITY_J'
        DataType = ftString
        ParamType = ptInput
        Size = 150
        Value = '%'
      end
      item
        Name = 'CITY_P'
        DataType = ftString
        ParamType = ptInput
        Size = 150
        Value = '%'
      end>
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'YEAR(`DOC_DATE`)as'#39#1043#1086#1076'/'#1052#1077#1089#1103#1094#39' '
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 1 then SUM ELSE 0 end' +
        ') as '#39#1071#1085#1074#1072#1088#1100#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 2 then SUM ELSE 0 end' +
        ') as '#39#1060#1077#1074#1088#1072#1083#1100#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 3 then SUM ELSE 0 end' +
        ') as '#39#1052#1072#1088#1090#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 4 then SUM ELSE 0 end' +
        ') as '#39#1040#1087#1088#1077#1083#1100#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 5 then SUM ELSE 0 end' +
        ') as '#39#1052#1072#1081#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 6 then SUM ELSE 0 end' +
        ') as '#39#1048#1102#1085#1100#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 7 then SUM ELSE 0 end' +
        ') as '#39#1048#1102#1083#1100#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 8 then SUM ELSE 0 end' +
        ') as '#39#1040#1074#1075#1091#1089#1090#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 9 then SUM ELSE 0 end' +
        ') as '#39#1057#1077#1085#1090#1103#1073#1088#1100#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 10 then SUM ELSE 0 en' +
        'd) as '#39#1054#1082#1090#1103#1073#1088#1100#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 11 then SUM ELSE 0 en' +
        'd) as '#39#1053#1086#1103#1073#1088#1100#39
      
        '        ,SUM(case when MONTH(`DOC_DATE`) = 12 then SUM ELSE 0 en' +
        'd) as '#39#1044#1077#1082#1072#1073#1088#1100#39
      'FROM `DOCUMENT` D'
      'WHERE'
      #9'D.FIRM_ID=:F'
      ''
      ''
      'GROUP BY YEAR(`DOC_DATE`);')
    Left = 496
    Top = 456
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 688
    Top = 208
  end
  object OpenDialog1: TOpenDialog
    Left = 616
    Top = 320
  end
end

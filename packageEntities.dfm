object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 24
    Top = 80
    Width = 545
    Height = 177
    DataSource = DSNF
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 24
    Top = 49
    Width = 75
    Height = 25
    Caption = 'GetValues'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 280
    Width = 320
    Height = 120
    DataSource = DSItens
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 352
    Top = 280
    Width = 217
    Height = 120
    DataSource = DSEmitente
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DSNF: TDataSource
    DataSet = AureliusDatasetNF
    Left = 392
    Top = 208
  end
  object AureliusDatasetNF: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    Left = 392
    Top = 144
  end
  object DSItens: TDataSource
    DataSet = AureliusDatasetItens
    Left = 248
    Top = 320
  end
  object DSEmitente: TDataSource
    DataSet = AureliusDatasetEmitente
    Left = 560
    Top = 256
  end
  object AureliusDatasetItens: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    Left = 224
    Top = 288
  end
  object AureliusDatasetEmitente: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    Left = 559
    Top = 222
  end
end

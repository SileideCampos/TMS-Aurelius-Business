object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 596
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
    Left = 120
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Delete'
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
    Left = 350
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
    FieldDefs = <
      item
        Name = 'Self'
        Attributes = [faReadonly]
        DataType = ftVariant
      end
      item
        Name = 'id'
        Attributes = [faReadonly, faRequired]
        DataType = ftInteger
      end
      item
        Name = 'numNF'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'item'
        Attributes = [faReadonly]
        DataType = ftDataSet
      end
      item
        Name = 'emitente'
        DataType = ftVariant
      end>
    Left = 392
    Top = 168
    DesignClass = 'uNotaFiscal.TNotaFiscal'
    object AureliusDatasetNFSelf: TAureliusEntityField
      FieldName = 'Self'
      ReadOnly = True
    end
    object AureliusDatasetNFid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object AureliusDatasetNFnumNF: TIntegerField
      FieldName = 'numNF'
      Required = True
    end
    object AureliusDatasetNFitem: TDataSetField
      FieldName = 'item'
      ReadOnly = True
    end
    object AureliusDatasetNFemitente: TAureliusEntityField
      FieldName = 'emitente'
    end
    object AureliusDatasetNFEmitenteNome: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'EmitenteNome'
      LookupDataSet = AureliusDatasetEmitente
      LookupKeyFields = 'Self'
      LookupResultField = 'xNome'
      KeyFields = 'emitente'
      Size = 500
      Lookup = True
    end
  end
  object DSItens: TDataSource
    DataSet = AureliusDatasetItens
    Left = 248
    Top = 320
  end
  object DSEmitente: TDataSource
    DataSet = AureliusDatasetEmitente
    Left = 552
    Top = 312
  end
  object AureliusDatasetItens: TAureliusDataset
    FieldDefs = <
      item
        Name = 'Self'
        Attributes = [faReadonly]
        DataType = ftVariant
      end
      item
        Name = 'id'
        Attributes = [faReadonly, faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cProd'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cEAN'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'xProd'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end>
    Left = 224
    Top = 288
    DesignClass = 'uItem.TItem'
    object AureliusDatasetItensSelf: TAureliusEntityField
      FieldName = 'Self'
      ReadOnly = True
    end
    object AureliusDatasetItensid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object AureliusDatasetItenscProd: TIntegerField
      FieldName = 'cProd'
      Required = True
    end
    object AureliusDatasetItenscEAN: TIntegerField
      FieldName = 'cEAN'
      Required = True
    end
    object AureliusDatasetItensxProd: TStringField
      FieldName = 'xProd'
      Required = True
      Size = 255
    end
  end
  object AureliusDatasetEmitente: TAureliusDataset
    FieldDefs = <
      item
        Name = 'Self'
        Attributes = [faReadonly]
        DataType = ftVariant
      end
      item
        Name = 'id'
        Attributes = [faReadonly, faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cnpj'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'xNome'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'xFant'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'IE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    Left = 551
    Top = 262
    DesignClass = 'uEmitente.TEmitente'
    object AureliusDatasetEmitenteSelf: TAureliusEntityField
      FieldName = 'Self'
      ReadOnly = True
    end
    object AureliusDatasetEmitenteid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object AureliusDatasetEmitentecnpj: TStringField
      FieldName = 'cnpj'
      Required = True
      Size = 255
    end
    object AureliusDatasetEmitentexNome: TStringField
      FieldName = 'xNome'
      Required = True
      Size = 255
    end
    object AureliusDatasetEmitentexFant: TStringField
      FieldName = 'xFant'
      Required = True
      Size = 255
    end
    object AureliusDatasetEmitenteIE: TIntegerField
      FieldName = 'IE'
      Required = True
    end
  end
end

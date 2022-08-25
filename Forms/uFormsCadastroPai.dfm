object FormsCadastroPai: TFormsCadastroPai
  Left = 0
  Top = 0
  ClientHeight = 280
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    493
    280)
  PixelsPerInch = 96
  TextHeight = 13
  object uFormsCadastroPai: TPanel
    Left = -2
    Top = 0
    Width = 497
    Height = 41
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    DesignSize = (
      497
      41)
    object BtnNovo: TBitBtn
      Left = 0
      Top = -1
      Width = 83
      Height = 43
      Caption = 'Novo'
      TabOrder = 0
      OnClick = BtnNovoClick
    end
    object BtnGravar: TBitBtn
      Left = 80
      Top = -1
      Width = 83
      Height = 43
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = BtnGravarClick
    end
    object BtnCancelar: TBitBtn
      Left = 161
      Top = -1
      Width = 83
      Height = 43
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object BtnExcluir: TBitBtn
      Left = 241
      Top = -1
      Width = 83
      Height = 43
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = BtnExcluirClick
    end
    object BtnSair: TBitBtn
      Left = 418
      Top = -1
      Width = 83
      Height = 44
      Anchors = [akTop, akRight]
      Caption = 'Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
  end
  object FdQryCadastro: TFDQuery
    Connection = DmDados.FdCon
    Transaction = FdTransaction
    UpdateTransaction = FdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateObject = FDUpdCadastro
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 424
    Top = 53
  end
  object FDUpdCadastro: TFDUpdateSQL
    Connection = DmDados.FdCon
    Left = 424
    Top = 101
  end
  object FdTransaction: TFDTransaction
    Connection = DmDados.FdCon
    Left = 424
    Top = 144
  end
  object DsCadastro: TDataSource
    DataSet = FdQryCadastro
    Left = 424
    Top = 192
  end
end

inherited FormsCadastroEstado: TFormsCadastroEstado
  Caption = 'Cadastro de Estados'
  ClientHeight = 269
  ClientWidth = 445
  ExplicitWidth = 461
  ExplicitHeight = 308
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 48
    Width = 57
    Height = 13
    Caption = 'ID_ESTADO'
    FocusControl = e
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 88
    Width = 29
    Height = 13
    Caption = 'SIGLA'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 44
    Top = 88
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit3
  end
  inherited uFormsCadastroPai: TPanel
    Width = 449
    ExplicitWidth = 508
    inherited BtnSair: TBitBtn
      Left = 358
    end
  end
  object e: TDBEdit [4]
    Left = 7
    Top = 64
    Width = 31
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = DsCadastro
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 8
    Top = 104
    Width = 30
    Height = 21
    DataField = 'SIGLA'
    DataSource = DsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 44
    Top = 104
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = DsCadastro
    TabOrder = 3
  end
  inherited FdQryCadastro: TFDQuery
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gen_estado_id'
    UpdateOptions.AutoIncFields = 'ID_ESTADO'
    UpdateObject = nil
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 280
    Top = 45
    object FdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdQryCadastroSIGLA: TWideStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
    object FdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  inherited FDUpdCadastro: TFDUpdateSQL
    Left = 280
    Top = 93
  end
  inherited FdTransaction: TFDTransaction
    Left = 232
    Top = 48
  end
  inherited DsCadastro: TDataSource
    Left = 232
    Top = 96
  end
end

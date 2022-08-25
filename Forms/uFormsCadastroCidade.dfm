inherited FormsCadastroCidade: TFormsCadastroCidade
  Caption = 'Cadastro de Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 48
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 88
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit [3]
    Left = 8
    Top = 64
    Width = 29
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = DsCadastro
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 8
    Top = 104
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = DsCadastro
    TabOrder = 2
  end
  inherited FdQryCadastro: TFDQuery
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gen_cidade_id'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    object FdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
end

object Form1: TForm1
  Left = 453
  Top = 160
  Caption = 'Form1'
  ClientHeight = 524
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClick = btnInserirClick
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 176
    Top = 176
    Width = 58
    Height = 24
    Caption = 'Marca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 224
    Width = 71
    Height = 24
    Caption = 'Modelo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 200
    Top = 272
    Width = 39
    Height = 24
    Caption = 'Ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 200
    Top = 320
    Width = 34
    Height = 24
    Caption = 'Cor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 184
    Top = 128
    Width = 60
    Height = 24
    Caption = 'Placa*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 152
    Top = 365
    Width = 88
    Height = 24
    Caption = 'Renavam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 424
    Top = 120
    Width = 115
    Height = 24
    Caption = 'Combust'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 248
    Top = 24
    Width = 204
    Height = 29
    Caption = 'Cadastrar ve'#237'culo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 841
    Top = 115
    Width = 65
    Height = 24
    Caption = 'Nome*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 813
    Top = 152
    Width = 93
    Height = 24
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 868
    Top = 200
    Width = 38
    Height = 24
    Caption = 'Rua'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 839
    Top = 253
    Width = 67
    Height = 24
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 878
    Top = 292
    Width = 28
    Height = 24
    Caption = 'UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 864
    Top = 337
    Width = 42
    Height = 24
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 822
    Top = 385
    Width = 84
    Height = 24
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 726
    Top = 24
    Width = 327
    Height = 29
    Caption = 'Informa'#231#245'es do Propriet'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnInserir: TButton
    Left = 376
    Top = 440
    Width = 145
    Height = 25
    Caption = 'Inserir ve'#237'culo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnInserirClick
  end
  object Edit1: TEdit
    Left = 248
    Top = 128
    Width = 121
    Height = 32
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 248
    Top = 176
    Width = 121
    Height = 32
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 248
    Top = 224
    Width = 121
    Height = 32
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 248
    Top = 272
    Width = 121
    Height = 32
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 248
    Top = 320
    Width = 121
    Height = 32
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 246
    Top = 365
    Width = 121
    Height = 32
    TabOrder = 6
  end
  object ComboBox2: TComboBox
    Left = 552
    Top = 120
    Width = 97
    Height = 32
    TabOrder = 7
  end
  object RadioGroup1: TRadioGroup
    Left = 424
    Top = 158
    Width = 297
    Height = 105
    Caption = 'Tipo'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'Sedan'
      'Hatchback'
      'Coup'#233
      'Convers'#237'vel')
    ParentFont = False
    TabOrder = 8
  end
  object GroupBox1: TGroupBox
    Left = 424
    Top = 280
    Width = 265
    Height = 105
    Caption = 'Acess'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    object TCheckBox
      Left = 0
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Ar-condicionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 0
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Dire'#231'ao hidr'#225'ulica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CheckBox2: TCheckBox
      Left = 0
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Cambio autom'#225'tico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CheckBox3: TCheckBox
      Left = 144
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Air-bag'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox4: TCheckBox
      Left = 0
      Top = 80
      Width = 97
      Height = 17
      Caption = 'Cambio manual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CheckBox5: TCheckBox
      Left = 144
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Dire'#231'ao eletrica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CheckBox6: TCheckBox
      Left = 144
      Top = 64
      Width = 97
      Height = 17
      Caption = 'Farol de milha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CheckBox7: TCheckBox
      Left = 144
      Top = 80
      Width = 97
      Height = 17
      Caption = 'Freio ABS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object Edit7: TEdit
    Left = 920
    Top = 112
    Width = 121
    Height = 32
    TabOrder = 10
  end
  object Edit8: TEdit
    Left = 920
    Top = 157
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object Edit9: TEdit
    Left = 920
    Top = 205
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object Edit10: TEdit
    Left = 920
    Top = 253
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object Edit11: TEdit
    Left = 920
    Top = 297
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object MaskEdit1: TMaskEdit
    Left = 920
    Top = 334
    Width = 118
    Height = 32
    EditMask = '00000-000;1;_'
    MaxLength = 9
    TabOrder = 15
    Text = '     -   '
  end
  object MaskEdit2: TMaskEdit
    Left = 920
    Top = 382
    Width = 119
    Height = 32
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 16
    Text = '(  )     -    '
  end
  object btnCancelar: TButton
    Left = 527
    Top = 440
    Width = 113
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = btnCancelarClick
  end
  object btnSair: TButton
    Left = 646
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnClick = btnSairClick
  end
end

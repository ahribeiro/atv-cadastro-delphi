object frmMenu: TfrmMenu
  Left = 318
  Top = 152
  Caption = 'Sistema Administrativo'
  ClientHeight = 308
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    object Cadastro: TMenuItem
      Caption = 'Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
      object Fornecedor1: TMenuItem
        Caption = 'Fornecedor'
        OnClick = Fornecedor1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Cliente2: TMenuItem
        Caption = 'Cliente'
      end
      object Fornecedor2: TMenuItem
        Caption = 'Produto'
      end
      object Fornecedor3: TMenuItem
        Caption = 'Fornecedor'
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      object SobreoSistema1: TMenuItem
        Caption = 'Sobre o Sistema'
      end
    end
  end
end

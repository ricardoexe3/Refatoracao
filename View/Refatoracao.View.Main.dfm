object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Projeto refatorando...'
  ClientHeight = 178
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbMain: TGroupBox
    Left = 0
    Top = 0
    Width = 273
    Height = 178
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 88
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 48
      Top = 123
      Width = 41
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object BtnTestar: TBitBtn
      Left = 48
      Top = 16
      Width = 169
      Height = 25
      Caption = 'Testar Resultado de condi'#231#245'es'
      TabOrder = 0
      OnClick = BtnTestarClick
    end
    object BtnConcatena: TBitBtn
      Left = 48
      Top = 55
      Width = 169
      Height = 25
      Caption = 'Concatena'#231#227'o de string'
      TabOrder = 1
      OnClick = BtnConcatenaClick
    end
    object BtnTesteCase: TBitBtn
      Left = 48
      Top = 94
      Width = 169
      Height = 25
      Caption = 'Teste de Case'
      TabOrder = 2
      OnClick = BtnTesteCaseClick
    end
    object EdtSituacao: TComboBox
      Left = 48
      Top = 142
      Width = 169
      Height = 21
      TabOrder = 3
      Items.Strings = (
        '1 - Aberto'
        '2 - Fechado'
        '3 - Todos')
    end
  end
end
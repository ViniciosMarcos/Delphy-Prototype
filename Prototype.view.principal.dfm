object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 305
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object EditCodigo: TLabeledEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 23
    EditLabel.Width = 39
    EditLabel.Height = 15
    EditLabel.Caption = 'C'#243'digo'
    TabOrder = 0
    Text = ''
  end
  object EditDescricao: TLabeledEdit
    Left = 16
    Top = 72
    Width = 121
    Height = 23
    EditLabel.Width = 51
    EditLabel.Height = 15
    EditLabel.Caption = 'Descri'#231#227'o'
    TabOrder = 1
    Text = ''
  end
  object BtnVender: TButton
    Left = 16
    Top = 112
    Width = 121
    Height = 25
    Caption = 'Vender Item'
    TabOrder = 2
    OnClick = BtnVenderClick
  end
  object BtnRepetir: TButton
    Left = 16
    Top = 143
    Width = 121
    Height = 25
    Caption = 'Repetir '#250'ltimo Item'
    TabOrder = 3
    OnClick = BtnRepetirClick
  end
  object Memo: TMemo
    Left = 152
    Top = 24
    Width = 185
    Height = 257
    TabOrder = 4
  end
end

unit Prototype.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  System.Generics.Collections, Prototype.Model.Interfaces,
  Prototype.Model.Itens;

type
  TForm1 = class(TForm)
    EditCodigo: TLabeledEdit;
    EditDescricao: TLabeledEdit;
    BtnVender: TButton;
    BtnRepetir: TButton;
    Memo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure BtnVenderClick(Sender: TObject);
    procedure BtnRepetirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FLista : TList<iItens>;
    procedure ExibeItens;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.BtnRepetirClick(Sender: TObject);
begin
  {
    Adiciono na Lista um nova instancia de Itens a qual recebe o ultimo item
    da Lista, ou seja,
    FLista[Pred(FLista.Count)] -> Pego o ultimo registro add na lista.
    Prototype.Clone -> Metodo que clona o ultimo item.
  }
  FLista.Add(FLista[Pred(FLista.Count)].Prototype.Clone);
  ExibeItens;
end;

procedure TForm1.BtnVenderClick(Sender: TObject);
var
  Item : iItens;
begin
  {
    Crio uma nova instancia de Item e adiciona na lista.
  }
  Item := TItens.New;
  Item.Codigo := StrToInt(EditCodigo.Text);
  Item.Descricao := EditDescricao.Text;
  FLista.Add(Item);
  ExibeItens;
end;

procedure TForm1.ExibeItens;
var
 I: Integer;
begin
  {
    Funcao para exibir os itens na Memo.
  }
  Memo.Lines.Clear;
  for I := 0 to Pred(FLista.Count) do
  begin
    Memo.Lines.Add(FLista[I].Codigo.ToString + ' - ' + FLista[I].Descricao);
  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {
    Libero a Lista da memoria
  }
  FLista.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  {
    Ao criar a tela, ja crio tambem uma instancia da lista.
  }
  FLista := TList<iItens>.Create;
end;

end.

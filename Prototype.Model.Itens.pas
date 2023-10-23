unit Prototype.Model.Itens;

interface

uses
  Prototype.Model.Interfaces;

type
  {
    A classe vai herdar de ambas interfaces, e devera ser implementado todos
    os metodos
  }
  TItens = class(TInterfacedObject, iItens, iPrototype<iItens>)
    private
      FDescricao: String;
      FCodigo: Integer;
      procedure SetCodigo(const Value: Integer);
      procedure SetDescricao(const Value: String);
      function GetCodigo: Integer;
      function GetDescricao: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iItens;
      property Codigo: Integer read GetCodigo write SetCodigo;
      property Descricao: String read GetDescricao write SetDescricao;
      function Prototype: iPrototype<iItens>;
      function Clone: iItens;
  end;



implementation

{ TItens }

function TItens.Clone: iItens;
begin
  {
    A funcao de clonar, cria uma nova instancia da clase com o estado em que
    a classe clonada se encontra!
  }
  Result := TItens.New;
  Result.Codigo := FCodigo;
  Result.Descricao := FDescricao;
end;

constructor TItens.Create;
begin

end;

destructor TItens.Destroy;
begin

  inherited;
end;

function TItens.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TItens.GetDescricao: String;
begin
  Result := FDescricao;
end;

class function TItens.New: iItens;
begin
  Result := Self.Create;
end;

function TItens.Prototype: iPrototype<iItens>;
begin
  Result := self;
end;

procedure TItens.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TItens.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

end.

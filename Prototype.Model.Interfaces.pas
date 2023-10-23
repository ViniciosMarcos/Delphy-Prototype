unit Prototype.Model.Interfaces;

interface

type
  {
    Interface que recebe um tipo generico.
    E apenas uma funcao de clonar retornando generico tambem.
  }
  iPrototype<T> = interface
    ['{95239AED-2F01-49CF-B966-A18241958FA8}']
    function Clone : T;
  end;


  {
    Interface dos Itens com suas propriedades.
  }
  iItens = interface
    ['{3FD28991-B80C-489D-8AB3-D1F20B65AFE2}']
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: String);
    Function GetCodigo: Integer;
    Function GetDescricao: String;
    property Codigo: Integer read GetCodigo write SetCodigo;
    property Descricao: String read GetDescricao write SetDescricao;
    function Prototype: iPrototype<iItens>; //Aqui e a funcao em que "clono" o item
  end;

implementation

end.

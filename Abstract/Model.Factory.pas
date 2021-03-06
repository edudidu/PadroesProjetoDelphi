unit Model.Factory;

interface

uses
  Model.interfaces;

type
  TModelFactory = class(TInterfacedObject, iFactory)
  private
   function Pessoa : iPessoa;
   function NotaFiscal : iNotaFiscal;
  public
   constructor Create;
   destructor Destroy ; override;
   class function New : iFactory;
  end;

implementation

uses
  Model.Pessoa, Model.NotaFiscal;

{ TModelFactory }

constructor TModelFactory.Create;
begin

end;

destructor TModelFactory.Destroy;
begin

  inherited;
end;

class function TModelFactory.New: iFactory;
begin
  Result := Self.create;
end;

function TModelFactory.NotaFiscal: iNotaFiscal;
begin
  Result :=TModelNotaFiscal.New;
end;

function TModelFactory.Pessoa: iPessoa;
begin
  Result := TModelPessoa.New;
end;

end.

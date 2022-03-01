Unit Model.NotaFiscal;

interface

uses
 Model.interfaces;

type
  TModelNotaFiscal = class(TInterfacedObject, iNotaFiscal)
  private
  public
   constructor Create;
   destructor Destroy ; override;
   class function New : iNotaFiscal;
end;

implementation

{ TModelNotaFiscal }

constructor TModelNotaFiscal.Create;
begin

end;

destructor TModelNotaFiscal.Destroy;
begin

  inherited;
end;

class function TModelNotaFiscal.New: iNotaFiscal;
begin
  Result := Self.create;
end;

end.

unit Observer.Model.Pedido;

interface

uses
  Observer.Model.Interfaces;

type
  TModelPedido = class(TInterfacedObject, iPedido)
  private
   FSubject : iSubject;
   FOrigem : iPedidoOrigem;
   Fpedido : TPedido;
  public
   constructor Create;
   destructor Destroy ; override;
   class function New : iPedido;
   function Observer(Value : iSubject) : iPedido;
   function Origem(Value : iPedidoOrigem) : iPedido;
   function Pedido(Value : TPedido) : iPedido;
   function FazerPedido : iPedido;
   function FinalizarPedido : iPedido;
  end;

implementation

{ TModelPedido }

constructor TModelPedido.Create;
begin

end;

destructor TModelPedido.Destroy;
begin

  inherited;
end;

function TModelPedido.FazerPedido: iPedido;
begin
  Result := Self;
  FSubject.Notify(Fpedido);
end;

function TModelPedido.FinalizarPedido: iPedido;
begin
  Result := Self;
  FSubject.Notify(Fpedido);
end;

class function TModelPedido.New: iPedido;
begin
  Result := Self.create;
end;

function TModelPedido.Observer(Value: iSubject): iPedido;
begin
  Result := Self;
  FSubject := Value;
end;

function TModelPedido.Origem(Value: iPedidoOrigem): iPedido;
begin
  Result := Self;
  FOrigem := Value;
end;

function TModelPedido.Pedido(Value: TPedido): iPedido;
begin
  Result := Self;
  FPedido := Value;
end;

end.

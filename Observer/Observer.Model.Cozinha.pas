unit Observer.Model.Cozinha;

interface

uses
  Observer.Model.Interfaces, System.Generics.Collections;

type
  TModelCozinha = class(TInterfacedObject, iPedidoDestino, iObserver)
  private
   FLista : TList<TPedido>;
   FDisplay : TEvDisplay;
  public
   constructor Create;
   destructor Destroy ; override;
   class function New : iPedidoDestino;

   function ReceberPedido(Value : TPedido) : iPedidoDestino;
   function FinalizarPedido(Value : TPedido) : iPedidoDestino;
   function Display(Value : TEvDisplay) : iPedidoDestino;
   function Observer : iObserver;

   function Update(Value : TPedido) : iObserver;
  end;

implementation

uses
  System.SysUtils;

{ TModelCozinha }

constructor TModelCozinha.Create;
begin
  FLista := TList<TPedido>.Create;
end;

destructor TModelCozinha.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelCozinha.Display(Value: TEvDisplay): iPedidoDestino;
begin
  Result :=Self;
  FDisplay := Value;
end;

function TModelCozinha.FinalizarPedido(Value: TPedido): iPedidoDestino;
begin
  Result :=Self;
  FLista.Remove(Value);
end;

class function TModelCozinha.New: iPedidoDestino;
begin
  Result := Self.create;
end;

function TModelCozinha.Observer: iObserver;
begin
  Result := Self;

end;

function TModelCozinha.ReceberPedido(Value: TPedido): iPedidoDestino;
begin
  Result := Self;
  FLista.Add(Value);
end;

function TModelCozinha.Update(Value: TPedido): iObserver;
begin
  Result := Self;
  Self.ReceberPedido(Value);
end;

end.

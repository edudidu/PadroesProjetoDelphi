unit Observer.Model.Observer;

interface

uses
  Observer.Model.Interfaces, System.Generics.Collections;

type
  TModelObserver = class(TInterfacedObject, iSubject)
  private
   FLista : TList<iObserver>;
  public
   constructor Create;
   destructor Destroy ; override;
   class function New : iSubject;

   function AddObserver(Value : iObserver) : iSubject;
   function RemoveObserver(Value : iObserver) : iSubject;
   function Notify(Value : TPedido) : iSubject;
  end;

implementation

uses
  System.SysUtils;

{ TModelObserver }

function TModelObserver.AddObserver(Value: iObserver): iSubject;
begin
  Result := Self;
  FLista.Add(Value);
end;


constructor TModelObserver.Create;
begin
  FLista := TList<iObserver>.Create;
end;

destructor TModelObserver.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

class function TModelObserver.New: iSubject;
begin
  Result := Self.create;
end;

function TModelObserver.Notify(Value: TPedido): iSubject;
var
  I : Integer;
begin
  Result := Self;
  for I := 0 to Pred(Flista.Count) do
    FLista.Items[I].Update(Value);

end;

function TModelObserver.RemoveObserver(Value: iObserver): iSubject;
begin
  Result := Self;
  FLista.Remove(Value);
end;

end.

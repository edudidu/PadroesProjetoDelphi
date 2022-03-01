unit Observer.Model.Interfaces;

interface

type
  TEvDisplay = procedure(Value : String)  of object;

  TPedido = record
    Produto : String;
    Setor : String;
  end;

  iObserver = interface
    ['{08465F4D-CDE6-4971-89F4-6C002819FE65}']
    function Update(Value : TPedido) : iObserver;
  end;

  iSubject = interface
    ['{1A4BE9A2-166E-449E-91E1-7EE1473E4ECD}']
    function AddObserver(Value : iObserver) : iSubject;
    function RemoveObserver(Value : iObserver) : iSubject;
    function Notify(Value : TPedido) : iSubject;
  end;

  iPedidoOrigem = interface
    ['{22A4FC2A-17AA-4CF2-BF9E-007CB524D951}']
    function FazerPedido(Value :  TPedido) : iPedidoOrigem;
    function Display(Value : TEvDisplay) : iPedidoOrigem;
    function Observer : iObserver;
  end;

  iPedidoDestino = interface
    ['{1E4F2F0D-3BC4-4400-9D4A-A25D3B0DA39D}']
    function ReceberPedido(Value : TPedido) : iPedidoDestino;
    function FinalizarPedido(Value : TPedido) : iPedidoDestino;
    function Display(Value : TEvDisplay) : iPedidoOrigem;
    function Observer : iObserver;
  end;

  iPedido = interface
    ['{87BED218-F13D-42A9-9C07-00449E0E7723}']
    function Observer(Value : iSubject) : iPedido;
    function Origem(Value : iPedidoOrigem) : iPedido;
    function Pedido(Value : TPedido) : iPedido;
    function FazerPedido : iPedido;
    function FinalizarPedido : iPedido;
  end;

implementation

end.

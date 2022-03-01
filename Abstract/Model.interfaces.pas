unit Model.interfaces;

interface

type

  iPessoa = interface
    ['{83FCE4F2-CEA7-4F41-BC49-54E8BBB1BDFC}']
  end;

  iNotaFiscal = interface
    ['{E5B80F59-8BE5-44F9-A197-D8A8CA018FF1}']
  end;

  iFactory = interface
    ['{427B1EB9-4294-4563-908F-5C846D417683}']
    function Pessoa : iPessoa;
    function NotaFiscal : iNotaFiscal;
  end;

implementation

end.

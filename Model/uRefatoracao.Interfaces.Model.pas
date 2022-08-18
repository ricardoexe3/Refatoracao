unit uRefatoracao.Interfaces.Model;

interface
 type
 iModel_Refatorar = interface
  ['{1A76896C-56A3-4285-ABE0-BCD56F07FF62}']
   procedure Proc_ConcatenaString;
   procedure Proc_TestarCondicao;
   function Fn_TesteCase(Situacao:Integer) : iModel_Refatorar;
 end;
implementation

end.

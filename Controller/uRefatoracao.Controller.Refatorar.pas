unit uRefatoracao.Controller.Refatorar;

interface

uses
  uRefatoracao.Interfaces.Model,
  uRefatoracao.Interfaces.Controller,
  uRefatoracao.Model.Refatorar;
 type
 TController_Refatorar = class(TInterfacedObject, iController_Refatorar)
  private
   FParent : iModel_Refatorar;
  public
   function Fn_Refatorar : iModel_Refatorar;
   constructor Create;
   destructor Destroy; override;
   class function New : iController_Refatorar;
 end;
implementation

{ TController_Refatorar }

constructor TController_Refatorar.Create;
begin
 FParent := TModel_Refatorar.New
end;

destructor TController_Refatorar.Destroy;
begin

  inherited;
end;

function TController_Refatorar.Fn_Refatorar: iModel_Refatorar;
begin
 Result := FParent;
end;

class function TController_Refatorar.New: iController_Refatorar;
begin
 Result := Self.Create;
end;

end.
unit uRefatoracao.Model.Refatorar;

interface

uses
  uRefatoracao.Interfaces.Model, Vcl.Dialogs, System.SysUtils, Vcl.StdCtrls;
 type  TipoSituacao = (tpAberto = 0, tpFechado = 1, tpTodos = 2);
 type
 TModel_Refatorar = class(TInterfacedObject, iModel_Refatorar)
   private
   FTipoSituacao:TipoSituacao;
   procedure Proc_Abertos;
   procedure Proc_Fechados;
   procedure Proc_Todos;
   procedure Proc_DiaMaior;
   procedure Proc_DiaMenor;
   procedure Proc_AtualizarSituacao;
  public
   procedure Proc_ConcatenaString;
   procedure Proc_TestarCondicao;
   function Fn_TesteCase(Situacao:Integer) : iModel_Refatorar;
   class function New : iModel_Refatorar;
   constructor Create;
   destructor Destroy; override;
 end;
{ TModel_Refatorar }
implementation

constructor TModel_Refatorar.Create;
begin

end;

destructor TModel_Refatorar.Destroy;
begin

  inherited;
end;

function TModel_Refatorar.Fn_TesteCase(Situacao: Integer): iModel_Refatorar;
begin
 Result := Self;

 FTipoSituacao := TipoSituacao(Situacao);

 case FTipoSituacao of
   tpAberto : Proc_Abertos;
   tpFechado : Proc_Fechados;
   tpTodos : Proc_Todos;
   else
   begin
    ShowMessage('Informe a situa??o corretamente!');
    Exit;
   end;
 end;

 Proc_AtualizarSituacao;
end;

class function TModel_Refatorar.New: iModel_Refatorar;
begin
 Result := Self.Create;
end;

procedure TModel_Refatorar.Proc_Abertos;
begin
 Showmessage('Retorna documentos abertos!');
end;

procedure TModel_Refatorar.Proc_AtualizarSituacao;
begin
 Showmessage('Situa??o do documento atualizada!');
end;

procedure TModel_Refatorar.Proc_ConcatenaString;
 var
 Texto:string;
begin
// Texto := 'Data atual: '+ FormatDateTime('DD/MM/YYYY', Now)+ #13 +
//          'Hora atual: '+ FormatDateTime('HH:MM:SS', Now);

 Texto := Format('Data atual: %s'+ #13 +
                 'Hora atual: %s',
                 [FormatDateTime('DD/MM/YYYY', Now),
                  FormatDateTime('HH:MM:SS', Now)]);

 ShowMessage(Texto);
end;

procedure TModel_Refatorar.Proc_DiaMaior;
begin
 Showmessage('Retorna dados dia maior!');
end;

procedure TModel_Refatorar.Proc_DiaMenor;
begin
 Showmessage('Retorna dados dia menor!');
end;

procedure TModel_Refatorar.Proc_Fechados;
begin
 Showmessage('Retorna documentos fechados!');
end;

procedure TModel_Refatorar.Proc_TestarCondicao;
 var
 Dia:Byte;
 DiaMaior:Boolean;
begin
 Dia := DayOfWeek(Now);

// if Dia > 2 then
//    DiaMaior := True
// else
//    DiaMaior := False;

 DiaMaior := Dia > 2;
 if DiaMaior then
    Proc_DiaMaior
 else
   Proc_DiaMenor;

end;

procedure TModel_Refatorar.Proc_Todos;
begin
 Showmessage('Retorna todos os documentos!');
end;

end.

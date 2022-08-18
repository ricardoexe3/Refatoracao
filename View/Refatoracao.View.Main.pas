unit Refatoracao.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  uRefatoracao.Interfaces.Controller;

type
  TFrmMain = class(TForm)
    gbMain: TGroupBox;
    BtnTestar: TBitBtn;
    BtnConcatena: TBitBtn;
    BtnTesteCase: TBitBtn;
    EdtSituacao: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnTestarClick(Sender: TObject);
    procedure BtnConcatenaClick(Sender: TObject);
    procedure BtnTesteCaseClick(Sender: TObject);
  private
    { Private declarations }
   FRefatorar : iController_Refatorar;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  uRefatoracao.Controller.Refatorar;

{$R *.dfm}

procedure TFrmMain.BtnConcatenaClick(Sender: TObject);
begin
  FRefatorar.Fn_Refatorar
            .Proc_ConcatenaString;
end;

procedure TFrmMain.BtnTestarClick(Sender: TObject);
begin
 FRefatorar.Fn_Refatorar
           .Proc_TestarCondicao;
end;

procedure TFrmMain.BtnTesteCaseClick(Sender: TObject);
begin
 FRefatorar.Fn_Refatorar
           .Fn_TesteCase(EdtSituacao.ItemIndex);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
 FRefatorar := TController_Refatorar.New;
end;

end.

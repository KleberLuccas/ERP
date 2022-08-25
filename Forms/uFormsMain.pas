unit uFormsMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  uFormsCadastroEstados, uFormsCadastroCidade, uFormsCadastroCliente;

type
  TFormMain = class(TForm)
    FdCon: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Estados1: TMenuItem;
    Estados2: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Estados2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.Clientes1Click(Sender: TObject);
begin
  FormsCadastroCliente.Show;
end;

procedure TFormMain.Estados1Click(Sender: TObject);
begin
  FormsCadastroEstado.Show;
end;

procedure TFormMain.Estados2Click(Sender: TObject);
begin
  FormsCadastroCidade.Show;
end;

end.

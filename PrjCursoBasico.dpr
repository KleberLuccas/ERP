program PrjCursoBasico;

uses
  Vcl.Forms,
  uFormsMain in 'Forms\uFormsMain.pas' {FormMain},
  uDmDados in 'Forms\uDmDados.pas' {DmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uFormConfigBanco in 'Forms\uFormConfigBanco.pas' {FormConfigBanco},
  uFormsCadastroPai in 'Forms\uFormsCadastroPai.pas' {FormsCadastroPai},
  uFormsCadastroEstados in 'Forms\uFormsCadastroEstados.pas' {FormsCadastroEstado},
  uFormsCadastroCidade in 'Forms\uFormsCadastroCidade.pas' {FormsCadastroCidade},
  uFormsCadastroCliente in 'Forms\uFormsCadastroCliente.pas' {FormsCadastroCliente},
  uLookup in 'Shared\uLookup.pas' {Lookup: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TLookup, Lookup);
  Application.CreateForm(TLookup, Lookup);
  Application.CreateForm(TFormsCadastroCliente, FormsCadastroCliente);
  Application.CreateForm(TFormsCadastroEstado, FormsCadastroEstado);
  Application.CreateForm(TFormsCadastroCidade, FormsCadastroCidade);
  Application.Run;
end.

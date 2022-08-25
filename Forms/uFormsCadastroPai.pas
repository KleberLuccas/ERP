unit uFormsCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  uDmDados, Vcl.Mask, Vcl.DBCtrls;

type
  TFormsCadastroPai = class(TForm)
    FdQryCadastro: TFDQuery;
    FDUpdCadastro: TFDUpdateSQL;
    uFormsCadastroPai: TPanel;
    FdTransaction: TFDTransaction;
    BtnNovo: TBitBtn;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TBitBtn;
    DsCadastro: TDataSource;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormsCadastroPai: TFormsCadastroPai;

implementation


{$R *.dfm}

procedure TFormsCadastroPai.BtnCancelarClick(Sender: TObject);
begin
  if FdQryCadastro.state in [dsEdit, dsInsert] then begin
    FdQryCadastro.Cancel;
    FdTransaction.CommitRetaining;
  end;
end;

procedure TFormsCadastroPai.BtnExcluirClick(Sender: TObject);
begin
  if FdQryCadastro.state in [dsEdit, dsInsert] then begin
    FdQryCadastro.Edit;
    FdQryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
    FdTransaction.StartTransaction;
    FdQryCadastro.Post;
    FdTransaction.CommitRetaining;
  end;
end;

procedure TFormsCadastroPai.BtnGravarClick(Sender: TObject);
begin
  if FdQryCadastro.state in [dsEdit, dsInsert] then begin
    FdQryCadastro.Post;
    FdTransaction.Commit;
    ShowMessage('Salvo com sucesso');
  end;

end;

procedure TFormsCadastroPai.BtnNovoClick(Sender: TObject);
begin
  FdQryCadastro.Transaction.StartTransaction;
  FdQryCadastro.Open;
  fdQryCadastro.Insert;
  DsCadastro.Enabled := true;
end;

procedure TFormsCadastroPai.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

end.

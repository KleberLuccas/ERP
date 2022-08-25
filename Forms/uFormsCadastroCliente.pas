unit uFormsCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormsCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uLookup, uDmDados, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait;

type
  TFormsCadastroCliente = class(TFormsCadastroPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBComboBox1: TDBComboBox;
    FdQryCadastroID_CLIENTE: TFDAutoIncField;
    FdQryCadastroRAZAO_SOCIAL: TWideStringField;
    FdQryCadastroFANTASIA: TWideStringField;
    FdQryCadastroCPF_CNPJ: TWideStringField;
    FdQryCadastroTIPO_FJ: TWideStringField;
    FdQryCadastroNOME: TWideStringField;
    FdQryCadastroEMAIL: TWideStringField;
    FdQryCadastroSITE: TWideStringField;
    FdQryCadastroENDERECO: TWideStringField;
    FdQryCadastroCOMPLEMENTO: TWideStringField;
    FdQryCadastroNUMERO: TWideStringField;
    FdQryCadastroBAIRRO: TWideStringField;
    FdQryCadastroIE: TWideStringField;
    FdQryCadastroIM: TWideStringField;
    FdQryCadastroDT_EXCLUIDO: TDateField;
    FdQryCadastroID_CIDADE: TIntegerField;
    FdQryCadastroID_ESTADO: TIntegerField;
    Label15: TLabel;
    Label16: TLabel;
    FDTransaction1: TFDTransaction;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormsCadastroCliente: TFormsCadastroCliente;

implementation

{$R *.dfm}

procedure TFormsCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  FdQuery1.Open();
  FdQuery1.Transaction.StartTransaction;
  FdQuery1.FetchAll;

  FdQuery2.Open();
  FdQuery2.Transaction.StartTransaction;
  FdQuery2.FetchAll;
end;

end.

unit uLookup;

interface

uses
  System.SysUtils, System.Classes, uDmDados, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

type
  TLookup = class(TDataModule)
  FdQryEstados: TFDQuery;
  DsEstados: TDataSource;
  FdTransaction: TFDTransaction;
  FdQryCidades: TFDQuery;
  DsCidades: TDataSource;
  FDQuery1: TFDQuery;
  DataSource1: TDataSource;
  FDTransaction2: TFDTransaction;
  FDQuery2: TFDQuery;
  DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lookup: TLookup;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.

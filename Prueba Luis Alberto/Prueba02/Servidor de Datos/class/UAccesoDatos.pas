unit UAccesoDatos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

type
  TAccesoDatos = class(TDataModule)
    Connection: TFDConnection;
    Clientes: TFDQuery;
    LstClientes: TFDQuery;
    Productos: TFDQuery;
    LstProductos: TFDQuery;
    Transaction: TFDTransaction;
    CabezaFactura: TFDQuery;
    LstCabezaFactura: TFDQuery;
    DetalleFactura: TFDQuery;
    Parametros: TFDQuery;
    DB_Driver: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccesoDatos: TAccesoDatos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

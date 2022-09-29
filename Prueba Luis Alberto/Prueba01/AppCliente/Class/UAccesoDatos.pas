unit UAccesoDatos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TAccesoDatos = class(TDataModule)
    Connection: TFDConnection;
    Clientes: TFDQuery;
    LstClientes: TFDQuery;
    Productos: TFDQuery;
    LstProductos: TFDQuery;
    CabezaFactura: TFDQuery;
    LstCabezaFactura: TFDQuery;
    DetalleFactura: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Parametros: TFDQuery;
    Transaction: TFDTransaction;
    DB_Driver: TFDPhysMySQLDriverLink;
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

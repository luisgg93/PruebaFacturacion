unit ULogicaNegocio;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Datasnap.Provider;

type
  TLogicaNegocio = class(TDataModule)
    DSPClientes: TDataSetProvider;
    TClientes: TClientDataSet;
    DSPLstClientes: TDataSetProvider;
    TLstClientes: TClientDataSet;
    DSPProductos: TDataSetProvider;
    TProductos: TClientDataSet;
    DSPLstProductos: TDataSetProvider;
    TLstProductos: TClientDataSet;
    DSPCabezaFactura: TDataSetProvider;
    TCabezaFactura: TClientDataSet;
    DSPLstCabezaFactura: TDataSetProvider;
    TLstCabezaFactura: TClientDataSet;
    DSPParametros: TDataSetProvider;
    TParametros: TClientDataSet;
    DSPDetalleFactura: TDataSetProvider;
    TDetalleFactura: TClientDataSet;
    TClientesDOCUMENTO: TIntegerField;
    TClientesNOMBRE: TStringField;
    TClientesDIRECCION: TStringField;
    TLstClientesDOCUMENTO: TIntegerField;
    TLstClientesNOMBRE: TStringField;
    TLstClientesDIRECCION: TStringField;
    TProductosCODIGO: TIntegerField;
    TProductosDESCRIPCION: TStringField;
    TProductosVALOR: TSingleField;
    TLstProductosCODIGO: TIntegerField;
    TLstProductosDESCRIPCION: TStringField;
    TLstProductosVALOR: TSingleField;
    TCabezaFacturaNUM_FACT: TIntegerField;
    TCabezaFacturaFECHA: TStringField;
    TCabezaFacturaDOC_CLIENTE: TIntegerField;
    TCabezaFacturaNOMBRE: TStringField;
    TCabezaFacturaDIRECCION: TStringField;
    TCabezaFacturaTOTAL: TSingleField;
    TLstCabezaFacturaNUM_FACT: TIntegerField;
    TLstCabezaFacturaFECHA: TStringField;
    TLstCabezaFacturaDOC_CLIENTE: TIntegerField;
    TLstCabezaFacturaNOMBRE: TStringField;
    TLstCabezaFacturaDIRECCION: TStringField;
    TLstCabezaFacturaTOTAL: TSingleField;
    TParametrosID: TIntegerField;
    TParametrosTAG: TStringField;
    TParametrosVALUE: TIntegerField;
    TDetalleFacturaNUM_FACT: TIntegerField;
    TDetalleFacturaLINEA: TIntegerField;
    TDetalleFacturaCOD_PRODUCTO: TIntegerField;
    TDetalleFacturaDESCRIPCION: TStringField;
    TDetalleFacturaVALOR: TSingleField;
    TDetalleFacturaVALOR_UNIDAD: TSingleField;
    TDetalleFacturaCANTIDAD: TIntegerField;
    TDetalleFacturaVALOR_TOTAL: TSingleField;
    procedure TClientesAfterPost(DataSet: TDataSet);
    procedure TProductosAfterPost(DataSet: TDataSet);
    procedure TLstProductosAfterDelete(DataSet: TDataSet);
    procedure TLstClientesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure TLstClientesAfterDelete(DataSet: TDataSet);
    procedure TLstProductosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ErrorSQL: string;
  end;

var
  LogicaNegocio: TLogicaNegocio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UAccesoDatos;

{$R *.dfm}

procedure TLogicaNegocio.TClientesAfterPost(DataSet: TDataSet);
begin
  if TClientes.ChangeCount > 0 then
  begin
    TClientes.ApplyUpdates(0);
    TClientes.Refresh;

    if TLstClientes.Active then
      TLstClientes.Refresh;
  end;
end;

procedure TLogicaNegocio.TLstClientesAfterDelete(DataSet: TDataSet);
begin
  TLstClientes.ApplyUpdates(0);
end;

procedure TLogicaNegocio.TLstClientesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ErrorSQL :=  E.Message;
  Action := raCancel;
end;

procedure TLogicaNegocio.TLstProductosAfterDelete(DataSet: TDataSet);
begin
  TLstProductos.ApplyUpdates(0);
end;

procedure TLogicaNegocio.TLstProductosReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ErrorSQL :=  E.Message;
  Action := raCancel;
end;

procedure TLogicaNegocio.TProductosAfterPost(DataSet: TDataSet);
begin
  if TProductos.ChangeCount > 0 then
  begin
    TProductos.ApplyUpdates(0);
    TProductos.Refresh;

    if TLstProductos.Active then
      TLstProductos.Refresh;
  end;
end;

end.

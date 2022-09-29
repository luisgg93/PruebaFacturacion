program AppCliente;

uses
  Vcl.Forms,
  UPrincipal in 'Form\UPrincipal.pas' {FPrincipal},
  UAccesoDatos in 'Class\UAccesoDatos.pas' {AccesoDatos: TDataModule},
  ULogicaNegocio in 'Class\ULogicaNegocio.pas' {LogicaNegocio: TDataModule},
  ULstClientes in 'Form\ULstClientes.pas' {FLstClientes},
  UCliente in 'Form\UCliente.pas' {FCliente},
  ULstProductos in 'Form\ULstProductos.pas' {FLstProductos},
  UProducto in 'Form\UProducto.pas' {FProducto},
  UFacturacion in 'Form\UFacturacion.pas' {FFacturacion},
  UFactura in 'Form\UFactura.pas' {FFactura},
  ULstFactura in 'Form\ULstFactura.pas' {FLstFacturas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAccesoDatos, AccesoDatos);
  Application.CreateForm(TLogicaNegocio, LogicaNegocio);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.

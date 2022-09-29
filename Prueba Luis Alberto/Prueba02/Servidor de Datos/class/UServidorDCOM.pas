unit UServidorDCOM;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ServidorDatos_TLB, StdVcl, Datasnap.Provider;

type
  TServidorDCOM = class(TRemoteDataModule, IServidorDCOM)
    DSPClientes: TDataSetProvider;
    DSPLstClientes: TDataSetProvider;
    DSPProductos: TDataSetProvider;
    DSPLstProductos: TDataSetProvider;
    DSPCabezaFactura: TDataSetProvider;
    DSPLstCabezaFactura: TDataSetProvider;
    DSPParametros: TDataSetProvider;
    DSPDetalleFactura: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

uses UAccesoDatos;

class procedure TServidorDCOM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

initialization
  TComponentFactory.Create(ComServer, TServidorDCOM,
    Class_ServidorDCOM, ciMultiInstance, tmApartment);
end.

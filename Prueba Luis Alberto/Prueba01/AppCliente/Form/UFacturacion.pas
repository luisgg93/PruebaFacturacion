unit UFacturacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TFFacturacion = class(TForm)
    DSCabezaFactura: TDataSource;
    DSCliente: TDataSource;
    GroupBox1: TGroupBox;
    DBEditDocCliente: TDBEdit;
    DBEditNombreCliente: TDBEdit;
    DBDireccionCliente: TDBEdit;
    DBFechaFacturacion: TDBEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    ListadoProductosGrid: TDBGrid;
    LabelNumFactura: TLabel;
    DSDetalleFactura: TDataSource;
    MemDetalleFactura: TFDMemTable;
    MemDetalleFacturaCODGIO: TIntegerField;
    MemDetalleFacturaDESCRIPCION: TStringField;
    MemDetalleFacturaVALOR_UNI: TFloatField;
    MemDetalleFacturaCANTIDAD: TIntegerField;
    MemDetalleFacturaVALOR_TOTAL: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    Panel1: TPanel;
    LabelTotal: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure DBEditDocClienteChange(Sender: TObject);
    procedure BCrearFacturaClick(Sender: TObject);
    procedure MemDetalleFacturaCODGIOValidate(Sender: TField);
    procedure MemDetalleFacturaCANTIDADChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MemDetalleFacturaAfterPost(DataSet: TDataSet);
    procedure ListadoProductosGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFacturacion: TFFacturacion;

implementation

{$R *.dfm}

uses ULogicaNegocio;

procedure TFFacturacion.BCrearFacturaClick(Sender: TObject);
begin
  // if (length(DBEditNombreCliente.Text) > 0) then
  // begin
  // LogicaNegocio.TCabezaFactura.Post;
  // DBEditDocCliente.Enabled := False;
  // ListadoProductosGrid.Enabled := True;
  // BCrearFactura.Enabled := False;
  // end;

end;

procedure TFFacturacion.Button1Click(Sender: TObject);
var
  line: Integer;
  TOTAL: real;
begin
  if (length(DBEditNombreCliente.Text) > 0) then
  begin
    if (MemDetalleFactura.RecordCount > 0) then
    begin
      try
        LogicaNegocio.TCabezaFactura.Post;
        MemDetalleFactura.DisableControls;
        MemDetalleFactura.First;
        line := 0;
        LogicaNegocio.TDetalleFactura.Open;
        LogicaNegocio.TParametros.Open;

        while not MemDetalleFactura.Eof do
        begin
          inc(line);
          LogicaNegocio.TDetalleFactura.Insert;
          LogicaNegocio.TDetalleFacturaNUM_FACT.AsString :=
            LogicaNegocio.TCabezaFacturaNUM_FACT.AsString;
          LogicaNegocio.TDetalleFacturaLINEA.AsInteger := line;
          LogicaNegocio.TDetalleFacturaCOD_PRODUCTO.AsString :=
            MemDetalleFacturaCODGIO.AsString;
          LogicaNegocio.TDetalleFacturaVALOR_UNIDAD.AsString :=
            MemDetalleFacturaVALOR_UNI.AsString;
          LogicaNegocio.TDetalleFacturaCANTIDAD.AsString :=
            MemDetalleFacturaCANTIDAD.AsString;
          LogicaNegocio.TDetalleFacturaVALOR_TOTAL.AsString :=
            MemDetalleFacturaVALOR_TOTAL.AsString;
          LogicaNegocio.TDetalleFactura.Post;
          TOTAL := TOTAL + MemDetalleFacturaVALOR_TOTAL.AsFloat;
          MemDetalleFactura.Next;
        end;
        MemDetalleFactura.EnableControls;

        LogicaNegocio.TCabezaFactura.Edit;
        LogicaNegocio.TCabezaFacturaTOTAL.AsFloat := TOTAL;

        LogicaNegocio.TCabezaFactura.ApplyUpdates(0);
        LogicaNegocio.TDetalleFactura.ApplyUpdates(0);
        LogicaNegocio.TParametros.ApplyUpdates(0);

        LogicaNegocio.TDetalleFactura.Close;
        ShowMessage('Se gener� '
          +char(13)+'Factura: '
          +LogicaNegocio.TCabezaFacturaNUM_FACT.AsString
          +char(13)+'Cliente:'
          +DBEditNombreCliente.Text
        );

        ModalResult := mrOk;
      except on E: Exception do
        ShowMessage('Error: '+ E.Message);
      end;
    end
    else
      ShowMessage('No ha registrado ningun producto');
  end
  else
    ShowMessage('Debe Ingresar un Cliente');
end;

procedure TFFacturacion.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFFacturacion.DBEditDocClienteChange(Sender: TObject);
var
  DocumentoCliente: string;
begin
  DocumentoCliente := DBEditDocCliente.Text;
  if (DocumentoCliente.length < 1) then
    DocumentoCliente := '0';

  LogicaNegocio.TClientes.Close;
  LogicaNegocio.TClientes.Params.ParamByName('DOCU').AsInteger :=
    DocumentoCliente.ToInteger;
  LogicaNegocio.TClientes.Open;

//  if (length(DBEditNombreCliente.Text) > 0) then
//    BCrearFactura.Enabled := True;

end;

procedure TFFacturacion.FormShow(Sender: TObject);
begin
//  DBEditDocCliente.Enabled := True;
//  ListadoProductosGrid.Enabled := False;
////  BCrearFactura.Enabled := False;
  MemDetalleFactura.Active := True;
  MemDetalleFactura.EmptyDataSet;
end;

procedure TFFacturacion.ListadoProductosGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ( ListadoProductosGrid.SelectedRows.CurrentRowSelected ) then
  begin
      ListadoProductosGrid.Canvas.Brush.Color := $00FFD199;
       ListadoProductosGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if (gdSelected in State) then
  begin
     ListadoProductosGrid.Canvas.Brush.Color := $00FFD199;
     ListadoProductosGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
end;

procedure TFFacturacion.MemDetalleFacturaAfterPost(DataSet: TDataSet);
var
  TOTAL: real;
begin
  MemDetalleFactura.DisableControls;
  MemDetalleFactura.First;
  while not MemDetalleFactura.Eof do
  begin
    TOTAL := TOTAL + MemDetalleFacturaVALOR_TOTAL.AsFloat;
    MemDetalleFactura.Next;
  end;
  MemDetalleFactura.EnableControls;
  LabelTotal.Caption := 'TOTAL A PAGAR: ' + formatfloat('#,###.00', TOTAL);
end;

procedure TFFacturacion.MemDetalleFacturaCANTIDADChange(Sender: TField);
begin
  if (MemDetalleFacturaDESCRIPCION.AsString.length > 0) then
  begin
    MemDetalleFacturaVALOR_TOTAL.AsFloat := MemDetalleFacturaVALOR_UNI.AsFloat *
      MemDetalleFacturaCANTIDAD.AsInteger;
  end
  else
    raise Exception.Create('A�adir un producto');
end;

procedure TFFacturacion.MemDetalleFacturaCODGIOValidate(Sender: TField);
var
  CodigoProducto: string;
begin
  CodigoProducto := Sender.Text;
  if (CodigoProducto.length < 1) then
    CodigoProducto := '0';

  LogicaNegocio.TProductos.Close;
  LogicaNegocio.TProductos.Params.ParamByName('COD').AsInteger :=
    CodigoProducto.ToInteger;
  LogicaNegocio.TProductos.Open;

  if (LogicaNegocio.TProductos.RecordCount > 0) then
  begin
    MemDetalleFacturaDESCRIPCION.AsString :=
      LogicaNegocio.TProductosDESCRIPCION.AsString;
    MemDetalleFacturaVALOR_UNI.AsString :=
      LogicaNegocio.TProductosVALOR.AsString;
    MemDetalleFacturaCANTIDAD.AsInteger := 1;
    MemDetalleFacturaVALOR_TOTAL.AsString :=
      LogicaNegocio.TProductosVALOR.AsString;
  end
  else
    raise Exception.Create('Este c�digo de producto no existe');
end;

end.

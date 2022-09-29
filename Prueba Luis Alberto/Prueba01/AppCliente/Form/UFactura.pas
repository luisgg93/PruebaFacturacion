unit UFactura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TFFactura = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditDocCliente: TDBEdit;
    DBEditNombreCliente: TDBEdit;
    DBDireccionCliente: TDBEdit;
    DBFechaFacturacion: TDBEdit;
    GroupBox2: TGroupBox;
    ListadoProductosGrid: TDBGrid;
    Label5: TLabel;
    LabelTotal: TLabel;
    Button2: TButton;
    Panel2: TPanel;
    Panel1: TPanel;
    DSCabezaFactura: TDataSource;
    DSDetalleFactura: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure Button2Click(Sender: TObject);
    procedure ListadoProductosGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFactura: TFFactura;

implementation

{$R *.dfm}

uses ULogicaNegocio;

procedure TFFactura.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFFactura.ListadoProductosGridDrawColumnCell(Sender: TObject;
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

end.

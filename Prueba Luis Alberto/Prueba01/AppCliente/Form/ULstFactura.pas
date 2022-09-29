unit ULstFactura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFLstFacturas = class(TForm)
    Panel2: TPanel;
    DSLstFacturas: TDataSource;
    Label1: TLabel;
    ListFacturasGrid: TDBGrid;
    BVisualizar: TButton;
    BSalir: TButton;
    Panel1: TPanel;
    procedure ListFacturasGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BVisualizarClick(Sender: TObject);
    procedure BSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLstFacturas: TFLstFacturas;

implementation

{$R *.dfm}

uses ULogicaNegocio, UFactura;

procedure TFLstFacturas.BSalirClick(Sender: TObject);
begin
  close;
end;

procedure TFLstFacturas.BVisualizarClick(Sender: TObject);
begin
  LogicaNegocio.TCabezaFactura.Params.ParamByName('NUM_FACT').AsInteger := LogicaNegocio.TLstCabezaFacturaNUM_FACT.AsInteger;
  LogicaNegocio.TDetalleFactura.Params.ParamByName('NUM_FACT').AsInteger := LogicaNegocio.TLstCabezaFacturaNUM_FACT.AsInteger;
  LogicaNegocio.TCabezaFactura.Open;
  LogicaNegocio.TDetalleFactura.Open;
  Application.CreateForm( TFFactura, FFactura );
  FFactura.ShowModal;
  LogicaNegocio.TDetalleFactura.Close;
  LogicaNegocio.TCabezaFactura.Close;
  ListFacturasGrid.SetFocus;
end;

procedure TFLstFacturas.ListFacturasGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ( ListFacturasGrid.SelectedRows.CurrentRowSelected ) then
  begin
      ListFacturasGrid.Canvas.Brush.Color := $00FFD199;
      ListFacturasGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if (gdSelected in State) then
  begin
     ListFacturasGrid.Canvas.Brush.Color := $00FFD199;
     ListFacturasGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
end;

end.

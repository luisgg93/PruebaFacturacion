unit ULstProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFLstProductos = class(TForm)
    BNuevo: TButton;
    BModificar: TButton;
    BEliminar: TButton;
    DSLstProductos: TDataSource;
    BSalir: TButton;
    Panel2: TPanel;
    Label4: TLabel;
    Panel1: TPanel;
    ListProductosGrid: TDBGrid;
    procedure BNuevoClick(Sender: TObject);
    procedure BModificarClick(Sender: TObject);
    procedure BEliminarClick(Sender: TObject);
    procedure BSalirClick(Sender: TObject);
    procedure ListProductosGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLstProductos: TFLstProductos;

implementation

{$R *.dfm}

uses ULogicaNegocio, UProducto;

procedure TFLstProductos.BEliminarClick(Sender: TObject);
begin
  LogicaNegocio.ErrorSQL := '';

  with LogicaNegocio.TLstProductos do
    if RecordCount > 0 then
      if Application.MessageBox('¿Desea eliminar este Producto?', 'Alerta',
        MB_ICONQUESTION or MB_YESNO ) = ID_YES then
        Delete;

  if( LogicaNegocio.ErrorSQL.Length>0 ) then
    ShowMessage(LogicaNegocio.ErrorSQL);

  ListProductosGrid.SetFocus;
end;

procedure TFLstProductos.BModificarClick(Sender: TObject);
begin
  LogicaNegocio.TProductos.Params.ParamByName('COD').AsInteger := LogicaNegocio.TLstProductosCODIGO.AsInteger;
  LogicaNegocio.TProductos.Open;
  LogicaNegocio.TProductos.Edit;
  Application.CreateForm( TFProducto, FProducto );
  FProducto.DBEditCodigo.Enabled := False;
  FProducto.ShowModal;
  LogicaNegocio.TProductos.Close;
  ListProductosGrid.SetFocus;
end;

procedure TFLstProductos.BNuevoClick(Sender: TObject);
begin
  LogicaNegocio.TProductos.Open;
  LogicaNegocio.TProductos.Insert;
  Application.CreateForm( TFProducto, FProducto );
  FProducto.DBEditCodigo.Enabled := True;
  FProducto.ShowModal;
  LogicaNegocio.TProductos.Close;
end;

procedure TFLstProductos.BSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFLstProductos.ListProductosGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ( ListProductosGrid.SelectedRows.CurrentRowSelected ) then
  begin
      ListProductosGrid.Canvas.Brush.Color := $00FFD199;
       ListProductosGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if (gdSelected in State) then
  begin
     ListProductosGrid.Canvas.Brush.Color := $00FFD199;
     ListProductosGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
end;

end.

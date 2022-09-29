unit UProducto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ExtCtrls;

type
  TFProducto = class(TForm)
    DBEditCodigo: TDBEdit;
    DBEditDescripcion: TDBEdit;
    DBEditValor: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    DSProducto: TDataSource;
    Panel2: TPanel;
    Panel1: TPanel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProducto: TFProducto;

implementation

{$R *.dfm}

uses ULogicaNegocio;

procedure TFProducto.Button1Click(Sender: TObject);
begin
  LogicaNegocio.TProductos.Post;
  ModalResult := mrOk;
end;

procedure TFProducto.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

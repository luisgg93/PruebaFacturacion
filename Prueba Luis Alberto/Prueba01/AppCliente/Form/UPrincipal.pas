unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,inifiles; 

type
  TFPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses ULstClientes, UAccesoDatos, ULogicaNegocio, ULstProductos, UFacturacion,
   ULstFactura;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  LogicaNegocio.TLstClientes.Active := True;
  LogicaNegocio.TLstClientes.First;
  Application.CreateForm( TFLstClientes, FLstClientes );
  FLstClientes.ShowModal;
  LogicaNegocio.TLstClientes.Active := False;
end;

procedure TFPrincipal.Button2Click(Sender: TObject);
begin
  LogicaNegocio.TLstProductos.Active := True;
  LogicaNegocio.TLstProductos.First;
  Application.CreateForm( TFLstProductos, FLstProductos );
  FLstProductos.ShowModal;
  LogicaNegocio.TLstProductos.Active := False;
end;

procedure TFPrincipal.Button3Click(Sender: TObject);
var
  NUM_FACTURA: integer;
begin

  LogicaNegocio.TParametros.Open;
  LogicaNegocio.TParametros.Locate('ID', 1, []);
  NUM_FACTURA := LogicaNegocio.TParametrosVALUE.AsInteger+1;
  LogicaNegocio.TParametros.Edit;
  LogicaNegocio.TParametrosVALUE.AsInteger := NUM_FACTURA;
  LogicaNegocio.TParametros.Post;

  LogicaNegocio.TCabezaFactura.Open;
  LogicaNegocio.TCabezaFactura.Insert;
  LogicaNegocio.TCabezaFacturaNUM_FACT.AsString := NUM_FACTURA.ToString;
  Application.CreateForm( TFFacturacion, FFacturacion );
  FFacturacion.LabelNumFactura.Caption := NUM_FACTURA.ToString;
  FFacturacion.DBFechaFacturacion.Text := formatdatetime('yyyy-mm-dd',now());
  FFacturacion.ShowModal;

  LogicaNegocio.TParametros.Close;
  LogicaNegocio.TCabezaFactura.close;
end;

procedure TFPrincipal.Button4Click(Sender: TObject);
begin
  LogicaNegocio.TLstCabezaFactura.Active := True;
  LogicaNegocio.TLstCabezaFactura.First;
  Application.CreateForm( TFLstFacturas, FLstFacturas );
  FLstFacturas.ShowModal;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
Var
  MiFichero : TIniFile;
  host,database,User,Password,Port: string;
begin
  try
    MiFichero := TiniFile.Create (ExtractFilePath(ParamStr(0))+'config.ini');
    host := MiFichero.ReadString('database','Host','');
    AccesoDatos.Connection.Params.Add('Server='+host);

    database := MiFichero.ReadString('database','DatabaseName','');
    AccesoDatos.Connection.Params.Database :=  database;

    User := MiFichero.ReadString('database','User','');
    AccesoDatos.Connection.Params.UserName := User;

    Password := MiFichero.ReadString('database','Password','');
    AccesoDatos.Connection.Params.Password := Password; 

    Port := MiFichero.ReadString('database','Host','');
    AccesoDatos.Connection.Params.Add('Port='+Port);

    MiFichero.Free;
    
    AccesoDatos.Connection.Open;
  except on E: Exception do
    ShowMessage('Error: '+E.Message);
  end;

  if( AccesoDatos.Connection.Connected )then
  begin
    Button1.Enabled:=True;
    Button2.Enabled:=True;
    Button3.Enabled:=True;
    Button4.Enabled:=True;
  end;
end;

end.

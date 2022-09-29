unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,inifiles,ServidorDatos_TLB,ComServ;

type
  TFPrincipal = class(TForm)
    Label1: TLabel;
    Panel2: TPanel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UAccesoDatos;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  try
    ComServer.UpdateRegistry(True);
    ShowMessage('Se registro ServidorDCOM');
  except on E: Exception do
    ShowMessage('Error - '+ e.Message);
  end;

end;

procedure TFPrincipal.Button2Click(Sender: TObject);
begin
  try
    ComServer.UpdateRegistry(False);
    ShowMessage('Se elimino ServidorDCOM');
  except on E: Exception do
    ShowMessage('Error - '+ e.Message);
  end;
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

end;

end.

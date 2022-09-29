unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ExtCtrls;

type
  TMemoBD = class(TDBMemo);
  TFCliente = class(TForm)
    DSCliente: TDataSource;
    DBTextDocumento: TDBEdit;
    DBTextNombre: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBMemoDireccion: TDBMemo;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Panel1: TPanel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliente: TFCliente;

implementation

{$R *.dfm}

uses ULogicaNegocio;

procedure TFCliente.Button1Click(Sender: TObject);
begin
  LogicaNegocio.TClientes.Post;
  ModalResult := mrOk;
end;

procedure TFCliente.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFCliente.FormShow(Sender: TObject);
begin
  TMemoBD(DBMemoDireccion).CharCase := ecUpperCase;
end;

end.

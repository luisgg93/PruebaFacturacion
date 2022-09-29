program ServidorDatos;

uses
  Vcl.Forms,
  UPrincipal in 'form\UPrincipal.pas' {FPrincipal},
  ServidorDatos_TLB in 'ServidorDatos_TLB.pas',
  UServidorDCOM in 'class\UServidorDCOM.pas' {ServidorDCOM: TRemoteDataModule} {ServidorDCOM: CoClass},
  UAccesoDatos in 'class\UAccesoDatos.pas' {AccesoDatos: TDataModule};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TAccesoDatos, AccesoDatos);
  Application.Run;
end.

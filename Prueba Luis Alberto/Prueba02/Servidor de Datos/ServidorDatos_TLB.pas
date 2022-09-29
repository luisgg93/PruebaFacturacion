unit ServidorDatos_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 29/09/2022 14:48:40 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\ingen\OneDrive - SMARTPROCESS COLOMBIA SAS\Escritorio\Prueba Luis Alberto\Prueba02\Servidor de Datos\ServidorDatos (1)
// LIBID: {50FEA20A-F166-4C89-8DAF-CA7D2189BA14}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 Midas, (midas.dll)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, Midas, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ServidorDatosMajorVersion = 1;
  ServidorDatosMinorVersion = 0;

  LIBID_ServidorDatos: TGUID = '{50FEA20A-F166-4C89-8DAF-CA7D2189BA14}';

  IID_IServidorDCOM: TGUID = '{583DB526-1ADD-472B-A7FF-7F8D398FFF23}';
  CLASS_ServidorDCOM: TGUID = '{48EDBBEA-BD52-4259-84FA-584DB92E606C}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IServidorDCOM = interface;
  IServidorDCOMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  ServidorDCOM = IServidorDCOM;


// *********************************************************************//
// Interface: IServidorDCOM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {583DB526-1ADD-472B-A7FF-7F8D398FFF23}
// *********************************************************************//
  IServidorDCOM = interface(IAppServer)
    ['{583DB526-1ADD-472B-A7FF-7F8D398FFF23}']
  end;

// *********************************************************************//
// DispIntf:  IServidorDCOMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {583DB526-1ADD-472B-A7FF-7F8D398FFF23}
// *********************************************************************//
  IServidorDCOMDisp = dispinterface
    ['{583DB526-1ADD-472B-A7FF-7F8D398FFF23}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT;
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT;
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant;
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT;
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString;
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoServidorDCOM provides a Create and CreateRemote method to
// create instances of the default interface IServidorDCOM exposed by
// the CoClass ServidorDCOM. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoServidorDCOM = class
    class function Create: IServidorDCOM;
    class function CreateRemote(const MachineName: string): IServidorDCOM;
  end;

implementation

uses System.Win.ComObj;

class function CoServidorDCOM.Create: IServidorDCOM;
begin
  Result := CreateComObject(CLASS_ServidorDCOM) as IServidorDCOM;
end;

class function CoServidorDCOM.CreateRemote(const MachineName: string): IServidorDCOM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServidorDCOM) as IServidorDCOM;
end;

end.


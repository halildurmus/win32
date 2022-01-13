// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/structs.g.dart';
import '../../graphics/printing/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/windowsandmessaging/callbacks.g.dart';
import '../../foundation/callbacks.g.dart';
import '../../security/structs.g.dart';
import '../../devices/display/structs.g.dart';
import '../../system/registry/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// {@category Struct}
class ADDJOB_INFO_1 extends Struct {
  external Pointer<Utf16> Path;

  @Uint32()
  external int JobId;
}

/// {@category Struct}
class ATTRIBUTE_INFO_1 extends Struct {
  @Uint32()
  external int dwJobNumberOfPagesPerSide;

  @Uint32()
  external int dwDrvNumberOfPagesPerSide;

  @Uint32()
  external int dwNupBorderFlags;

  @Uint32()
  external int dwJobPageOrderFlags;

  @Uint32()
  external int dwDrvPageOrderFlags;

  @Uint32()
  external int dwJobNumberOfCopies;

  @Uint32()
  external int dwDrvNumberOfCopies;
}

/// {@category Struct}
class ATTRIBUTE_INFO_2 extends Struct {
  @Uint32()
  external int dwJobNumberOfPagesPerSide;

  @Uint32()
  external int dwDrvNumberOfPagesPerSide;

  @Uint32()
  external int dwNupBorderFlags;

  @Uint32()
  external int dwJobPageOrderFlags;

  @Uint32()
  external int dwDrvPageOrderFlags;

  @Uint32()
  external int dwJobNumberOfCopies;

  @Uint32()
  external int dwDrvNumberOfCopies;

  @Uint32()
  external int dwColorOptimization;
}

/// {@category Struct}
class ATTRIBUTE_INFO_3 extends Struct {
  @Uint32()
  external int dwJobNumberOfPagesPerSide;

  @Uint32()
  external int dwDrvNumberOfPagesPerSide;

  @Uint32()
  external int dwNupBorderFlags;

  @Uint32()
  external int dwJobPageOrderFlags;

  @Uint32()
  external int dwDrvPageOrderFlags;

  @Uint32()
  external int dwJobNumberOfCopies;

  @Uint32()
  external int dwDrvNumberOfCopies;

  @Uint32()
  external int dwColorOptimization;

  @Int16()
  external int dmPrintQuality;

  @Int16()
  external int dmYResolution;
}

/// {@category Struct}
class ATTRIBUTE_INFO_4 extends Struct {
  @Uint32()
  external int dwJobNumberOfPagesPerSide;

  @Uint32()
  external int dwDrvNumberOfPagesPerSide;

  @Uint32()
  external int dwNupBorderFlags;

  @Uint32()
  external int dwJobPageOrderFlags;

  @Uint32()
  external int dwDrvPageOrderFlags;

  @Uint32()
  external int dwJobNumberOfCopies;

  @Uint32()
  external int dwDrvNumberOfCopies;

  @Uint32()
  external int dwColorOptimization;

  @Int16()
  external int dmPrintQuality;

  @Int16()
  external int dmYResolution;

  @Uint32()
  external int dwDuplexFlags;

  @Uint32()
  external int dwNupDirection;

  @Uint32()
  external int dwBookletFlags;

  @Uint32()
  external int dwScalingPercentX;

  @Uint32()
  external int dwScalingPercentY;
}

/// {@category Struct}
class BIDI_DATA extends Struct {
  @Uint32()
  external int dwBidiType;

  external _BIDI_DATA__u_e__Union u;
}

/// {@category Struct}
class _BIDI_DATA__u_e__Union extends Union {
  @Int32()
  external int bData;

  @Int32()
  external int iData;

  external Pointer<Utf16> sData;

  @Float()
  external double fData;

  external BINARY_CONTAINER biData;
}

extension BIDI_DATA_Extension on BIDI_DATA {
  int get bData => this.u.bData;
  set bData(int value) => this.u.bData = value;

  int get iData => this.u.iData;
  set iData(int value) => this.u.iData = value;

  Pointer<Utf16> get sData => this.u.sData;
  set sData(Pointer<Utf16> value) => this.u.sData = value;

  double get fData => this.u.fData;
  set fData(double value) => this.u.fData = value;

  BINARY_CONTAINER get biData => this.u.biData;
  set biData(BINARY_CONTAINER value) => this.u.biData = value;
}

/// {@category Struct}
class BIDI_REQUEST_CONTAINER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Count;

  @Array(1)
  external Array<BIDI_REQUEST_DATA> aData;
}

/// {@category Struct}
class BIDI_REQUEST_DATA extends Struct {
  @Uint32()
  external int dwReqNumber;

  external Pointer<Utf16> pSchema;

  external BIDI_DATA data;
}

/// {@category Struct}
class BIDI_RESPONSE_CONTAINER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Count;

  @Array(1)
  external Array<BIDI_RESPONSE_DATA> aData;
}

/// {@category Struct}
class BIDI_RESPONSE_DATA extends Struct {
  @Uint32()
  external int dwResult;

  @Uint32()
  external int dwReqNumber;

  external Pointer<Utf16> pSchema;

  external BIDI_DATA data;
}

/// {@category Struct}
class BINARY_CONTAINER extends Struct {
  @Uint32()
  external int cbBuf;

  external Pointer<Uint8> pData;
}

/// {@category Struct}
class BranchOfficeJobData extends Struct {
  @Int32()
  external int eEventType;

  @Uint32()
  external int JobId;

  external _BranchOfficeJobData__JobInfo_e__Union JobInfo;
}

/// {@category Struct}
class _BranchOfficeJobData__JobInfo_e__Union extends Union {
  external BranchOfficeJobDataPrinted LogJobPrinted;

  external BranchOfficeJobDataRendered LogJobRendered;

  external BranchOfficeJobDataError LogJobError;

  external BranchOfficeJobDataPipelineFailed LogPipelineFailed;

  external BranchOfficeLogOfflineFileFull LogOfflineFileFull;
}

extension BranchOfficeJobData_Extension on BranchOfficeJobData {
  BranchOfficeJobDataPrinted get LogJobPrinted => this.JobInfo.LogJobPrinted;
  set LogJobPrinted(BranchOfficeJobDataPrinted value) =>
      this.JobInfo.LogJobPrinted = value;

  BranchOfficeJobDataRendered get LogJobRendered => this.JobInfo.LogJobRendered;
  set LogJobRendered(BranchOfficeJobDataRendered value) =>
      this.JobInfo.LogJobRendered = value;

  BranchOfficeJobDataError get LogJobError => this.JobInfo.LogJobError;
  set LogJobError(BranchOfficeJobDataError value) =>
      this.JobInfo.LogJobError = value;

  BranchOfficeJobDataPipelineFailed get LogPipelineFailed =>
      this.JobInfo.LogPipelineFailed;
  set LogPipelineFailed(BranchOfficeJobDataPipelineFailed value) =>
      this.JobInfo.LogPipelineFailed = value;

  BranchOfficeLogOfflineFileFull get LogOfflineFileFull =>
      this.JobInfo.LogOfflineFileFull;
  set LogOfflineFileFull(BranchOfficeLogOfflineFileFull value) =>
      this.JobInfo.LogOfflineFileFull = value;
}

/// {@category Struct}
class BranchOfficeJobDataContainer extends Struct {
  @Uint32()
  external int cJobDataEntries;

  @Array(1)
  external Array<BranchOfficeJobData> JobData;
}

/// {@category Struct}
class BranchOfficeJobDataError extends Struct {
  @Uint32()
  external int LastError;

  external Pointer<Utf16> pDocumentName;

  external Pointer<Utf16> pUserName;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pDataType;

  @Int64()
  external int TotalSize;

  @Int64()
  external int PrintedSize;

  @Uint32()
  external int TotalPages;

  @Uint32()
  external int PrintedPages;

  external Pointer<Utf16> pMachineName;

  external Pointer<Utf16> pJobError;

  external Pointer<Utf16> pErrorDescription;
}

/// {@category Struct}
class BranchOfficeJobDataPipelineFailed extends Struct {
  external Pointer<Utf16> pDocumentName;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pExtraErrorInfo;
}

/// {@category Struct}
class BranchOfficeJobDataPrinted extends Struct {
  @Uint32()
  external int Status;

  external Pointer<Utf16> pDocumentName;

  external Pointer<Utf16> pUserName;

  external Pointer<Utf16> pMachineName;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pPortName;

  @Int64()
  external int Size;

  @Uint32()
  external int TotalPages;
}

/// {@category Struct}
class BranchOfficeJobDataRendered extends Struct {
  @Int64()
  external int Size;

  @Uint32()
  external int ICMMethod;

  @Int16()
  external int Color;

  @Int16()
  external int PrintQuality;

  @Int16()
  external int YResolution;

  @Int16()
  external int Copies;

  @Int16()
  external int TTOption;
}

/// {@category Struct}
class BranchOfficeLogOfflineFileFull extends Struct {
  external Pointer<Utf16> pMachineName;
}

/// {@category Struct}
class COMPROPSHEETUI extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Flags;

  @IntPtr()
  external int hInstCaller;

  external Pointer<Int8> pCallerName;

  @IntPtr()
  external int UserData;

  external Pointer<Int8> pHelpFile;

  external Pointer<NativeFunction<CPSUICALLBACK>> pfnCallBack;

  external Pointer<OPTITEM> pOptItem;

  external Pointer<DLGPAGE> pDlgPage;

  @Uint16()
  external int cOptItem;

  @Uint16()
  external int cDlgPage;

  @IntPtr()
  external int IconID;

  external Pointer<Int8> pOptItemName;

  @Uint16()
  external int CallerVersion;

  @Uint16()
  external int OptItemVersion;

  @Array(4)
  external Array<IntPtr> dwReserved;
}

/// {@category Struct}
class CONFIG_INFO_DATA_1 extends Struct {
  @Array(128)
  external Array<Uint8> Reserved;

  @Uint32()
  external int dwVersion;
}

/// {@category Struct}
class CORE_PRINTER_DRIVER extends Struct {
  external GUID CoreDriverGUID;

  external FILETIME ftDriverDate;

  @Uint64()
  external int dwlDriverVersion;

  @Array(260)
  external Array<Uint16> _szPackageID;

  String get szPackageID {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szPackageID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPackageID(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szPackageID[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CPSUICBPARAM extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Reason;

  @IntPtr()
  external int hDlg;

  external Pointer<OPTITEM> pOptItem;

  @Uint16()
  external int cOptItem;

  @Uint16()
  external int Flags;

  external Pointer<OPTITEM> pCurItem;

  external _CPSUICBPARAM__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int UserData;

  @IntPtr()
  external int Result;
}

/// {@category Struct}
class _CPSUICBPARAM__Anonymous_e__Union extends Union {
  @Int32()
  external int OldSel;

  external Pointer<Int8> pOldSel;
}

extension CPSUICBPARAM_Extension on CPSUICBPARAM {
  int get OldSel => this.Anonymous.OldSel;
  set OldSel(int value) => this.Anonymous.OldSel = value;

  Pointer<Int8> get pOldSel => this.Anonymous.pOldSel;
  set pOldSel(Pointer<Int8> value) => this.Anonymous.pOldSel = value;
}

/// {@category Struct}
class CPSUIDATABLOCK extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class CUSTOMSIZEPARAM extends Struct {
  @Int32()
  external int dwOrder;

  @Int32()
  external int lMinVal;

  @Int32()
  external int lMaxVal;
}

/// {@category Struct}
class DATATYPES_INFO_1 extends Struct {
  external Pointer<Utf16> pName;
}

/// {@category Struct}
class DATA_HEADER extends Struct {
  @Uint32()
  external int dwSignature;

  @Uint16()
  external int wSize;

  @Uint16()
  external int wDataID;

  @Uint32()
  external int dwDataSize;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class DELETE_PORT_DATA_1 extends Struct {
  @Array(64)
  external Array<Uint16> _psztPortName;

  String get psztPortName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_psztPortName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set psztPortName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _psztPortName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(98)
  external Array<Uint8> Reserved;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class DEVICEPROPERTYHEADER extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Flags;

  @IntPtr()
  external int hPrinter;

  external Pointer<Int8> pszPrinterName;
}

/// {@category Struct}
class DEVQUERYPRINT_INFO extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Level;

  @IntPtr()
  external int hPrinter;

  external Pointer<DEVMODE> pDevMode;

  external Pointer<Utf16> pszErrorStr;

  @Uint32()
  external int cchErrorStr;

  @Uint32()
  external int cchNeeded;
}

/// {@category Struct}
class DLGPAGE extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Flags;

  external Pointer<NativeFunction<DLGPROC>> DlgProc;

  external Pointer<Int8> pTabName;

  @IntPtr()
  external int IconID;

  external _DLGPAGE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DLGPAGE__Anonymous_e__Union extends Union {
  @Uint16()
  external int DlgTemplateID;

  @IntPtr()
  external int hDlgTemplate;
}

extension DLGPAGE_Extension on DLGPAGE {
  int get DlgTemplateID => this.Anonymous.DlgTemplateID;
  set DlgTemplateID(int value) => this.Anonymous.DlgTemplateID = value;

  int get hDlgTemplate => this.Anonymous.hDlgTemplate;
  set hDlgTemplate(int value) => this.Anonymous.hDlgTemplate = value;
}

/// {@category Struct}
class DOCEVENT_CREATEDCPRE extends Struct {
  external Pointer<Utf16> pszDriver;

  external Pointer<Utf16> pszDevice;

  external Pointer<DEVMODE> pdm;

  @Int32()
  external int bIC;
}

/// {@category Struct}
class DOCEVENT_ESCAPE extends Struct {
  @Int32()
  external int iEscape;

  @Int32()
  external int cjInput;

  external Pointer pvInData;
}

/// {@category Struct}
class DOCEVENT_FILTER extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int cElementsAllocated;

  @Uint32()
  external int cElementsNeeded;

  @Uint32()
  external int cElementsReturned;

  @Array(1)
  external Array<Uint32> aDocEventCall;
}

/// {@category Struct}
class DOCUMENTPROPERTYHEADER extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Reserved;

  @IntPtr()
  external int hPrinter;

  external Pointer<Int8> pszPrinterName;

  external Pointer<DEVMODE> pdmIn;

  external Pointer<DEVMODE> pdmOut;

  @Uint32()
  external int cbOut;

  @Uint32()
  external int fMode;
}

/// {@category Struct}
class DOC_INFO_1 extends Struct {
  external Pointer<Utf16> pDocName;

  external Pointer<Utf16> pOutputFile;

  external Pointer<Utf16> pDatatype;
}

/// {@category Struct}
class DOC_INFO_2 extends Struct {
  external Pointer<Utf16> pDocName;

  external Pointer<Utf16> pOutputFile;

  external Pointer<Utf16> pDatatype;

  @Uint32()
  external int dwMode;

  @Uint32()
  external int JobId;
}

/// {@category Struct}
class DOC_INFO_3 extends Struct {
  external Pointer<Utf16> pDocName;

  external Pointer<Utf16> pOutputFile;

  external Pointer<Utf16> pDatatype;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DRIVER_INFO_1 extends Struct {
  external Pointer<Utf16> pName;
}

/// {@category Struct}
class DRIVER_INFO_2 extends Struct {
  @Uint32()
  external int cVersion;

  external Pointer<Utf16> pName;

  external Pointer<Utf16> pEnvironment;

  external Pointer<Utf16> pDriverPath;

  external Pointer<Utf16> pDataFile;

  external Pointer<Utf16> pConfigFile;
}

/// {@category Struct}
class DRIVER_INFO_3 extends Struct {
  @Uint32()
  external int cVersion;

  external Pointer<Utf16> pName;

  external Pointer<Utf16> pEnvironment;

  external Pointer<Utf16> pDriverPath;

  external Pointer<Utf16> pDataFile;

  external Pointer<Utf16> pConfigFile;

  external Pointer<Utf16> pHelpFile;

  external Pointer<Utf16> pDependentFiles;

  external Pointer<Utf16> pMonitorName;

  external Pointer<Utf16> pDefaultDataType;
}

/// {@category Struct}
class DRIVER_INFO_4 extends Struct {
  @Uint32()
  external int cVersion;

  external Pointer<Utf16> pName;

  external Pointer<Utf16> pEnvironment;

  external Pointer<Utf16> pDriverPath;

  external Pointer<Utf16> pDataFile;

  external Pointer<Utf16> pConfigFile;

  external Pointer<Utf16> pHelpFile;

  external Pointer<Utf16> pDependentFiles;

  external Pointer<Utf16> pMonitorName;

  external Pointer<Utf16> pDefaultDataType;

  external Pointer<Utf16> pszzPreviousNames;
}

/// {@category Struct}
class DRIVER_INFO_5 extends Struct {
  @Uint32()
  external int cVersion;

  external Pointer<Utf16> pName;

  external Pointer<Utf16> pEnvironment;

  external Pointer<Utf16> pDriverPath;

  external Pointer<Utf16> pDataFile;

  external Pointer<Utf16> pConfigFile;

  @Uint32()
  external int dwDriverAttributes;

  @Uint32()
  external int dwConfigVersion;

  @Uint32()
  external int dwDriverVersion;
}

/// {@category Struct}
class DRIVER_INFO_6 extends Struct {
  @Uint32()
  external int cVersion;

  external Pointer<Utf16> pName;

  external Pointer<Utf16> pEnvironment;

  external Pointer<Utf16> pDriverPath;

  external Pointer<Utf16> pDataFile;

  external Pointer<Utf16> pConfigFile;

  external Pointer<Utf16> pHelpFile;

  external Pointer<Utf16> pDependentFiles;

  external Pointer<Utf16> pMonitorName;

  external Pointer<Utf16> pDefaultDataType;

  external Pointer<Utf16> pszzPreviousNames;

  external FILETIME ftDriverDate;

  @Uint64()
  external int dwlDriverVersion;

  external Pointer<Utf16> pszMfgName;

  external Pointer<Utf16> pszOEMUrl;

  external Pointer<Utf16> pszHardwareID;

  external Pointer<Utf16> pszProvider;
}

/// {@category Struct}
class DRIVER_INFO_8 extends Struct {
  @Uint32()
  external int cVersion;

  external Pointer<Utf16> pName;

  external Pointer<Utf16> pEnvironment;

  external Pointer<Utf16> pDriverPath;

  external Pointer<Utf16> pDataFile;

  external Pointer<Utf16> pConfigFile;

  external Pointer<Utf16> pHelpFile;

  external Pointer<Utf16> pDependentFiles;

  external Pointer<Utf16> pMonitorName;

  external Pointer<Utf16> pDefaultDataType;

  external Pointer<Utf16> pszzPreviousNames;

  external FILETIME ftDriverDate;

  @Uint64()
  external int dwlDriverVersion;

  external Pointer<Utf16> pszMfgName;

  external Pointer<Utf16> pszOEMUrl;

  external Pointer<Utf16> pszHardwareID;

  external Pointer<Utf16> pszProvider;

  external Pointer<Utf16> pszPrintProcessor;

  external Pointer<Utf16> pszVendorSetup;

  external Pointer<Utf16> pszzColorProfiles;

  external Pointer<Utf16> pszInfPath;

  @Uint32()
  external int dwPrinterDriverAttributes;

  external Pointer<Utf16> pszzCoreDriverDependencies;

  external FILETIME ftMinInboxDriverVerDate;

  @Uint64()
  external int dwlMinInboxDriverVerVersion;
}

/// {@category Struct}
class DRIVER_UPGRADE_INFO_1 extends Struct {
  external Pointer<Int8> pPrinterName;

  external Pointer<Int8> pOldDriverDirectory;
}

/// {@category Struct}
class DRIVER_UPGRADE_INFO_2 extends Struct {
  external Pointer<Int8> pPrinterName;

  external Pointer<Int8> pOldDriverDirectory;

  @Uint32()
  external int cVersion;

  external Pointer<Int8> pName;

  external Pointer<Int8> pEnvironment;

  external Pointer<Int8> pDriverPath;

  external Pointer<Int8> pDataFile;

  external Pointer<Int8> pConfigFile;

  external Pointer<Int8> pHelpFile;

  external Pointer<Int8> pDependentFiles;

  external Pointer<Int8> pMonitorName;

  external Pointer<Int8> pDefaultDataType;

  external Pointer<Int8> pszzPreviousNames;
}

/// {@category Struct}
class EXTCHKBOX extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Flags;

  external Pointer<Int8> pTitle;

  external Pointer<Int8> pSeparator;

  external Pointer<Int8> pCheckedName;

  @IntPtr()
  external int IconID;

  @Array(4)
  external Array<Uint16> wReserved;

  @Array(2)
  external Array<IntPtr> dwReserved;
}

/// {@category Struct}
class EXTPUSH extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Flags;

  external Pointer<Int8> pTitle;

  external _EXTPUSH__Anonymous1_e__Union Anonymous1;

  @IntPtr()
  external int IconID;

  external _EXTPUSH__Anonymous2_e__Union Anonymous2;

  @Array(3)
  external Array<IntPtr> dwReserved;
}

/// {@category Struct}
class _EXTPUSH__Anonymous1_e__Union extends Union {
  external Pointer<NativeFunction<DLGPROC>> DlgProc;

  external Pointer pfnCallBack;
}

extension EXTPUSH_Extension on EXTPUSH {
  Pointer<NativeFunction<DLGPROC>> get DlgProc => this.Anonymous1.DlgProc;
  set DlgProc(Pointer<NativeFunction<DLGPROC>> value) =>
      this.Anonymous1.DlgProc = value;

  Pointer get pfnCallBack => this.Anonymous1.pfnCallBack;
  set pfnCallBack(Pointer value) => this.Anonymous1.pfnCallBack = value;
}

/// {@category Struct}
class _EXTPUSH__Anonymous2_e__Union extends Union {
  @Uint16()
  external int DlgTemplateID;

  @IntPtr()
  external int hDlgTemplate;
}

extension EXTPUSH_Extension_1 on EXTPUSH {
  int get DlgTemplateID => this.Anonymous2.DlgTemplateID;
  set DlgTemplateID(int value) => this.Anonymous2.DlgTemplateID = value;

  int get hDlgTemplate => this.Anonymous2.hDlgTemplate;
  set hDlgTemplate(int value) => this.Anonymous2.hDlgTemplate = value;
}

/// {@category Struct}
class EXTTEXTMETRIC extends Struct {
  @Int16()
  external int emSize;

  @Int16()
  external int emPointSize;

  @Int16()
  external int emOrientation;

  @Int16()
  external int emMasterHeight;

  @Int16()
  external int emMinScale;

  @Int16()
  external int emMaxScale;

  @Int16()
  external int emMasterUnits;

  @Int16()
  external int emCapHeight;

  @Int16()
  external int emXHeight;

  @Int16()
  external int emLowerCaseAscent;

  @Int16()
  external int emLowerCaseDescent;

  @Int16()
  external int emSlant;

  @Int16()
  external int emSuperScript;

  @Int16()
  external int emSubScript;

  @Int16()
  external int emSuperScriptSize;

  @Int16()
  external int emSubScriptSize;

  @Int16()
  external int emUnderlineOffset;

  @Int16()
  external int emUnderlineWidth;

  @Int16()
  external int emDoubleUpperUnderlineOffset;

  @Int16()
  external int emDoubleLowerUnderlineOffset;

  @Int16()
  external int emDoubleUpperUnderlineWidth;

  @Int16()
  external int emDoubleLowerUnderlineWidth;

  @Int16()
  external int emStrikeOutOffset;

  @Int16()
  external int emStrikeOutWidth;

  @Uint16()
  external int emKernPairs;

  @Uint16()
  external int emKernTracks;
}

/// {@category Struct}
class FORM_INFO_1 extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<Utf16> pName;

  external SIZE Size;

  external RECTL ImageableArea;
}

/// {@category Struct}
class FORM_INFO_2 extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<Utf16> pName;

  external SIZE Size;

  external RECTL ImageableArea;

  external Pointer<Utf8> pKeyword;

  @Uint32()
  external int StringType;

  external Pointer<Utf16> pMuiDll;

  @Uint32()
  external int dwResourceId;

  external Pointer<Utf16> pDisplayName;

  @Uint16()
  external int wLangId;
}

/// {@category Struct}
class GLYPHRUN extends Struct {
  @Uint16()
  external int wcLow;

  @Uint16()
  external int wGlyphCount;
}

/// {@category Struct}
class IBidiRequest extends Struct {
  external Pointer<IBidiRequestVtbl> lpVtbl;
}

/// {@category Struct}
class IBidiRequestContainer extends Struct {
  external Pointer<IBidiRequestContainerVtbl> lpVtbl;
}

/// {@category Struct}
class IBidiRequestContainerVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int AddRequest;

  @IntPtr()
  external int GetEnumObject;

  @IntPtr()
  external int GetRequestCount;
}

/// {@category Struct}
class IBidiRequestVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int SetSchema;

  @IntPtr()
  external int SetInputData;

  @IntPtr()
  external int GetResult;

  @IntPtr()
  external int GetOutputData;

  @IntPtr()
  external int GetEnumCount;
}

/// {@category Struct}
class IBidiSpl extends Struct {
  external Pointer<IBidiSplVtbl> lpVtbl;
}

/// {@category Struct}
class IBidiSpl2 extends Struct {
  external Pointer<IBidiSpl2Vtbl> lpVtbl;
}

/// {@category Struct}
class IBidiSpl2Vtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int BindDevice;

  @IntPtr()
  external int UnbindDevice;

  @IntPtr()
  external int SendRecvXMLString;

  @IntPtr()
  external int SendRecvXMLStream;
}

/// {@category Struct}
class IBidiSplVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int BindDevice;

  @IntPtr()
  external int UnbindDevice;

  @IntPtr()
  external int SendRecv;

  @IntPtr()
  external int MultiSendRecv;
}

/// {@category Struct}
class IFixedDocument extends Struct {
  external Pointer<IFixedDocumentVtbl> lpVtbl;
}

/// {@category Struct}
class IFixedDocumentSequence extends Struct {
  external Pointer<IFixedDocumentSequenceVtbl> lpVtbl;
}

/// {@category Struct}
class IFixedDocumentSequenceVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetPrintTicket;

  @IntPtr()
  external int SetPrintTicket;
}

/// {@category Struct}
class IFixedDocumentVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetPrintTicket;

  @IntPtr()
  external int SetPrintTicket;
}

/// {@category Struct}
class IFixedPage extends Struct {
  external Pointer<IFixedPageVtbl> lpVtbl;
}

/// {@category Struct}
class IFixedPageVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;

  @IntPtr()
  external int GetPrintTicket;

  @IntPtr()
  external int GetPagePart;

  @IntPtr()
  external int GetWriteStream;

  @IntPtr()
  external int SetPrintTicket;

  @IntPtr()
  external int SetPagePart;

  @IntPtr()
  external int DeleteResource;

  @IntPtr()
  external int GetXpsPartIterator;
}

/// {@category Struct}
class IImgCreateErrorInfo extends Struct {
  external Pointer<IImgCreateErrorInfoVtbl> lpVtbl;
}

/// {@category Struct}
class IImgCreateErrorInfoVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int SetGUID;

  @IntPtr()
  external int SetSource;

  @IntPtr()
  external int SetDescription;

  @IntPtr()
  external int SetHelpFile;

  @IntPtr()
  external int SetHelpContext;

  @IntPtr()
  external int AttachToErrorInfo;
}

/// {@category Struct}
class IImgErrorInfo extends Struct {
  external Pointer<IImgErrorInfoVtbl> lpVtbl;
}

/// {@category Struct}
class IImgErrorInfoVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetGUID;

  @IntPtr()
  external int GetSource;

  @IntPtr()
  external int GetDescription;

  @IntPtr()
  external int GetHelpFile;

  @IntPtr()
  external int GetHelpContext;

  @IntPtr()
  external int GetDeveloperDescription;

  @IntPtr()
  external int GetUserErrorId;

  @IntPtr()
  external int GetUserParameterCount;

  @IntPtr()
  external int GetUserParameter;

  @IntPtr()
  external int GetUserFallback;

  @IntPtr()
  external int GetExceptionId;

  @IntPtr()
  external int DetachErrorInfo;
}

/// {@category Struct}
class IInterFilterCommunicator extends Struct {
  external Pointer<IInterFilterCommunicatorVtbl> lpVtbl;
}

/// {@category Struct}
class IInterFilterCommunicatorVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int RequestReader;

  @IntPtr()
  external int RequestWriter;
}

/// {@category Struct}
class INSERTPSUIPAGE_INFO extends Struct {
  @Uint16()
  external int cbSize;

  @Uint8()
  external int Type;

  @Uint8()
  external int Mode;

  @IntPtr()
  external int dwData1;

  @IntPtr()
  external int dwData2;

  @IntPtr()
  external int dwData3;
}

/// {@category Struct}
class INVOC extends Struct {
  @Uint32()
  external int dwCount;

  @Uint32()
  external int loOffset;
}

/// {@category Struct}
class IPartBase extends Struct {
  external Pointer<IPartBaseVtbl> lpVtbl;
}

/// {@category Struct}
class IPartBaseVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;
}

/// {@category Struct}
class IPartColorProfile extends Struct {
  external Pointer<IPartColorProfileVtbl> lpVtbl;
}

/// {@category Struct}
class IPartColorProfileVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;
}

/// {@category Struct}
class IPartDiscardControl extends Struct {
  external Pointer<IPartDiscardControlVtbl> lpVtbl;
}

/// {@category Struct}
class IPartDiscardControlVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetDiscardProperties;
}

/// {@category Struct}
class IPartFont extends Struct {
  external Pointer<IPartFontVtbl> lpVtbl;
}

/// {@category Struct}
class IPartFont2 extends Struct {
  external Pointer<IPartFont2Vtbl> lpVtbl;
}

/// {@category Struct}
class IPartFont2Vtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;

  @IntPtr()
  external int GetFontProperties;

  @IntPtr()
  external int SetFontContent;

  @IntPtr()
  external int SetFontOptions;

  @IntPtr()
  external int GetFontRestriction;
}

/// {@category Struct}
class IPartFontVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;

  @IntPtr()
  external int GetFontProperties;

  @IntPtr()
  external int SetFontContent;

  @IntPtr()
  external int SetFontOptions;
}

/// {@category Struct}
class IPartImage extends Struct {
  external Pointer<IPartImageVtbl> lpVtbl;
}

/// {@category Struct}
class IPartImageVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;

  @IntPtr()
  external int GetImageProperties;

  @IntPtr()
  external int SetImageContent;
}

/// {@category Struct}
class IPartPrintTicket extends Struct {
  external Pointer<IPartPrintTicketVtbl> lpVtbl;
}

/// {@category Struct}
class IPartPrintTicketVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;
}

/// {@category Struct}
class IPartResourceDictionary extends Struct {
  external Pointer<IPartResourceDictionaryVtbl> lpVtbl;
}

/// {@category Struct}
class IPartResourceDictionaryVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;
}

/// {@category Struct}
class IPartThumbnail extends Struct {
  external Pointer<IPartThumbnailVtbl> lpVtbl;
}

/// {@category Struct}
class IPartThumbnailVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetUri;

  @IntPtr()
  external int GetStream;

  @IntPtr()
  external int GetPartCompression;

  @IntPtr()
  external int SetPartCompression;

  @IntPtr()
  external int GetThumbnailProperties;

  @IntPtr()
  external int SetThumbnailContent;
}

/// {@category Struct}
class IPrintClassObjectFactory extends Struct {
  external Pointer<IPrintClassObjectFactoryVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintClassObjectFactoryVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetPrintClassObject;
}

/// {@category Struct}
class IPrintPipelineFilter extends Struct {
  external Pointer<IPrintPipelineFilterVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintPipelineFilterVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int InitializeFilter;

  @IntPtr()
  external int ShutdownOperation;

  @IntPtr()
  external int StartOperation;
}

/// {@category Struct}
class IPrintPipelineManagerControl extends Struct {
  external Pointer<IPrintPipelineManagerControlVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintPipelineManagerControlVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int RequestShutdown;

  @IntPtr()
  external int FilterFinished;
}

/// {@category Struct}
class IPrintPipelineProgressReport extends Struct {
  external Pointer<IPrintPipelineProgressReportVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintPipelineProgressReportVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int ReportProgress;
}

/// {@category Struct}
class IPrintPipelinePropertyBag extends Struct {
  external Pointer<IPrintPipelinePropertyBagVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintPipelinePropertyBagVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int AddProperty;

  @IntPtr()
  external int GetProperty;

  @IntPtr()
  external int DeleteProperty;
}

/// {@category Struct}
class IPrintReadStream extends Struct {
  external Pointer<IPrintReadStreamVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintReadStreamFactory extends Struct {
  external Pointer<IPrintReadStreamFactoryVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintReadStreamFactoryVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetStream;
}

/// {@category Struct}
class IPrintReadStreamVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int Seek;

  @IntPtr()
  external int ReadBytes;
}

/// {@category Struct}
class IPrintWriteStream extends Struct {
  external Pointer<IPrintWriteStreamVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintWriteStreamFlush extends Struct {
  external Pointer<IPrintWriteStreamFlushVtbl> lpVtbl;
}

/// {@category Struct}
class IPrintWriteStreamFlushVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int FlushData;
}

/// {@category Struct}
class IPrintWriteStreamVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int WriteBytes;

  @IntPtr()
  external int Close;
}

/// {@category Struct}
class IXpsDocument extends Struct {
  external Pointer<IXpsDocumentVtbl> lpVtbl;
}

/// {@category Struct}
class IXpsDocumentConsumer extends Struct {
  external Pointer<IXpsDocumentConsumerVtbl> lpVtbl;
}

/// {@category Struct}
class IXpsDocumentConsumerVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int SendXpsUnknown;

  @IntPtr()
  external int SendXpsDocument;

  @IntPtr()
  external int SendFixedDocumentSequence;

  @IntPtr()
  external int SendFixedDocument;

  @IntPtr()
  external int SendFixedPage;

  @IntPtr()
  external int CloseSender;

  @IntPtr()
  external int GetNewEmptyPart;
}

/// {@category Struct}
class IXpsDocumentProvider extends Struct {
  external Pointer<IXpsDocumentProviderVtbl> lpVtbl;
}

/// {@category Struct}
class IXpsDocumentProviderVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetXpsPart;
}

/// {@category Struct}
class IXpsDocumentVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int GetThumbnail;

  @IntPtr()
  external int SetThumbnail;
}

/// {@category Struct}
class IXpsPartIterator extends Struct {
  external Pointer<IXpsPartIteratorVtbl> lpVtbl;
}

/// {@category Struct}
class IXpsPartIteratorVtbl extends Struct {
  @IntPtr()
  external int QueryInterface;

  @IntPtr()
  external int AddRef;

  @IntPtr()
  external int Release;

  @IntPtr()
  external int Reset;

  @IntPtr()
  external int Current;

  @IntPtr()
  external int IsDone;

  @IntPtr()
  external int Next;
}

/// {@category Struct}
class JOB_INFO_1 extends Struct {
  @Uint32()
  external int JobId;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pMachineName;

  external Pointer<Utf16> pUserName;

  external Pointer<Utf16> pDocument;

  external Pointer<Utf16> pDatatype;

  external Pointer<Utf16> pStatus;

  @Uint32()
  external int Status;

  @Uint32()
  external int Priority;

  @Uint32()
  external int Position;

  @Uint32()
  external int TotalPages;

  @Uint32()
  external int PagesPrinted;

  external SYSTEMTIME Submitted;
}

/// {@category Struct}
class JOB_INFO_2 extends Struct {
  @Uint32()
  external int JobId;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pMachineName;

  external Pointer<Utf16> pUserName;

  external Pointer<Utf16> pDocument;

  external Pointer<Utf16> pNotifyName;

  external Pointer<Utf16> pDatatype;

  external Pointer<Utf16> pPrintProcessor;

  external Pointer<Utf16> pParameters;

  external Pointer<Utf16> pDriverName;

  external Pointer<DEVMODE> pDevMode;

  external Pointer<Utf16> pStatus;

  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;

  @Uint32()
  external int Status;

  @Uint32()
  external int Priority;

  @Uint32()
  external int Position;

  @Uint32()
  external int StartTime;

  @Uint32()
  external int UntilTime;

  @Uint32()
  external int TotalPages;

  @Uint32()
  external int Size;

  external SYSTEMTIME Submitted;

  @Uint32()
  external int Time;

  @Uint32()
  external int PagesPrinted;
}

/// {@category Struct}
class JOB_INFO_3 extends Struct {
  @Uint32()
  external int JobId;

  @Uint32()
  external int NextJobId;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class JOB_INFO_4 extends Struct {
  @Uint32()
  external int JobId;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pMachineName;

  external Pointer<Utf16> pUserName;

  external Pointer<Utf16> pDocument;

  external Pointer<Utf16> pNotifyName;

  external Pointer<Utf16> pDatatype;

  external Pointer<Utf16> pPrintProcessor;

  external Pointer<Utf16> pParameters;

  external Pointer<Utf16> pDriverName;

  external Pointer<DEVMODE> pDevMode;

  external Pointer<Utf16> pStatus;

  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;

  @Uint32()
  external int Status;

  @Uint32()
  external int Priority;

  @Uint32()
  external int Position;

  @Uint32()
  external int StartTime;

  @Uint32()
  external int UntilTime;

  @Uint32()
  external int TotalPages;

  @Uint32()
  external int Size;

  external SYSTEMTIME Submitted;

  @Uint32()
  external int Time;

  @Uint32()
  external int PagesPrinted;

  @Int32()
  external int SizeHigh;
}

/// {@category Struct}
class KERNDATA extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwKernPairNum;

  @Array(1)
  external Array<FD_KERNINGPAIR> KernPair;
}

/// {@category Struct}
class MAPTABLE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwGlyphNum;

  @Array(1)
  external Array<TRANSDATA> Trans;
}

/// {@category Struct}
class MESSAGEBOX_PARAMS extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> pTitle;

  external Pointer<Utf16> pMessage;

  @Uint32()
  external int Style;

  @Uint32()
  external int dwTimeout;

  @Int32()
  external int bWait;
}

/// {@category Struct}
class MONITOR extends Struct {
  @IntPtr()
  external int pfnEnumPorts;

  @IntPtr()
  external int pfnOpenPort;

  @IntPtr()
  external int pfnOpenPortEx;

  @IntPtr()
  external int pfnStartDocPort;

  @IntPtr()
  external int pfnWritePort;

  @IntPtr()
  external int pfnReadPort;

  @IntPtr()
  external int pfnEndDocPort;

  @IntPtr()
  external int pfnClosePort;

  @IntPtr()
  external int pfnAddPort;

  @IntPtr()
  external int pfnAddPortEx;

  @IntPtr()
  external int pfnConfigurePort;

  @IntPtr()
  external int pfnDeletePort;

  @IntPtr()
  external int pfnGetPrinterDataFromPort;

  @IntPtr()
  external int pfnSetPortTimeOuts;

  @IntPtr()
  external int pfnXcvOpenPort;

  @IntPtr()
  external int pfnXcvDataPort;

  @IntPtr()
  external int pfnXcvClosePort;
}

/// {@category Struct}
class MONITOR2 extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int pfnEnumPorts;

  @IntPtr()
  external int pfnOpenPort;

  @IntPtr()
  external int pfnOpenPortEx;

  @IntPtr()
  external int pfnStartDocPort;

  @IntPtr()
  external int pfnWritePort;

  @IntPtr()
  external int pfnReadPort;

  @IntPtr()
  external int pfnEndDocPort;

  @IntPtr()
  external int pfnClosePort;

  @IntPtr()
  external int pfnAddPort;

  @IntPtr()
  external int pfnAddPortEx;

  @IntPtr()
  external int pfnConfigurePort;

  @IntPtr()
  external int pfnDeletePort;

  @IntPtr()
  external int pfnGetPrinterDataFromPort;

  @IntPtr()
  external int pfnSetPortTimeOuts;

  @IntPtr()
  external int pfnXcvOpenPort;

  @IntPtr()
  external int pfnXcvDataPort;

  @IntPtr()
  external int pfnXcvClosePort;

  @IntPtr()
  external int pfnShutdown;

  @IntPtr()
  external int pfnSendRecvBidiDataFromPort;

  @IntPtr()
  external int pfnNotifyUsedPorts;

  @IntPtr()
  external int pfnNotifyUnusedPorts;

  @IntPtr()
  external int pfnPowerEvent;
}

/// {@category Struct}
class MONITOREX extends Struct {
  @Uint32()
  external int dwMonitorSize;

  external MONITOR Monitor;
}

/// {@category Struct}
class MONITORINIT extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hSpooler;

  @IntPtr()
  external int hckRegistryRoot;

  external Pointer<MONITORREG> pMonitorReg;

  @Int32()
  external int bLocal;

  external Pointer<Utf16> pszServerName;
}

/// {@category Struct}
class MONITORREG extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int fpCreateKey;

  @IntPtr()
  external int fpOpenKey;

  @IntPtr()
  external int fpCloseKey;

  @IntPtr()
  external int fpDeleteKey;

  @IntPtr()
  external int fpEnumKey;

  @IntPtr()
  external int fpQueryInfoKey;

  @IntPtr()
  external int fpSetValue;

  @IntPtr()
  external int fpDeleteValue;

  @IntPtr()
  external int fpEnumValue;

  @IntPtr()
  external int fpQueryValue;
}

/// {@category Struct}
class MONITORUI extends Struct {
  @Uint32()
  external int dwMonitorUISize;

  @IntPtr()
  external int pfnAddPortUI;

  @IntPtr()
  external int pfnConfigurePortUI;

  @IntPtr()
  external int pfnDeletePortUI;
}

/// {@category Struct}
class MONITOR_INFO_1 extends Struct {
  external Pointer<Utf16> pName;
}

/// {@category Struct}
class MONITOR_INFO_2 extends Struct {
  external Pointer<Utf16> pName;

  external Pointer<Utf16> pEnvironment;

  external Pointer<Utf16> pDLLName;
}

/// {@category Struct}
@Packed(1)
class MxdcEscapeHeader extends Struct {
  @Uint32()
  external int cbInput;

  @Uint32()
  external int cbOutput;

  @Uint32()
  external int opCode;
}

/// {@category Struct}
@Packed(1)
class MxdcGetFileNameData extends Struct {
  @Uint32()
  external int cbOutput;

  @Array(1)
  external Array<Uint16> _wszData;

  String get wszData {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wszData[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszData(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wszData[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class MxdcPrintTicketEscape extends Struct {
  external MxdcEscapeHeader mxdcEscape;

  external MxdcPrintTicketPassthrough printTicketData;
}

/// {@category Struct}
@Packed(1)
class MxdcPrintTicketPassthrough extends Struct {
  @Uint32()
  external int dwDataSize;

  @Array(1)
  external Array<Uint8> bData;
}

/// {@category Struct}
@Packed(1)
class MxdcS0PageData extends Struct {
  @Uint32()
  external int dwSize;

  @Array(1)
  external Array<Uint8> bData;
}

/// {@category Struct}
@Packed(1)
class MxdcS0PagePassthroughEscape extends Struct {
  external MxdcEscapeHeader mxdcEscape;

  external MxdcS0PageData xpsS0PageData;
}

/// {@category Struct}
@Packed(1)
class MxdcS0PageResourceEscape extends Struct {
  external MxdcEscapeHeader mxdcEscape;

  external MxdcXpsS0PageResource xpsS0PageResourcePassthrough;
}

/// {@category Struct}
@Packed(1)
class MxdcXpsS0PageResource extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwResourceType;

  @Array(260)
  external Array<Uint8> szUri;

  @Uint32()
  external int dwDataSize;

  @Array(1)
  external Array<Uint8> bData;
}

/// {@category Struct}
class NOTIFICATION_CONFIG_1 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fdwFlags;

  external Pointer<NativeFunction<ROUTER_NOTIFY_CALLBACK>> pfnNotifyCallback;

  external Pointer pContext;
}

/// {@category Struct}
class OEMCUIPPARAM extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<OEMUIOBJ> poemuiobj;

  @IntPtr()
  external int hPrinter;

  external Pointer<Utf16> pPrinterName;

  @IntPtr()
  external int hModule;

  @IntPtr()
  external int hOEMHeap;

  external Pointer<DEVMODE> pPublicDM;

  external Pointer pOEMDM;

  @Uint32()
  external int dwFlags;

  external Pointer<OPTITEM> pDrvOptItems;

  @Uint32()
  external int cDrvOptItems;

  external Pointer<OPTITEM> pOEMOptItems;

  @Uint32()
  external int cOEMOptItems;

  external Pointer pOEMUserData;

  external Pointer<NativeFunction<OEMCUIPCALLBACK>> OEMCUIPCallback;
}

/// {@category Struct}
class OEMDMPARAM extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer pdriverobj;

  @IntPtr()
  external int hPrinter;

  @IntPtr()
  external int hModule;

  external Pointer<DEVMODE> pPublicDMIn;

  external Pointer<DEVMODE> pPublicDMOut;

  external Pointer pOEMDMIn;

  external Pointer pOEMDMOut;

  @Uint32()
  external int cbBufSize;
}

/// {@category Struct}
class OEMFONTINSTPARAM extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hPrinter;

  @IntPtr()
  external int hModule;

  @IntPtr()
  external int hHeap;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pFontInstallerName;
}

/// {@category Struct}
class OEMUIOBJ extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<OEMUIPROCS> pOemUIProcs;
}

/// {@category Struct}
class OEMUIPROCS extends Struct {
  external Pointer<NativeFunction<PFN_DrvGetDriverSetting>> DrvGetDriverSetting;

  external Pointer<NativeFunction<PFN_DrvUpdateUISetting>> DrvUpdateUISetting;
}

/// {@category Struct}
class OEMUIPSPARAM extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<OEMUIOBJ> poemuiobj;

  @IntPtr()
  external int hPrinter;

  external Pointer<Utf16> pPrinterName;

  @IntPtr()
  external int hModule;

  @IntPtr()
  external int hOEMHeap;

  external Pointer<DEVMODE> pPublicDM;

  external Pointer pOEMDM;

  external Pointer pOEMUserData;

  @Uint32()
  external int dwFlags;

  external Pointer pOemEntry;
}

/// {@category Struct}
class OEM_DMEXTRAHEADER extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwSignature;

  @Uint32()
  external int dwVersion;
}

/// {@category Struct}
class OIEXT extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Flags;

  @IntPtr()
  external int hInstCaller;

  external Pointer<Int8> pHelpFile;

  @Array(4)
  external Array<IntPtr> dwReserved;
}

/// {@category Struct}
class OPTCOMBO extends Struct {
  @Uint16()
  external int cbSize;

  @Uint8()
  external int Flags;

  @Uint16()
  external int cListItem;

  external Pointer<OPTPARAM> pListItem;

  @Int32()
  external int Sel;

  @Array(3)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
class OPTITEM extends Struct {
  @Uint16()
  external int cbSize;

  @Uint8()
  external int Level;

  @Uint8()
  external int DlgPageIdx;

  @Uint32()
  external int Flags;

  @IntPtr()
  external int UserData;

  external Pointer<Int8> pName;

  external _OPTITEM__Anonymous1_e__Union Anonymous1;

  external _OPTITEM__Anonymous2_e__Union Anonymous2;

  external Pointer<OPTTYPE> pOptType;

  @Uint32()
  external int HelpIndex;

  @Uint8()
  external int DMPubID;

  @Uint8()
  external int UserItemID;

  @Uint16()
  external int wReserved;

  external Pointer<OIEXT> pOIExt;

  @Array(3)
  external Array<IntPtr> dwReserved;
}

/// {@category Struct}
class _OPTITEM__Anonymous1_e__Union extends Union {
  @Int32()
  external int Sel;

  external Pointer<Int8> pSel;
}

extension OPTITEM_Extension on OPTITEM {
  int get Sel => this.Anonymous1.Sel;
  set Sel(int value) => this.Anonymous1.Sel = value;

  Pointer<Int8> get pSel => this.Anonymous1.pSel;
  set pSel(Pointer<Int8> value) => this.Anonymous1.pSel = value;
}

/// {@category Struct}
class _OPTITEM__Anonymous2_e__Union extends Union {
  external Pointer<EXTCHKBOX> pExtChkBox;

  external Pointer<EXTPUSH> pExtPush;
}

extension OPTITEM_Extension_1 on OPTITEM {
  Pointer<EXTCHKBOX> get pExtChkBox => this.Anonymous2.pExtChkBox;
  set pExtChkBox(Pointer<EXTCHKBOX> value) =>
      this.Anonymous2.pExtChkBox = value;

  Pointer<EXTPUSH> get pExtPush => this.Anonymous2.pExtPush;
  set pExtPush(Pointer<EXTPUSH> value) => this.Anonymous2.pExtPush = value;
}

/// {@category Struct}
class OPTPARAM extends Struct {
  @Uint16()
  external int cbSize;

  @Uint8()
  external int Flags;

  @Uint8()
  external int Style;

  external Pointer<Int8> pData;

  @IntPtr()
  external int IconID;

  @IntPtr()
  external int lParam;

  @Array(2)
  external Array<IntPtr> dwReserved;
}

/// {@category Struct}
class OPTTYPE extends Struct {
  @Uint16()
  external int cbSize;

  @Uint8()
  external int Type;

  @Uint8()
  external int Flags;

  @Uint16()
  external int Count;

  @Uint16()
  external int BegCtrlID;

  external Pointer<OPTPARAM> pOptParam;

  @Uint16()
  external int Style;

  @Array(3)
  external Array<Uint16> wReserved;

  @Array(3)
  external Array<IntPtr> dwReserved;
}

/// {@category Struct}
class PORT_DATA_1 extends Struct {
  @Array(64)
  external Array<Uint16> _sztPortName;

  String get sztPortName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_sztPortName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztPortName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _sztPortName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwProtocol;

  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwReserved;

  @Array(49)
  external Array<Uint16> _sztHostAddress;

  String get sztHostAddress {
    final charCodes = <int>[];
    for (var i = 0; i < 49; i++) {
      charCodes.add(_sztHostAddress[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztHostAddress(String value) {
    final stringToStore = value.padRight(49, '\x00');
    for (var i = 0; i < 49; i++) {
      _sztHostAddress[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(33)
  external Array<Uint16> _sztSNMPCommunity;

  String get sztSNMPCommunity {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_sztSNMPCommunity[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztSNMPCommunity(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _sztSNMPCommunity[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwDoubleSpool;

  @Array(33)
  external Array<Uint16> _sztQueue;

  String get sztQueue {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_sztQueue[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztQueue(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _sztQueue[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _sztIPAddress;

  String get sztIPAddress {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_sztIPAddress[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztIPAddress(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _sztIPAddress[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(540)
  external Array<Uint8> Reserved;

  @Uint32()
  external int dwPortNumber;

  @Uint32()
  external int dwSNMPEnabled;

  @Uint32()
  external int dwSNMPDevIndex;
}

/// {@category Struct}
class PORT_DATA_2 extends Struct {
  @Array(64)
  external Array<Uint16> _sztPortName;

  String get sztPortName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_sztPortName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztPortName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _sztPortName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwProtocol;

  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwReserved;

  @Array(128)
  external Array<Uint16> _sztHostAddress;

  String get sztHostAddress {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_sztHostAddress[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztHostAddress(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _sztHostAddress[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(33)
  external Array<Uint16> _sztSNMPCommunity;

  String get sztSNMPCommunity {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_sztSNMPCommunity[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztSNMPCommunity(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _sztSNMPCommunity[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwDoubleSpool;

  @Array(33)
  external Array<Uint16> _sztQueue;

  String get sztQueue {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_sztQueue[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sztQueue(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _sztQueue[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(514)
  external Array<Uint8> Reserved;

  @Uint32()
  external int dwPortNumber;

  @Uint32()
  external int dwSNMPEnabled;

  @Uint32()
  external int dwSNMPDevIndex;

  @Uint32()
  external int dwPortMonitorMibIndex;
}

/// {@category Struct}
class PORT_DATA_LIST_1 extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cPortData;

  @Array(1)
  external Array<PORT_DATA_2> pPortData;
}

/// {@category Struct}
class PORT_INFO_1 extends Struct {
  external Pointer<Utf16> pName;
}

/// {@category Struct}
class PORT_INFO_2 extends Struct {
  external Pointer<Utf16> pPortName;

  external Pointer<Utf16> pMonitorName;

  external Pointer<Utf16> pDescription;

  @Uint32()
  external int fPortType;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class PORT_INFO_3 extends Struct {
  @Uint32()
  external int dwStatus;

  external Pointer<Utf16> pszStatus;

  @Uint32()
  external int dwSeverity;
}

/// {@category Struct}
class PRINTER_CONNECTION_INFO_1 extends Struct {
  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pszDriverName;
}

/// {@category Struct}
class PRINTER_DEFAULTS extends Struct {
  external Pointer<Utf16> pDatatype;

  external Pointer<DEVMODE> pDevMode;

  @Uint32()
  external int DesiredAccess;
}

/// {@category Struct}
class PRINTER_ENUM_VALUES extends Struct {
  external Pointer<Utf16> pValueName;

  @Uint32()
  external int cbValueName;

  @Uint32()
  external int dwType;

  external Pointer<Uint8> pData;

  @Uint32()
  external int cbData;
}

/// {@category Struct}
class PRINTER_EVENT_ATTRIBUTES_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwOldAttributes;

  @Uint32()
  external int dwNewAttributes;
}

/// {@category Struct}
class PRINTER_INFO_1 extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<Utf16> pDescription;

  external Pointer<Utf16> pName;

  external Pointer<Utf16> pComment;
}

/// {@category Struct}
class PRINTER_INFO_2 extends Struct {
  external Pointer<Utf16> pServerName;

  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pShareName;

  external Pointer<Utf16> pPortName;

  external Pointer<Utf16> pDriverName;

  external Pointer<Utf16> pComment;

  external Pointer<Utf16> pLocation;

  external Pointer<DEVMODE> pDevMode;

  external Pointer<Utf16> pSepFile;

  external Pointer<Utf16> pPrintProcessor;

  external Pointer<Utf16> pDatatype;

  external Pointer<Utf16> pParameters;

  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int Priority;

  @Uint32()
  external int DefaultPriority;

  @Uint32()
  external int StartTime;

  @Uint32()
  external int UntilTime;

  @Uint32()
  external int Status;

  @Uint32()
  external int cJobs;

  @Uint32()
  external int AveragePPM;
}

/// {@category Struct}
class PRINTER_INFO_3 extends Struct {
  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;
}

/// {@category Struct}
class PRINTER_INFO_4 extends Struct {
  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pServerName;

  @Uint32()
  external int Attributes;
}

/// {@category Struct}
class PRINTER_INFO_5 extends Struct {
  external Pointer<Utf16> pPrinterName;

  external Pointer<Utf16> pPortName;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int DeviceNotSelectedTimeout;

  @Uint32()
  external int TransmissionRetryTimeout;
}

/// {@category Struct}
class PRINTER_INFO_6 extends Struct {
  @Uint32()
  external int dwStatus;
}

/// {@category Struct}
class PRINTER_INFO_7 extends Struct {
  external Pointer<Utf16> pszObjectGUID;

  @Uint32()
  external int dwAction;
}

/// {@category Struct}
class PRINTER_INFO_8 extends Struct {
  external Pointer<DEVMODE> pDevMode;
}

/// {@category Struct}
class PRINTER_INFO_9 extends Struct {
  external Pointer<DEVMODE> pDevMode;
}

/// {@category Struct}
class PRINTER_NOTIFY_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Count;

  @Array(1)
  external Array<PRINTER_NOTIFY_INFO_DATA> aData;
}

/// {@category Struct}
class PRINTER_NOTIFY_INFO_DATA extends Struct {
  @Uint16()
  external int Type;

  @Uint16()
  external int Field;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int Id;

  external _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union NotifyData;
}

/// {@category Struct}
class _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union extends Union {
  @Array(2)
  external Array<Uint32> adwData;

  external _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union__Data_e__Struct Data;
}

/// {@category Struct}
class _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union__Data_e__Struct
    extends Struct {
  @Uint32()
  external int cbBuf;

  external Pointer pBuf;
}

extension PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union_Extension
    on PRINTER_NOTIFY_INFO_DATA {
  int get cbBuf => this.NotifyData.Data.cbBuf;
  set cbBuf(int value) => this.NotifyData.Data.cbBuf = value;

  Pointer get pBuf => this.NotifyData.Data.pBuf;
  set pBuf(Pointer value) => this.NotifyData.Data.pBuf = value;
}

extension PRINTER_NOTIFY_INFO_DATA_Extension on PRINTER_NOTIFY_INFO_DATA {
  Array<Uint32> get adwData => this.NotifyData.adwData;
  set adwData(Array<Uint32> value) => this.NotifyData.adwData = value;

  _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union__Data_e__Struct get Data =>
      this.NotifyData.Data;
  set Data(
          _PRINTER_NOTIFY_INFO_DATA__NotifyData_e__Union__Data_e__Struct
              value) =>
      this.NotifyData.Data = value;
}

/// {@category Struct}
class PRINTER_NOTIFY_INIT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int PollTime;
}

/// {@category Struct}
class PRINTER_NOTIFY_OPTIONS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Count;

  external Pointer<PRINTER_NOTIFY_OPTIONS_TYPE> pTypes;
}

/// {@category Struct}
class PRINTER_NOTIFY_OPTIONS_TYPE extends Struct {
  @Uint16()
  external int Type;

  @Uint16()
  external int Reserved0;

  @Uint32()
  external int Reserved1;

  @Uint32()
  external int Reserved2;

  @Uint32()
  external int Count;

  external Pointer<Uint16> pFields;
}

/// {@category Struct}
class PRINTER_OPTIONS extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int dwFlags;
}

/// {@category Struct}
class PRINTIFI32 extends Struct {
  @Uint32()
  external int cjThis;

  @Uint32()
  external int cjIfiExtra;

  @Int32()
  external int dpwszFamilyName;

  @Int32()
  external int dpwszStyleName;

  @Int32()
  external int dpwszFaceName;

  @Int32()
  external int dpwszUniqueName;

  @Int32()
  external int dpFontSim;

  @Int32()
  external int lEmbedId;

  @Int32()
  external int lItalicAngle;

  @Int32()
  external int lCharBias;

  @Int32()
  external int dpCharSets;

  @Uint8()
  external int jWinCharSet;

  @Uint8()
  external int jWinPitchAndFamily;

  @Uint16()
  external int usWinWeight;

  @Uint32()
  external int flInfo;

  @Uint16()
  external int fsSelection;

  @Uint16()
  external int fsType;

  @Int16()
  external int fwdUnitsPerEm;

  @Int16()
  external int fwdLowestPPEm;

  @Int16()
  external int fwdWinAscender;

  @Int16()
  external int fwdWinDescender;

  @Int16()
  external int fwdMacAscender;

  @Int16()
  external int fwdMacDescender;

  @Int16()
  external int fwdMacLineGap;

  @Int16()
  external int fwdTypoAscender;

  @Int16()
  external int fwdTypoDescender;

  @Int16()
  external int fwdTypoLineGap;

  @Int16()
  external int fwdAveCharWidth;

  @Int16()
  external int fwdMaxCharInc;

  @Int16()
  external int fwdCapHeight;

  @Int16()
  external int fwdXHeight;

  @Int16()
  external int fwdSubscriptXSize;

  @Int16()
  external int fwdSubscriptYSize;

  @Int16()
  external int fwdSubscriptXOffset;

  @Int16()
  external int fwdSubscriptYOffset;

  @Int16()
  external int fwdSuperscriptXSize;

  @Int16()
  external int fwdSuperscriptYSize;

  @Int16()
  external int fwdSuperscriptXOffset;

  @Int16()
  external int fwdSuperscriptYOffset;

  @Int16()
  external int fwdUnderscoreSize;

  @Int16()
  external int fwdUnderscorePosition;

  @Int16()
  external int fwdStrikeoutSize;

  @Int16()
  external int fwdStrikeoutPosition;

  @Uint8()
  external int chFirstChar;

  @Uint8()
  external int chLastChar;

  @Uint8()
  external int chDefaultChar;

  @Uint8()
  external int chBreakChar;

  @Uint16()
  external int wcFirstChar;

  @Uint16()
  external int wcLastChar;

  @Uint16()
  external int wcDefaultChar;

  @Uint16()
  external int wcBreakChar;

  external POINTL ptlBaseline;

  external POINTL ptlAspect;

  external POINTL ptlCaret;

  external RECTL rclFontBox;

  @Array(4)
  external Array<Uint8> achVendId;

  @Uint32()
  external int cKerningPairs;

  @Uint32()
  external int ulPanoseCulture;

  external PANOSE panose;
}

/// {@category Struct}
class PRINTPROCESSOROPENDATA extends Struct {
  external Pointer<DEVMODE> pDevMode;

  external Pointer<Utf16> pDatatype;

  external Pointer<Utf16> pParameters;

  external Pointer<Utf16> pDocumentName;

  @Uint32()
  external int JobId;

  external Pointer<Utf16> pOutputFile;

  external Pointer<Utf16> pPrinterName;
}

/// {@category Struct}
class PRINTPROCESSOR_CAPS_1 extends Struct {
  @Uint32()
  external int dwLevel;

  @Uint32()
  external int dwNupOptions;

  @Uint32()
  external int dwPageOrderFlags;

  @Uint32()
  external int dwNumberOfCopies;
}

/// {@category Struct}
class PRINTPROCESSOR_CAPS_2 extends Struct {
  @Uint32()
  external int dwLevel;

  @Uint32()
  external int dwNupOptions;

  @Uint32()
  external int dwPageOrderFlags;

  @Uint32()
  external int dwNumberOfCopies;

  @Uint32()
  external int dwDuplexHandlingCaps;

  @Uint32()
  external int dwNupDirectionCaps;

  @Uint32()
  external int dwNupBorderCaps;

  @Uint32()
  external int dwBookletHandlingCaps;

  @Uint32()
  external int dwScalingCaps;
}

/// {@category Struct}
class PRINTPROCESSOR_INFO_1 extends Struct {
  external Pointer<Utf16> pName;
}

/// {@category Struct}
class PRINTPROVIDOR extends Struct {
  @IntPtr()
  external int fpOpenPrinter;

  @IntPtr()
  external int fpSetJob;

  @IntPtr()
  external int fpGetJob;

  @IntPtr()
  external int fpEnumJobs;

  @IntPtr()
  external int fpAddPrinter;

  @IntPtr()
  external int fpDeletePrinter;

  @IntPtr()
  external int fpSetPrinter;

  @IntPtr()
  external int fpGetPrinter;

  @IntPtr()
  external int fpEnumPrinters;

  @IntPtr()
  external int fpAddPrinterDriver;

  @IntPtr()
  external int fpEnumPrinterDrivers;

  @IntPtr()
  external int fpGetPrinterDriver;

  @IntPtr()
  external int fpGetPrinterDriverDirectory;

  @IntPtr()
  external int fpDeletePrinterDriver;

  @IntPtr()
  external int fpAddPrintProcessor;

  @IntPtr()
  external int fpEnumPrintProcessors;

  @IntPtr()
  external int fpGetPrintProcessorDirectory;

  @IntPtr()
  external int fpDeletePrintProcessor;

  @IntPtr()
  external int fpEnumPrintProcessorDatatypes;

  @IntPtr()
  external int fpStartDocPrinter;

  @IntPtr()
  external int fpStartPagePrinter;

  @IntPtr()
  external int fpWritePrinter;

  @IntPtr()
  external int fpEndPagePrinter;

  @IntPtr()
  external int fpAbortPrinter;

  @IntPtr()
  external int fpReadPrinter;

  @IntPtr()
  external int fpEndDocPrinter;

  @IntPtr()
  external int fpAddJob;

  @IntPtr()
  external int fpScheduleJob;

  @IntPtr()
  external int fpGetPrinterData;

  @IntPtr()
  external int fpSetPrinterData;

  @IntPtr()
  external int fpWaitForPrinterChange;

  @IntPtr()
  external int fpClosePrinter;

  @IntPtr()
  external int fpAddForm;

  @IntPtr()
  external int fpDeleteForm;

  @IntPtr()
  external int fpGetForm;

  @IntPtr()
  external int fpSetForm;

  @IntPtr()
  external int fpEnumForms;

  @IntPtr()
  external int fpEnumMonitors;

  @IntPtr()
  external int fpEnumPorts;

  @IntPtr()
  external int fpAddPort;

  @IntPtr()
  external int fpConfigurePort;

  @IntPtr()
  external int fpDeletePort;

  @IntPtr()
  external int fpCreatePrinterIC;

  @IntPtr()
  external int fpPlayGdiScriptOnPrinterIC;

  @IntPtr()
  external int fpDeletePrinterIC;

  @IntPtr()
  external int fpAddPrinterConnection;

  @IntPtr()
  external int fpDeletePrinterConnection;

  @IntPtr()
  external int fpPrinterMessageBox;

  @IntPtr()
  external int fpAddMonitor;

  @IntPtr()
  external int fpDeleteMonitor;

  @IntPtr()
  external int fpResetPrinter;

  @IntPtr()
  external int fpGetPrinterDriverEx;

  @IntPtr()
  external int fpFindFirstPrinterChangeNotification;

  @IntPtr()
  external int fpFindClosePrinterChangeNotification;

  @IntPtr()
  external int fpAddPortEx;

  @IntPtr()
  external int fpShutDown;

  @IntPtr()
  external int fpRefreshPrinterChangeNotification;

  @IntPtr()
  external int fpOpenPrinterEx;

  @IntPtr()
  external int fpAddPrinterEx;

  @IntPtr()
  external int fpSetPort;

  @IntPtr()
  external int fpEnumPrinterData;

  @IntPtr()
  external int fpDeletePrinterData;

  @IntPtr()
  external int fpClusterSplOpen;

  @IntPtr()
  external int fpClusterSplClose;

  @IntPtr()
  external int fpClusterSplIsAlive;

  @IntPtr()
  external int fpSetPrinterDataEx;

  @IntPtr()
  external int fpGetPrinterDataEx;

  @IntPtr()
  external int fpEnumPrinterDataEx;

  @IntPtr()
  external int fpEnumPrinterKey;

  @IntPtr()
  external int fpDeletePrinterDataEx;

  @IntPtr()
  external int fpDeletePrinterKey;

  @IntPtr()
  external int fpSeekPrinter;

  @IntPtr()
  external int fpDeletePrinterDriverEx;

  @IntPtr()
  external int fpAddPerMachineConnection;

  @IntPtr()
  external int fpDeletePerMachineConnection;

  @IntPtr()
  external int fpEnumPerMachineConnections;

  @IntPtr()
  external int fpXcvData;

  @IntPtr()
  external int fpAddPrinterDriverEx;

  @IntPtr()
  external int fpSplReadPrinter;

  @IntPtr()
  external int fpDriverUnloadComplete;

  @IntPtr()
  external int fpGetSpoolFileInfo;

  @IntPtr()
  external int fpCommitSpoolData;

  @IntPtr()
  external int fpCloseSpoolFileHandle;

  @IntPtr()
  external int fpFlushPrinter;

  @IntPtr()
  external int fpSendRecvBidiData;

  @IntPtr()
  external int fpAddPrinterConnection2;

  @IntPtr()
  external int fpGetPrintClassObject;

  @IntPtr()
  external int fpReportJobProcessingProgress;

  @IntPtr()
  external int fpEnumAndLogProvidorObjects;

  @IntPtr()
  external int fpInternalGetPrinterDriver;

  @IntPtr()
  external int fpFindCompatibleDriver;

  @IntPtr()
  external int fpGetJobNamedPropertyValue;

  @IntPtr()
  external int fpSetJobNamedProperty;

  @IntPtr()
  external int fpDeleteJobNamedProperty;

  @IntPtr()
  external int fpEnumJobNamedProperties;

  @IntPtr()
  external int fpPowerEvent;

  @IntPtr()
  external int fpGetUserPropertyBag;

  @IntPtr()
  external int fpCanShutdown;

  @IntPtr()
  external int fpLogJobInfoForBranchOffice;

  @IntPtr()
  external int fpRegeneratePrintDeviceCapabilities;

  @IntPtr()
  external int fpPrintSupportOperation;

  @IntPtr()
  external int fpIppCreateJobOnPrinter;

  @IntPtr()
  external int fpIppGetJobAttributes;

  @IntPtr()
  external int fpIppSetJobAttributes;

  @IntPtr()
  external int fpIppGetPrinterAttributes;

  @IntPtr()
  external int fpIppSetPrinterAttributes;
}

/// {@category Struct}
class PRINT_EXECUTION_DATA extends Struct {
  @Int32()
  external int context;

  @Uint32()
  external int clientAppPID;
}

/// {@category Struct}
class PRINT_FEATURE_OPTION extends Struct {
  external Pointer<Utf8> pszFeature;

  external Pointer<Utf8> pszOption;
}

/// {@category Struct}
class PROPSHEETUI_GETICON_INFO extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Flags;

  @Uint16()
  external int cxIcon;

  @Uint16()
  external int cyIcon;

  @IntPtr()
  external int hIcon;
}

/// {@category Struct}
class PROPSHEETUI_INFO extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Version;

  @Uint16()
  external int Flags;

  @Uint16()
  external int Reason;

  @IntPtr()
  external int hComPropSheet;

  external Pointer<NativeFunction<PFNCOMPROPSHEET>> pfnComPropSheet;

  @IntPtr()
  external int lParamInit;

  @IntPtr()
  external int UserData;

  @IntPtr()
  external int Result;
}

/// {@category Struct}
class PROPSHEETUI_INFO_HEADER extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int Flags;

  external Pointer<Int8> pTitle;

  @IntPtr()
  external int hWndParent;

  @IntPtr()
  external int hInst;

  external _PROPSHEETUI_INFO_HEADER__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PROPSHEETUI_INFO_HEADER__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  @IntPtr()
  external int IconID;
}

extension PROPSHEETUI_INFO_HEADER_Extension on PROPSHEETUI_INFO_HEADER {
  int get hIcon => this.Anonymous.hIcon;
  set hIcon(int value) => this.Anonymous.hIcon = value;

  int get IconID => this.Anonymous.IconID;
  set IconID(int value) => this.Anonymous.IconID = value;
}

/// {@category Struct}
class PROVIDOR_INFO_1 extends Struct {
  external Pointer<Utf16> pName;

  external Pointer<Utf16> pEnvironment;

  external Pointer<Utf16> pDLLName;
}

/// {@category Struct}
class PROVIDOR_INFO_2 extends Struct {
  external Pointer<Utf16> pOrder;
}

/// {@category Struct}
class PSCRIPT5_PRIVATE_DEVMODE extends Struct {
  @Array(57)
  external Array<Uint16> wReserved;

  @Uint16()
  external int wSize;
}

/// {@category Struct}
class PSPINFO extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int wReserved;

  @IntPtr()
  external int hComPropSheet;

  @IntPtr()
  external int hCPSUIPage;

  external Pointer<NativeFunction<PFNCOMPROPSHEET>> pfnComPropSheet;
}

/// {@category Struct}
class PUBLISHERINFO extends Struct {
  @Uint32()
  external int dwMode;

  @Uint16()
  external int wMinoutlinePPEM;

  @Uint16()
  external int wMaxbitmapPPEM;
}

/// {@category Struct}
class PrintNamedProperty extends Struct {
  external Pointer<Utf16> propertyName;

  external PrintPropertyValue propertyValue;
}

/// {@category Struct}
class PrintPropertiesCollection extends Struct {
  @Uint32()
  external int numberOfProperties;

  external Pointer<PrintNamedProperty> propertiesCollection;
}

/// {@category Struct}
class PrintPropertyValue extends Struct {
  @Int32()
  external int ePropertyType;

  external _PrintPropertyValue__value_e__Union value;
}

/// {@category Struct}
class _PrintPropertyValue__value_e__Union extends Union {
  @Uint8()
  external int propertyByte;

  external Pointer<Utf16> propertyString;

  @Int32()
  external int propertyInt32;

  @Int64()
  external int propertyInt64;

  external _PrintPropertyValue__value_e__Union__propertyBlob_e__Struct
      propertyBlob;
}

/// {@category Struct}
class _PrintPropertyValue__value_e__Union__propertyBlob_e__Struct
    extends Struct {
  @Uint32()
  external int cbBuf;

  external Pointer pBuf;
}

extension PrintPropertyValue__value_e__Union_Extension on PrintPropertyValue {
  int get cbBuf => this.value.propertyBlob.cbBuf;
  set cbBuf(int value) => this.value.propertyBlob.cbBuf = value;

  Pointer get pBuf => this.value.propertyBlob.pBuf;
  set pBuf(Pointer value) => this.value.propertyBlob.pBuf = value;
}

extension PrintPropertyValue_Extension on PrintPropertyValue {
  int get propertyByte => this.value.propertyByte;
  set propertyByte(int value) => this.value.propertyByte = value;

  Pointer<Utf16> get propertyString => this.value.propertyString;
  set propertyString(Pointer<Utf16> value) => this.value.propertyString = value;

  int get propertyInt32 => this.value.propertyInt32;
  set propertyInt32(int value) => this.value.propertyInt32 = value;

  int get propertyInt64 => this.value.propertyInt64;
  set propertyInt64(int value) => this.value.propertyInt64 = value;

  _PrintPropertyValue__value_e__Union__propertyBlob_e__Struct
      get propertyBlob => this.value.propertyBlob;
  set propertyBlob(
          _PrintPropertyValue__value_e__Union__propertyBlob_e__Struct value) =>
      this.value.propertyBlob = value;
}

/// {@category Struct}
class SETRESULT_INFO extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int wReserved;

  @IntPtr()
  external int hSetResult;

  @IntPtr()
  external int Result;
}

/// {@category Struct}
class SHOWUIPARAMS extends Struct {
  @Int32()
  external int UIType;

  external MESSAGEBOX_PARAMS MessageBoxParams;
}

/// {@category Struct}
class SIMULATE_CAPS_1 extends Struct {
  @Uint32()
  external int dwLevel;

  @Uint32()
  external int dwPageOrderFlags;

  @Uint32()
  external int dwNumberOfCopies;

  @Uint32()
  external int dwCollate;

  @Uint32()
  external int dwNupOptions;
}

/// {@category Struct}
class SPLCLIENT_INFO_1 extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pMachineName;

  external Pointer<Utf16> pUserName;

  @Uint32()
  external int dwBuildNum;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint16()
  external int wProcessorArchitecture;
}

/// {@category Struct}
class TRANSDATA extends Struct {
  @Uint8()
  external int ubCodePageID;

  @Uint8()
  external int ubType;

  external _TRANSDATA__uCode_e__Union uCode;
}

/// {@category Struct}
class _TRANSDATA__uCode_e__Union extends Union {
  @Int16()
  external int sCode;

  @Uint8()
  external int ubCode;

  @Array(2)
  external Array<Uint8> ubPairs;
}

extension TRANSDATA_Extension on TRANSDATA {
  int get sCode => this.uCode.sCode;
  set sCode(int value) => this.uCode.sCode = value;

  int get ubCode => this.uCode.ubCode;
  set ubCode(int value) => this.uCode.ubCode = value;

  Array<Uint8> get ubPairs => this.uCode.ubPairs;
  set ubPairs(Array<Uint8> value) => this.uCode.ubPairs = value;
}

/// {@category Struct}
class UFF_FILEHEADER extends Struct {
  @Uint32()
  external int dwSignature;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwSize;

  @Uint32()
  external int nFonts;

  @Uint32()
  external int nGlyphSets;

  @Uint32()
  external int nVarData;

  @Uint32()
  external int offFontDir;

  @Uint32()
  external int dwFlags;

  @Array(4)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
class UFF_FONTDIRECTORY extends Struct {
  @Uint32()
  external int dwSignature;

  @Uint16()
  external int wSize;

  @Uint16()
  external int wFontID;

  @Int16()
  external int sGlyphID;

  @Uint16()
  external int wFlags;

  @Uint32()
  external int dwInstallerSig;

  @Uint32()
  external int offFontName;

  @Uint32()
  external int offCartridgeName;

  @Uint32()
  external int offFontData;

  @Uint32()
  external int offGlyphData;

  @Uint32()
  external int offVarData;
}

/// {@category Struct}
class UNIDRVINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int flGenFlags;

  @Uint16()
  external int wType;

  @Uint16()
  external int fCaps;

  @Uint16()
  external int wXRes;

  @Uint16()
  external int wYRes;

  @Int16()
  external int sYAdjust;

  @Int16()
  external int sYMoved;

  @Uint16()
  external int wPrivateData;

  @Int16()
  external int sShift;

  external INVOC SelectFont;

  external INVOC UnSelectFont;

  @Array(4)
  external Array<Uint16> wReserved;
}

/// {@category Struct}
class UNIDRV_PRIVATE_DEVMODE extends Struct {
  @Array(4)
  external Array<Uint16> wReserved;

  @Uint16()
  external int wSize;
}

/// {@category Struct}
class UNIFM_HDR extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int ulDefaultCodepage;

  @Int32()
  external int lGlyphSetDataRCID;

  @Uint32()
  external int loUnidrvInfo;

  @Uint32()
  external int loIFIMetrics;

  @Uint32()
  external int loExtTextMetric;

  @Uint32()
  external int loWidthTable;

  @Uint32()
  external int loKernPair;

  @Array(2)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
class UNI_CODEPAGEINFO extends Struct {
  @Uint32()
  external int dwCodePage;

  external INVOC SelectSymbolSet;

  external INVOC UnSelectSymbolSet;
}

/// {@category Struct}
class UNI_GLYPHSETDATA extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int lPredefinedID;

  @Uint32()
  external int dwGlyphCount;

  @Uint32()
  external int dwRunCount;

  @Uint32()
  external int loRunOffset;

  @Uint32()
  external int dwCodePageCount;

  @Uint32()
  external int loCodePageOffset;

  @Uint32()
  external int loMapTableOffset;

  @Array(2)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
class USERDATA extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int dwItemID;

  external Pointer<Utf8> pKeyWordName;

  @Array(8)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
class WIDTHRUN extends Struct {
  @Uint16()
  external int wStartGlyph;

  @Uint16()
  external int wGlyphCount;

  @Uint32()
  external int loCharWidthOffset;
}

/// {@category Struct}
class WIDTHTABLE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwRunNum;

  @Array(1)
  external Array<WIDTHRUN> WidthRun;
}

/// {@category Struct}
class SPLCLIENT_INFO_2_V1 extends Struct {
  @IntPtr()
  external int hSplPrinter;
}

/// {@category Struct}
class SPLCLIENT_INFO_2_V2 extends Struct {
  @Uint64()
  external int hSplPrinter;
}

/// {@category Struct}
class SPLCLIENT_INFO_2_V3 extends Struct {
  @Uint64()
  external int hSplPrinter;
}

/// {@category Struct}
class MIDL___MIDL_itf_imgerror_0000_0000_0001 extends Struct {
  external Pointer<Utf16> description;

  external GUID guid;

  @Uint32()
  external int helpContext;

  external Pointer<Utf16> helpFile;

  external Pointer<Utf16> source;

  external Pointer<Utf16> devDescription;

  external GUID errorID;

  @Uint32()
  external int cUserParameters;

  external Pointer<Pointer<Utf16>> aUserParameters;

  external Pointer<Utf16> userFallback;

  @Uint32()
  external int exceptionID;
}

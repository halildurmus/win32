// IUri.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IUri = '{A39EE748-6A27-4817-A6F2-13914BEF5890}';

typedef _GetPropertyBSTR_Native = Int32 Function(Pointer obj, Uint32 uriProp,
    Pointer<Pointer<Utf16>> pbstrProperty, Uint32 dwFlags);
typedef _GetPropertyBSTR_Dart = int Function(Pointer obj, int uriProp,
    Pointer<Pointer<Utf16>> pbstrProperty, int dwFlags);

typedef _GetPropertyLength_Native = Int32 Function(
    Pointer obj, Uint32 uriProp, Pointer<Uint32> pcchProperty, Uint32 dwFlags);
typedef _GetPropertyLength_Dart = int Function(
    Pointer obj, int uriProp, Pointer<Uint32> pcchProperty, int dwFlags);

typedef _GetPropertyDWORD_Native = Int32 Function(
    Pointer obj, Uint32 uriProp, Pointer<Uint32> pdwProperty, Uint32 dwFlags);
typedef _GetPropertyDWORD_Dart = int Function(
    Pointer obj, int uriProp, Pointer<Uint32> pdwProperty, int dwFlags);

typedef _HasProperty_Native = Int32 Function(
    Pointer obj, Uint32 uriProp, Pointer<Int32> pfHasProperty);
typedef _HasProperty_Dart = int Function(
    Pointer obj, int uriProp, Pointer<Int32> pfHasProperty);

typedef _GetAbsoluteUri_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrAbsoluteUri);
typedef _GetAbsoluteUri_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrAbsoluteUri);

typedef _GetAuthority_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrAuthority);
typedef _GetAuthority_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrAuthority);

typedef _GetDisplayUri_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrDisplayString);
typedef _GetDisplayUri_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrDisplayString);

typedef _GetDomain_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrDomain);
typedef _GetDomain_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrDomain);

typedef _GetExtension_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrExtension);
typedef _GetExtension_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrExtension);

typedef _GetFragment_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrFragment);
typedef _GetFragment_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrFragment);

typedef _GetHost_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrHost);
typedef _GetHost_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrHost);

typedef _GetPassword_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrPassword);
typedef _GetPassword_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrPassword);

typedef _GetPath_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrPath);
typedef _GetPath_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrPath);

typedef _GetPathAndQuery_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrPathAndQuery);
typedef _GetPathAndQuery_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrPathAndQuery);

typedef _GetQuery_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrQuery);
typedef _GetQuery_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrQuery);

typedef _GetRawUri_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrRawUri);
typedef _GetRawUri_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrRawUri);

typedef _GetSchemeName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrSchemeName);
typedef _GetSchemeName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrSchemeName);

typedef _GetUserInfo_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrUserInfo);
typedef _GetUserInfo_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrUserInfo);

typedef _GetUserName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrUserName);
typedef _GetUserName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbstrUserName);

typedef _GetHostType_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwHostType);
typedef _GetHostType_Dart = int Function(
    Pointer obj, Pointer<Uint32> pdwHostType);

typedef _GetPort_Native = Int32 Function(Pointer obj, Pointer<Uint32> pdwPort);
typedef _GetPort_Dart = int Function(Pointer obj, Pointer<Uint32> pdwPort);

typedef _GetScheme_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwScheme);
typedef _GetScheme_Dart = int Function(Pointer obj, Pointer<Uint32> pdwScheme);

typedef _GetZone_Native = Int32 Function(Pointer obj, Pointer<Uint32> pdwZone);
typedef _GetZone_Dart = int Function(Pointer obj, Pointer<Uint32> pdwZone);

typedef _GetProperties_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwFlags);
typedef _GetProperties_Dart = int Function(
    Pointer obj, Pointer<Uint32> pdwFlags);

typedef _IsEqual_Native = Int32 Function(
    Pointer obj, Pointer pUri, Pointer<Int32> pfEqual);
typedef _IsEqual_Dart = int Function(
    Pointer obj, Pointer pUri, Pointer<Int32> pfEqual);

/// {@category Interface}
/// {@category com}
class IUri extends IUnknown {
  // vtable begins at 3, ends at 27

  IUri(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyBSTR(
          int uriProp, Pointer<Pointer<Utf16>> pbstrProperty, int dwFlags) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_GetPropertyBSTR_Native>>>()
              .value
              .asFunction<_GetPropertyBSTR_Dart>()(
          ptr.ref.lpVtbl, uriProp, pbstrProperty, dwFlags);

  int GetPropertyLength(
          int uriProp, Pointer<Uint32> pcchProperty, int dwFlags) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_GetPropertyLength_Native>>>()
              .value
              .asFunction<_GetPropertyLength_Dart>()(
          ptr.ref.lpVtbl, uriProp, pcchProperty, dwFlags);

  int GetPropertyDWORD(int uriProp, Pointer<Uint32> pdwProperty, int dwFlags) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_GetPropertyDWORD_Native>>>()
              .value
              .asFunction<_GetPropertyDWORD_Dart>()(
          ptr.ref.lpVtbl, uriProp, pdwProperty, dwFlags);

  int HasProperty(int uriProp, Pointer<Int32> pfHasProperty) => ptr
      .ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_HasProperty_Native>>>()
      .value
      .asFunction<_HasProperty_Dart>()(ptr.ref.lpVtbl, uriProp, pfHasProperty);

  int GetAbsoluteUri(Pointer<Pointer<Utf16>> pbstrAbsoluteUri) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_GetAbsoluteUri_Native>>>()
          .value
          .asFunction<_GetAbsoluteUri_Dart>()(ptr.ref.lpVtbl, pbstrAbsoluteUri);

  int GetAuthority(Pointer<Pointer<Utf16>> pbstrAuthority) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<Pointer<NativeFunction<_GetAuthority_Native>>>()
          .value
          .asFunction<_GetAuthority_Dart>()(ptr.ref.lpVtbl, pbstrAuthority);

  int GetDisplayUri(Pointer<Pointer<Utf16>> pbstrDisplayString) => ptr
      .ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_GetDisplayUri_Native>>>()
      .value
      .asFunction<_GetDisplayUri_Dart>()(ptr.ref.lpVtbl, pbstrDisplayString);

  int GetDomain(Pointer<Pointer<Utf16>> pbstrDomain) => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_GetDomain_Native>>>()
      .value
      .asFunction<_GetDomain_Dart>()(ptr.ref.lpVtbl, pbstrDomain);

  int GetExtension(Pointer<Pointer<Utf16>> pbstrExtension) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<_GetExtension_Native>>>()
          .value
          .asFunction<_GetExtension_Dart>()(ptr.ref.lpVtbl, pbstrExtension);

  int GetFragment(Pointer<Pointer<Utf16>> pbstrFragment) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_GetFragment_Native>>>()
      .value
      .asFunction<_GetFragment_Dart>()(ptr.ref.lpVtbl, pbstrFragment);

  int GetHost(Pointer<Pointer<Utf16>> pbstrHost) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_GetHost_Native>>>()
      .value
      .asFunction<_GetHost_Dart>()(ptr.ref.lpVtbl, pbstrHost);

  int GetPassword(Pointer<Pointer<Utf16>> pbstrPassword) => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_GetPassword_Native>>>()
      .value
      .asFunction<_GetPassword_Dart>()(ptr.ref.lpVtbl, pbstrPassword);

  int GetPath(Pointer<Pointer<Utf16>> pbstrPath) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_GetPath_Native>>>()
      .value
      .asFunction<_GetPath_Dart>()(ptr.ref.lpVtbl, pbstrPath);

  int GetPathAndQuery(Pointer<Pointer<Utf16>> pbstrPathAndQuery) => ptr
      .ref.lpVtbl.value
      .elementAt(16)
      .cast<Pointer<NativeFunction<_GetPathAndQuery_Native>>>()
      .value
      .asFunction<_GetPathAndQuery_Dart>()(ptr.ref.lpVtbl, pbstrPathAndQuery);

  int GetQuery(Pointer<Pointer<Utf16>> pbstrQuery) => ptr.ref.lpVtbl.value
      .elementAt(17)
      .cast<Pointer<NativeFunction<_GetQuery_Native>>>()
      .value
      .asFunction<_GetQuery_Dart>()(ptr.ref.lpVtbl, pbstrQuery);

  int GetRawUri(Pointer<Pointer<Utf16>> pbstrRawUri) => ptr.ref.lpVtbl.value
      .elementAt(18)
      .cast<Pointer<NativeFunction<_GetRawUri_Native>>>()
      .value
      .asFunction<_GetRawUri_Dart>()(ptr.ref.lpVtbl, pbstrRawUri);

  int GetSchemeName(Pointer<Pointer<Utf16>> pbstrSchemeName) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<Pointer<NativeFunction<_GetSchemeName_Native>>>()
          .value
          .asFunction<_GetSchemeName_Dart>()(ptr.ref.lpVtbl, pbstrSchemeName);

  int GetUserInfo(Pointer<Pointer<Utf16>> pbstrUserInfo) => ptr.ref.lpVtbl.value
      .elementAt(20)
      .cast<Pointer<NativeFunction<_GetUserInfo_Native>>>()
      .value
      .asFunction<_GetUserInfo_Dart>()(ptr.ref.lpVtbl, pbstrUserInfo);

  int GetUserName(Pointer<Pointer<Utf16>> pbstrUserName) => ptr.ref.lpVtbl.value
      .elementAt(21)
      .cast<Pointer<NativeFunction<_GetUserName_Native>>>()
      .value
      .asFunction<_GetUserName_Dart>()(ptr.ref.lpVtbl, pbstrUserName);

  int GetHostType(Pointer<Uint32> pdwHostType) => ptr.ref.lpVtbl.value
      .elementAt(22)
      .cast<Pointer<NativeFunction<_GetHostType_Native>>>()
      .value
      .asFunction<_GetHostType_Dart>()(ptr.ref.lpVtbl, pdwHostType);

  int GetPort(Pointer<Uint32> pdwPort) => ptr.ref.lpVtbl.value
      .elementAt(23)
      .cast<Pointer<NativeFunction<_GetPort_Native>>>()
      .value
      .asFunction<_GetPort_Dart>()(ptr.ref.lpVtbl, pdwPort);

  int GetScheme(Pointer<Uint32> pdwScheme) => ptr.ref.lpVtbl.value
      .elementAt(24)
      .cast<Pointer<NativeFunction<_GetScheme_Native>>>()
      .value
      .asFunction<_GetScheme_Dart>()(ptr.ref.lpVtbl, pdwScheme);

  int GetZone(Pointer<Uint32> pdwZone) => ptr.ref.lpVtbl.value
      .elementAt(25)
      .cast<Pointer<NativeFunction<_GetZone_Native>>>()
      .value
      .asFunction<_GetZone_Dart>()(ptr.ref.lpVtbl, pdwZone);

  int GetProperties(Pointer<Uint32> pdwFlags) => ptr.ref.lpVtbl.value
      .elementAt(26)
      .cast<Pointer<NativeFunction<_GetProperties_Native>>>()
      .value
      .asFunction<_GetProperties_Dart>()(ptr.ref.lpVtbl, pdwFlags);

  int IsEqual(Pointer pUri, Pointer<Int32> pfEqual) => ptr.ref.lpVtbl.value
      .elementAt(27)
      .cast<Pointer<NativeFunction<_IsEqual_Native>>>()
      .value
      .asFunction<_IsEqual_Dart>()(ptr.ref.lpVtbl, pUri, pfEqual);
}

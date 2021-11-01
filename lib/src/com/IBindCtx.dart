// IBindCtx.dart

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
const IID_IBindCtx = '{0000000E-0000-0000-C000-000000000046}';

typedef _RegisterObjectBound_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> punk);
typedef _RegisterObjectBound_Dart = int Function(
    Pointer obj, Pointer<COMObject> punk);

typedef _RevokeObjectBound_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> punk);
typedef _RevokeObjectBound_Dart = int Function(
    Pointer obj, Pointer<COMObject> punk);

typedef _ReleaseBoundObjects_Native = Int32 Function(Pointer obj);
typedef _ReleaseBoundObjects_Dart = int Function(Pointer obj);

typedef _SetBindOptions_Native = Int32 Function(
    Pointer obj, Pointer<BIND_OPTS> pbindopts);
typedef _SetBindOptions_Dart = int Function(
    Pointer obj, Pointer<BIND_OPTS> pbindopts);

typedef _GetBindOptions_Native = Int32 Function(
    Pointer obj, Pointer<BIND_OPTS> pbindopts);
typedef _GetBindOptions_Dart = int Function(
    Pointer obj, Pointer<BIND_OPTS> pbindopts);

typedef _GetRunningObjectTable_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> pprot);
typedef _GetRunningObjectTable_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> pprot);

typedef _RegisterObjectParam_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszKey, Pointer<COMObject> punk);
typedef _RegisterObjectParam_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszKey, Pointer<COMObject> punk);

typedef _GetObjectParam_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszKey, Pointer<Pointer<COMObject>> ppunk);
typedef _GetObjectParam_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszKey, Pointer<Pointer<COMObject>> ppunk);

typedef _EnumObjectParam_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> ppenum);
typedef _EnumObjectParam_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> ppenum);

typedef _RevokeObjectParam_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszKey);
typedef _RevokeObjectParam_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszKey);

/// {@category Interface}
/// {@category com}
class IBindCtx extends IUnknown {
  // vtable begins at 3, ends at 12

  IBindCtx(Pointer<COMObject> ptr) : super(ptr);

  int RegisterObjectBound(Pointer<COMObject> punk) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_RegisterObjectBound_Native>>>()
      .value
      .asFunction<_RegisterObjectBound_Dart>()(ptr.ref.lpVtbl, punk);

  int RevokeObjectBound(Pointer<COMObject> punk) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_RevokeObjectBound_Native>>>()
      .value
      .asFunction<_RevokeObjectBound_Dart>()(ptr.ref.lpVtbl, punk);

  int ReleaseBoundObjects() => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_ReleaseBoundObjects_Native>>>()
      .value
      .asFunction<_ReleaseBoundObjects_Dart>()(ptr.ref.lpVtbl);

  int SetBindOptions(Pointer<BIND_OPTS> pbindopts) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_SetBindOptions_Native>>>()
      .value
      .asFunction<_SetBindOptions_Dart>()(ptr.ref.lpVtbl, pbindopts);

  int GetBindOptions(Pointer<BIND_OPTS> pbindopts) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_GetBindOptions_Native>>>()
      .value
      .asFunction<_GetBindOptions_Dart>()(ptr.ref.lpVtbl, pbindopts);

  int GetRunningObjectTable(Pointer<Pointer<COMObject>> pprot) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<Pointer<NativeFunction<_GetRunningObjectTable_Native>>>()
          .value
          .asFunction<_GetRunningObjectTable_Dart>()(ptr.ref.lpVtbl, pprot);

  int RegisterObjectParam(Pointer<Utf16> pszKey, Pointer<COMObject> punk) => ptr
      .ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_RegisterObjectParam_Native>>>()
      .value
      .asFunction<_RegisterObjectParam_Dart>()(ptr.ref.lpVtbl, pszKey, punk);

  int GetObjectParam(
          Pointer<Utf16> pszKey, Pointer<Pointer<COMObject>> ppunk) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<Pointer<NativeFunction<_GetObjectParam_Native>>>()
          .value
          .asFunction<_GetObjectParam_Dart>()(ptr.ref.lpVtbl, pszKey, ppunk);

  int EnumObjectParam(Pointer<Pointer<COMObject>> ppenum) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<_EnumObjectParam_Native>>>()
          .value
          .asFunction<_EnumObjectParam_Dart>()(ptr.ref.lpVtbl, ppenum);

  int RevokeObjectParam(Pointer<Utf16> pszKey) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_RevokeObjectParam_Native>>>()
      .value
      .asFunction<_RevokeObjectParam_Dart>()(ptr.ref.lpVtbl, pszKey);
}

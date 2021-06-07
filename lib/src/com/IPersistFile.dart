// IPersistFile.dart

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

import 'IPersist.dart';

/// @nodoc
const IID_IPersistFile = '{0000010B-0000-0000-C000-000000000046}';

typedef _IsDirty_Native = Int32 Function(Pointer obj);
typedef _IsDirty_Dart = int Function(Pointer obj);

typedef _Load_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszFileName, Uint32 dwMode);
typedef _Load_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszFileName, int dwMode);

typedef _Save_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszFileName, Int32 fRemember);
typedef _Save_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszFileName, int fRemember);

typedef _SaveCompleted_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszFileName);
typedef _SaveCompleted_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszFileName);

typedef _GetCurFile_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> ppszFileName);
typedef _GetCurFile_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> ppszFileName);

/// {@category Interface}
/// {@category com}
class IPersistFile extends IPersist {
  // vtable begins at 4, ends at 8

  IPersistFile(Pointer<COMObject> ptr) : super(ptr);

  int IsDirty() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_IsDirty_Native>>>()
      .value
      .asFunction<_IsDirty_Dart>()(ptr.ref.lpVtbl);

  int Load(Pointer<Utf16> pszFileName, int dwMode) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_Load_Native>>>()
      .value
      .asFunction<_Load_Dart>()(ptr.ref.lpVtbl, pszFileName, dwMode);

  int Save(Pointer<Utf16> pszFileName, int fRemember) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Save_Native>>>()
      .value
      .asFunction<_Save_Dart>()(ptr.ref.lpVtbl, pszFileName, fRemember);

  int SaveCompleted(Pointer<Utf16> pszFileName) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SaveCompleted_Native>>>()
      .value
      .asFunction<_SaveCompleted_Dart>()(ptr.ref.lpVtbl, pszFileName);

  int GetCurFile(Pointer<Pointer<Utf16>> ppszFileName) => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_GetCurFile_Native>>>()
      .value
      .asFunction<_GetCurFile_Dart>()(ptr.ref.lpVtbl, ppszFileName);
}

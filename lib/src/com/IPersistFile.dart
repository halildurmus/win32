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

  int IsDirty() => Pointer<NativeFunction<_IsDirty_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(4).value)
      .asFunction<_IsDirty_Dart>()(ptr.ref.lpVtbl);

  int Load(Pointer<Utf16> pszFileName, int dwMode) =>
      Pointer<NativeFunction<_Load_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_Load_Dart>()(ptr.ref.lpVtbl, pszFileName, dwMode);

  int Save(Pointer<Utf16> pszFileName, int fRemember) =>
      Pointer<NativeFunction<_Save_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Save_Dart>()(ptr.ref.lpVtbl, pszFileName, fRemember);

  int SaveCompleted(Pointer<Utf16> pszFileName) =>
      Pointer<NativeFunction<_SaveCompleted_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_SaveCompleted_Dart>()(ptr.ref.lpVtbl, pszFileName);

  int GetCurFile(Pointer<Pointer<Utf16>> ppszFileName) =>
      Pointer<NativeFunction<_GetCurFile_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_GetCurFile_Dart>()(ptr.ref.lpVtbl, ppszFileName);
}

// IFileIsInUse.dart

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
const IID_IFileIsInUse = '{64A1CBF0-3A1A-4461-9158-376969693950}';

typedef _GetAppName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> ppszName);
typedef _GetAppName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> ppszName);

typedef _GetUsage_Native = Int32 Function(Pointer obj, Pointer<Uint32> pfut);
typedef _GetUsage_Dart = int Function(Pointer obj, Pointer<Uint32> pfut);

typedef _GetCapabilities_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwCapFlags);
typedef _GetCapabilities_Dart = int Function(
    Pointer obj, Pointer<Uint32> pdwCapFlags);

typedef _GetSwitchToHWND_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> phwnd);
typedef _GetSwitchToHWND_Dart = int Function(
    Pointer obj, Pointer<IntPtr> phwnd);

typedef _CloseFile_Native = Int32 Function(Pointer obj);
typedef _CloseFile_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IFileIsInUse extends IUnknown {
  // vtable begins at 3, ends at 7

  IFileIsInUse(Pointer<COMObject> ptr) : super(ptr);

  int GetAppName(Pointer<Pointer<Utf16>> ppszName) =>
      Pointer<NativeFunction<_GetAppName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetAppName_Dart>()(ptr.ref.lpVtbl, ppszName);

  int GetUsage(Pointer<Uint32> pfut) =>
      Pointer<NativeFunction<_GetUsage_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetUsage_Dart>()(ptr.ref.lpVtbl, pfut);

  int GetCapabilities(Pointer<Uint32> pdwCapFlags) =>
      Pointer<NativeFunction<_GetCapabilities_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetCapabilities_Dart>()(ptr.ref.lpVtbl, pdwCapFlags);

  int GetSwitchToHWND(Pointer<IntPtr> phwnd) =>
      Pointer<NativeFunction<_GetSwitchToHWND_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetSwitchToHWND_Dart>()(ptr.ref.lpVtbl, phwnd);

  int CloseFile() => Pointer<NativeFunction<_CloseFile_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(7).value)
      .asFunction<_CloseFile_Dart>()(ptr.ref.lpVtbl);
}

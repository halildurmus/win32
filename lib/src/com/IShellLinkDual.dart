// IShellLinkDual.dart

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

import 'IDispatch.dart';

/// @nodoc
const IID_IShellLinkDual = '{88A05C00-F000-11CE-8350-444553540000}';

typedef _get_Path_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs);
typedef _get_Path_Dart = int Function(Pointer obj, Pointer<Pointer<Utf16>> pbs);

typedef _put_Path_Native = Int32 Function(Pointer obj, Pointer<Utf16> bs);
typedef _put_Path_Dart = int Function(Pointer obj, Pointer<Utf16> bs);

typedef _get_Description_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs);
typedef _get_Description_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs);

typedef _put_Description_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> bs);
typedef _put_Description_Dart = int Function(Pointer obj, Pointer<Utf16> bs);

typedef _get_WorkingDirectory_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs);
typedef _get_WorkingDirectory_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs);

typedef _put_WorkingDirectory_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> bs);
typedef _put_WorkingDirectory_Dart = int Function(
    Pointer obj, Pointer<Utf16> bs);

typedef _get_Arguments_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs);
typedef _get_Arguments_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs);

typedef _put_Arguments_Native = Int32 Function(Pointer obj, Pointer<Utf16> bs);
typedef _put_Arguments_Dart = int Function(Pointer obj, Pointer<Utf16> bs);

typedef _get_Hotkey_Native = Int32 Function(Pointer obj, Pointer<Int32> piHK);
typedef _get_Hotkey_Dart = int Function(Pointer obj, Pointer<Int32> piHK);

typedef _put_Hotkey_Native = Int32 Function(Pointer obj, Int32 iHK);
typedef _put_Hotkey_Dart = int Function(Pointer obj, int iHK);

typedef _get_ShowCommand_Native = Int32 Function(
    Pointer obj, Pointer<Int32> piShowCommand);
typedef _get_ShowCommand_Dart = int Function(
    Pointer obj, Pointer<Int32> piShowCommand);

typedef _put_ShowCommand_Native = Int32 Function(
    Pointer obj, Int32 iShowCommand);
typedef _put_ShowCommand_Dart = int Function(Pointer obj, int iShowCommand);

typedef _Resolve_Native = Int32 Function(Pointer obj, Int32 fFlags);
typedef _Resolve_Dart = int Function(Pointer obj, int fFlags);

typedef _GetIconLocation_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs, Pointer<Int32> piIcon);
typedef _GetIconLocation_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pbs, Pointer<Int32> piIcon);

typedef _SetIconLocation_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> bs, Int32 iIcon);
typedef _SetIconLocation_Dart = int Function(
    Pointer obj, Pointer<Utf16> bs, int iIcon);

typedef _Save_Native = Int32 Function(Pointer obj, VARIANT vWhere);
typedef _Save_Dart = int Function(Pointer obj, VARIANT vWhere);

/// {@category Interface}
/// {@category com}
class IShellLinkDual extends IDispatch {
  // vtable begins at 7, ends at 22

  IShellLinkDual(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Path {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_get_Path_Native>>>()
          .value
          .asFunction<_get_Path_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Path(Pointer<Utf16> value) {
    final hr = Pointer<NativeFunction<_put_Path_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(8).value)
        .asFunction<_put_Path_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Description {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<Pointer<NativeFunction<_get_Description_Native>>>()
          .value
          .asFunction<_get_Description_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Description(Pointer<Utf16> value) {
    final hr = Pointer<NativeFunction<_put_Description_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(10).value)
        .asFunction<_put_Description_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get WorkingDirectory {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(11)
              .cast<Pointer<NativeFunction<_get_WorkingDirectory_Native>>>()
              .value
              .asFunction<_get_WorkingDirectory_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set WorkingDirectory(Pointer<Utf16> value) {
    final hr =
        Pointer<NativeFunction<_put_WorkingDirectory_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(12).value)
            .asFunction<_put_WorkingDirectory_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Arguments {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<Pointer<NativeFunction<_get_Arguments_Native>>>()
          .value
          .asFunction<_get_Arguments_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Arguments(Pointer<Utf16> value) {
    final hr = Pointer<NativeFunction<_put_Arguments_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(14).value)
        .asFunction<_put_Arguments_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Hotkey {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<Pointer<NativeFunction<_get_Hotkey_Native>>>()
          .value
          .asFunction<_get_Hotkey_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Hotkey(int value) {
    final hr = Pointer<NativeFunction<_put_Hotkey_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(16).value)
        .asFunction<_put_Hotkey_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ShowCommand {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<Pointer<NativeFunction<_get_ShowCommand_Native>>>()
          .value
          .asFunction<_get_ShowCommand_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ShowCommand(int value) {
    final hr = Pointer<NativeFunction<_put_ShowCommand_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(18).value)
        .asFunction<_put_ShowCommand_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int Resolve(int fFlags) => ptr.ref.lpVtbl.value
      .elementAt(19)
      .cast<Pointer<NativeFunction<_Resolve_Native>>>()
      .value
      .asFunction<_Resolve_Dart>()(ptr.ref.lpVtbl, fFlags);

  int GetIconLocation(Pointer<Pointer<Utf16>> pbs, Pointer<Int32> piIcon) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<Pointer<NativeFunction<_GetIconLocation_Native>>>()
          .value
          .asFunction<_GetIconLocation_Dart>()(ptr.ref.lpVtbl, pbs, piIcon);

  int SetIconLocation(Pointer<Utf16> bs, int iIcon) => ptr.ref.lpVtbl.value
      .elementAt(21)
      .cast<Pointer<NativeFunction<_SetIconLocation_Native>>>()
      .value
      .asFunction<_SetIconLocation_Dart>()(ptr.ref.lpVtbl, bs, iIcon);

  int Save(VARIANT vWhere) => ptr.ref.lpVtbl.value
      .elementAt(22)
      .cast<Pointer<NativeFunction<_Save_Native>>>()
      .value
      .asFunction<_Save_Dart>()(ptr.ref.lpVtbl, vWhere);
}

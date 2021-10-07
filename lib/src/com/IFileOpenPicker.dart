// IFileOpenPicker.dart

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

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

/// @nodoc
const IID_IFileOpenPicker = '{2CA8278A-12C5-4C5F-8977-94547793C241}';

typedef _get_ViewMode_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> value);
typedef _get_ViewMode_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _put_ViewMode_Native = Int32 Function(Pointer obj, Uint32 value);
typedef _put_ViewMode_Dart = int Function(Pointer obj, int value);

typedef _get_SettingsIdentifier_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_SettingsIdentifier_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _put_SettingsIdentifier_Native = Int32 Function(
    Pointer obj, IntPtr value);
typedef _put_SettingsIdentifier_Dart = int Function(Pointer obj, int value);

typedef _get_SuggestedStartLocation_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> value);
typedef _get_SuggestedStartLocation_Dart = int Function(
    Pointer obj, Pointer<Uint32> value);

typedef _put_SuggestedStartLocation_Native = Int32 Function(
    Pointer obj, Uint32 value);
typedef _put_SuggestedStartLocation_Dart = int Function(Pointer obj, int value);

typedef _get_CommitButtonText_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_CommitButtonText_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _put_CommitButtonText_Native = Int32 Function(
    Pointer obj, IntPtr value);
typedef _put_CommitButtonText_Dart = int Function(Pointer obj, int value);

typedef _get_FileTypeFilter_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_FileTypeFilter_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _PickSingleFileAsync_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> result);
typedef _PickSingleFileAsync_Dart = int Function(
    Pointer obj, Pointer<Pointer> result);

typedef _PickMultipleFilesAsync_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> result);
typedef _PickMultipleFilesAsync_Dart = int Function(
    Pointer obj, Pointer<Pointer> result);

/// {@category Interface}
/// {@category winrt}
class IFileOpenPicker extends IInspectable {
  // vtable begins at 6, ends at 16

  IFileOpenPicker(Pointer<COMObject> ptr) : super(ptr);

  int get ViewMode {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<Pointer<NativeFunction<_get_ViewMode_Native>>>()
          .value
          .asFunction<_get_ViewMode_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ViewMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<Pointer<NativeFunction<_put_ViewMode_Native>>>()
        .value
        .asFunction<_put_ViewMode_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SettingsIdentifier {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_get_SettingsIdentifier_Native>>>()
              .value
              .asFunction<_get_SettingsIdentifier_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SettingsIdentifier(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
        .cast<Pointer<NativeFunction<_put_SettingsIdentifier_Native>>>()
        .value
        .asFunction<_put_SettingsIdentifier_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SuggestedStartLocation {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<Pointer<NativeFunction<_get_SuggestedStartLocation_Native>>>()
          .value
          .asFunction<
              _get_SuggestedStartLocation_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SuggestedStartLocation(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<Pointer<NativeFunction<_put_SuggestedStartLocation_Native>>>()
        .value
        .asFunction<_put_SuggestedStartLocation_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get CommitButtonText {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(12)
              .cast<Pointer<NativeFunction<_get_CommitButtonText_Native>>>()
              .value
              .asFunction<_get_CommitButtonText_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CommitButtonText(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
        .cast<Pointer<NativeFunction<_put_CommitButtonText_Native>>>()
        .value
        .asFunction<_put_CommitButtonText_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get FileTypeFilter {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<Pointer<NativeFunction<_get_FileTypeFilter_Native>>>()
          .value
          .asFunction<_get_FileTypeFilter_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int PickSingleFileAsync(Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_PickSingleFileAsync_Native>>>()
      .value
      .asFunction<_PickSingleFileAsync_Dart>()(ptr.ref.lpVtbl, result);

  int PickMultipleFilesAsync(Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(16)
      .cast<Pointer<NativeFunction<_PickMultipleFilesAsync_Native>>>()
      .value
      .asFunction<_PickMultipleFilesAsync_Dart>()(ptr.ref.lpVtbl, result);
}

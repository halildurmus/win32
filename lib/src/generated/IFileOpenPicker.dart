// IFileOpenPicker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/winrt/winrt_constants.dart';

import 'package:win32/src/generated/IInspectable.dart';

const IID_IFileOpenPicker = '{2CA8278A-12C5-4C5F-8977-94547793C241}';

typedef get_ViewMode_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_ViewMode_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_ViewMode_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_ViewMode_Dart = int Function(Pointer obj, int value);

typedef get_SettingsIdentifier_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef get_SettingsIdentifier_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef put_SettingsIdentifier_Native = Int32 Function(
    Pointer obj, IntPtr value);
typedef put_SettingsIdentifier_Dart = int Function(Pointer obj, int value);

typedef get_SuggestedStartLocation_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_SuggestedStartLocation_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef put_SuggestedStartLocation_Native = Int32 Function(
    Pointer obj, Int32 value);
typedef put_SuggestedStartLocation_Dart = int Function(Pointer obj, int value);

typedef get_CommitButtonText_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef get_CommitButtonText_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef put_CommitButtonText_Native = Int32 Function(Pointer obj, IntPtr value);
typedef put_CommitButtonText_Dart = int Function(Pointer obj, int value);

typedef get_FileTypeFilter_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef get_FileTypeFilter_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef PickSingleFileAsync_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> operation);
typedef PickSingleFileAsync_Dart = int Function(
    Pointer obj, Pointer<IntPtr> operation);

typedef PickMultipleFilesAsync_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> operation);
typedef PickMultipleFilesAsync_Dart = int Function(
    Pointer obj, Pointer<IntPtr> operation);

class IFileOpenPicker extends IInspectable {
  // vtable begins at 6, ends at 16

  @override
  Pointer<COMObject> ptr;

  IFileOpenPicker(this.ptr) : super(ptr);

  int get ViewMode {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_ViewMode_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(6).value)
        .asFunction<get_ViewMode_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set ViewMode(int value) {
    final hr = Pointer<NativeFunction<put_ViewMode_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<put_ViewMode_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int get SettingsIdentifier {
    final retValuePtr = allocate<IntPtr>();

    final hr =
        Pointer<NativeFunction<get_SettingsIdentifier_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(8).value)
                .asFunction<get_SettingsIdentifier_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set SettingsIdentifier(int value) {
    final hr =
        Pointer<NativeFunction<put_SettingsIdentifier_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(9).value)
            .asFunction<put_SettingsIdentifier_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int get SuggestedStartLocation {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_SuggestedStartLocation_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(10).value)
                .asFunction<get_SuggestedStartLocation_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set SuggestedStartLocation(int value) {
    final hr =
        Pointer<NativeFunction<put_SuggestedStartLocation_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(11).value)
                .asFunction<put_SuggestedStartLocation_Dart>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int get CommitButtonText {
    final retValuePtr = allocate<IntPtr>();

    final hr = Pointer<NativeFunction<get_CommitButtonText_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(12).value)
        .asFunction<get_CommitButtonText_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set CommitButtonText(int value) {
    final hr = Pointer<NativeFunction<put_CommitButtonText_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(13).value)
        .asFunction<put_CommitButtonText_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int get FileTypeFilter {
    final retValuePtr = allocate<IntPtr>();

    final hr = Pointer<NativeFunction<get_FileTypeFilter_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(14).value)
        .asFunction<get_FileTypeFilter_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int PickSingleFileAsync(Pointer<IntPtr> operation) =>
      Pointer<NativeFunction<PickSingleFileAsync_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<PickSingleFileAsync_Dart>()(ptr.ref.lpVtbl, operation);

  int PickMultipleFilesAsync(Pointer<IntPtr> operation) =>
      Pointer<NativeFunction<PickMultipleFilesAsync_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<PickMultipleFilesAsync_Dart>()(ptr.ref.lpVtbl, operation);
}

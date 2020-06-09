// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IInspectable.dart';
import '../combase.dart';
import '../comerrors.dart';
import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const IID_IFileOpenPicker = '{2CA8278A-12C5-4C5F-8977-94547793C241}';

typedef get_ViewMode_Native = Int32 Function(
  Pointer obj,
  Pointer<Windows.Storage.Pickers.PickerViewMode*> value
);
typedef get_ViewMode_Dart = int Function(
  Pointer obj,
  Pointer<Windows.Storage.Pickers.PickerViewMode*> value
);

typedef put_ViewMode_Native = Int32 Function(
  Pointer obj,
  Windows.Storage.Pickers.PickerViewMode value
);
typedef put_ViewMode_Dart = int Function(
  Pointer obj,
  Windows.Storage.Pickers.PickerViewMode value
);

typedef get_SettingsIdentifier_Native = Int32 Function(
  Pointer obj,
  Pointer<HSTRING*> value
);
typedef get_SettingsIdentifier_Dart = int Function(
  Pointer obj,
  Pointer<HSTRING*> value
);

typedef put_SettingsIdentifier_Native = Int32 Function(
  Pointer obj,
  HSTRING value
);
typedef put_SettingsIdentifier_Dart = int Function(
  Pointer obj,
  HSTRING value
);

typedef get_SuggestedStartLocation_Native = Int32 Function(
  Pointer obj,
  Pointer<Windows.Storage.Pickers.PickerLocationId*> value
);
typedef get_SuggestedStartLocation_Dart = int Function(
  Pointer obj,
  Pointer<Windows.Storage.Pickers.PickerLocationId*> value
);

typedef put_SuggestedStartLocation_Native = Int32 Function(
  Pointer obj,
  Windows.Storage.Pickers.PickerLocationId value
);
typedef put_SuggestedStartLocation_Dart = int Function(
  Pointer obj,
  Windows.Storage.Pickers.PickerLocationId value
);

typedef get_CommitButtonText_Native = Int32 Function(
  Pointer obj,
  Pointer<HSTRING*> value
);
typedef get_CommitButtonText_Dart = int Function(
  Pointer obj,
  Pointer<HSTRING*> value
);

typedef put_CommitButtonText_Native = Int32 Function(
  Pointer obj,
  HSTRING value
);
typedef put_CommitButtonText_Dart = int Function(
  Pointer obj,
  HSTRING value
);

typedef get_FileTypeFilter_Native = Int32 Function(
  Pointer obj,
  Pointer<Windows.Foundation.Collections.IVector<HSTRING>**> value
);
typedef get_FileTypeFilter_Dart = int Function(
  Pointer obj,
  Pointer<Windows.Foundation.Collections.IVector<HSTRING>**> value
);

typedef PickSingleFileAsync_Native = Int32 Function(
  Pointer obj,
  Pointer<Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile*>**> operation
);
typedef PickSingleFileAsync_Dart = int Function(
  Pointer obj,
  Pointer<Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile*>**> operation
);

typedef PickMultipleFilesAsync_Native = Int32 Function(
  Pointer obj,
  Pointer<Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile*>*>**> operation
);
typedef PickMultipleFilesAsync_Dart = int Function(
  Pointer obj,
  Pointer<Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile*>*>**> operation
);

class IFileOpenPicker extends IInspectable {
  // vtable begins at 6, ends at 16

  @override
  Pointer<COMObject> ptr;

  IFileOpenPicker(this.ptr): super(ptr);

  int get_ViewMode(Pointer<Windows.Storage.Pickers.PickerViewMode*> value) =>
    Pointer<NativeFunction<get_ViewMode_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(6).value)
            .asFunction<get_ViewMode_Dart>()(
         ptr.ref.lpVtbl, value);

  int put_ViewMode(Windows.Storage.Pickers.PickerViewMode value) =>
    Pointer<NativeFunction<put_ViewMode_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(7).value)
            .asFunction<put_ViewMode_Dart>()(
         ptr.ref.lpVtbl, value);

  int get_SettingsIdentifier(Pointer<HSTRING*> value) =>
    Pointer<NativeFunction<get_SettingsIdentifier_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(8).value)
            .asFunction<get_SettingsIdentifier_Dart>()(
         ptr.ref.lpVtbl, value);

  int put_SettingsIdentifier(HSTRING value) =>
    Pointer<NativeFunction<put_SettingsIdentifier_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(9).value)
            .asFunction<put_SettingsIdentifier_Dart>()(
         ptr.ref.lpVtbl, value);

  int get_SuggestedStartLocation(Pointer<Windows.Storage.Pickers.PickerLocationId*> value) =>
    Pointer<NativeFunction<get_SuggestedStartLocation_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(10).value)
            .asFunction<get_SuggestedStartLocation_Dart>()(
         ptr.ref.lpVtbl, value);

  int put_SuggestedStartLocation(Windows.Storage.Pickers.PickerLocationId value) =>
    Pointer<NativeFunction<put_SuggestedStartLocation_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(11).value)
            .asFunction<put_SuggestedStartLocation_Dart>()(
         ptr.ref.lpVtbl, value);

  int get_CommitButtonText(Pointer<HSTRING*> value) =>
    Pointer<NativeFunction<get_CommitButtonText_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(12).value)
            .asFunction<get_CommitButtonText_Dart>()(
         ptr.ref.lpVtbl, value);

  int put_CommitButtonText(HSTRING value) =>
    Pointer<NativeFunction<put_CommitButtonText_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(13).value)
            .asFunction<put_CommitButtonText_Dart>()(
         ptr.ref.lpVtbl, value);

  int get_FileTypeFilter(Pointer<Windows.Foundation.Collections.IVector<HSTRING>**> value) =>
    Pointer<NativeFunction<get_FileTypeFilter_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(14).value)
            .asFunction<get_FileTypeFilter_Dart>()(
         ptr.ref.lpVtbl, value);

  int PickSingleFileAsync(Pointer<Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile*>**> operation) =>
    Pointer<NativeFunction<PickSingleFileAsync_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(15).value)
            .asFunction<PickSingleFileAsync_Dart>()(
         ptr.ref.lpVtbl, operation);

  int PickMultipleFilesAsync(Pointer<Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile*>*>**> operation) =>
    Pointer<NativeFunction<PickMultipleFilesAsync_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(16).value)
            .asFunction<PickMultipleFilesAsync_Dart>()(
         ptr.ref.lpVtbl, operation);

}



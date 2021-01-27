// IFileOpenDialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../calloc.dart';
import '../constants.dart';
import '../constants_nodoc.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IFileDialog.dart';

/// @nodoc
const CLSID_FileOpenDialog = '{DC1C5A9C-E88A-4dde-A5A1-60F82A20AEF7}';

/// @nodoc
const IID_IFileOpenDialog = '{d57c7288-d4ad-4768-be02-9d969532d960}';

typedef _GetResults_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppenum);
typedef _GetResults_Dart = int Function(Pointer obj, Pointer<IntPtr> ppenum);

typedef _GetSelectedItems_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppsai);
typedef _GetSelectedItems_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppsai);

/// {@category Interface}
/// {@category com}
class IFileOpenDialog extends IFileDialog {
  // vtable begins at 27, ends at 28

  IFileOpenDialog(Pointer<COMObject> ptr) : super(ptr);

  int GetResults(Pointer<IntPtr> ppenum) =>
      Pointer<NativeFunction<_GetResults_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(27).value)
          .asFunction<_GetResults_Dart>()(ptr.ref.lpVtbl, ppenum);

  int GetSelectedItems(Pointer<IntPtr> ppsai) =>
      Pointer<NativeFunction<_GetSelectedItems_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(28).value)
          .asFunction<_GetSelectedItems_Dart>()(ptr.ref.lpVtbl, ppsai);
}

/// {@category com}
class FileOpenDialog extends IFileOpenDialog {
  FileOpenDialog(Pointer<COMObject> ptr) : super(ptr);

  factory FileOpenDialog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FileOpenDialog);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFileOpenDialog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FileOpenDialog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

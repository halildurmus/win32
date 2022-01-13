// IPhotoAcquire.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../media/pictureacquisition/IPhotoAcquireSource.dart';
import '../../media/pictureacquisition/IPhotoAcquireProgressCB.dart';
import '../../system/com/IEnumString.dart';

/// @nodoc
const IID_IPhotoAcquire = '{00F23353-E31B-4955-A8AD-CA5EBF31E2CE}';

/// {@category Interface}
/// {@category com}
class IPhotoAcquire extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPhotoAcquire(Pointer<COMObject> ptr) : super(ptr);

  int CreatePhotoSource(
    Pointer<Utf16> pszDevice,
    Pointer<Pointer<COMObject>> ppPhotoAcquireSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDevice,
            Pointer<Pointer<COMObject>> ppPhotoAcquireSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDevice,
            Pointer<Pointer<COMObject>> ppPhotoAcquireSource,
          )>()(
        ptr.ref.lpVtbl,
        pszDevice,
        ppPhotoAcquireSource,
      );

  int Acquire(
    Pointer<COMObject> pPhotoAcquireSource,
    int fShowProgress,
    int hWndParent,
    Pointer<Utf16> pszApplicationName,
    Pointer<COMObject> pPhotoAcquireProgressCB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
            Int32 fShowProgress,
            IntPtr hWndParent,
            Pointer<Utf16> pszApplicationName,
            Pointer<COMObject> pPhotoAcquireProgressCB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhotoAcquireSource,
            int fShowProgress,
            int hWndParent,
            Pointer<Utf16> pszApplicationName,
            Pointer<COMObject> pPhotoAcquireProgressCB,
          )>()(
        ptr.ref.lpVtbl,
        pPhotoAcquireSource,
        fShowProgress,
        hWndParent,
        pszApplicationName,
        pPhotoAcquireProgressCB,
      );

  int EnumResults(
    Pointer<Pointer<COMObject>> ppEnumFilePaths,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumFilePaths,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumFilePaths,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumFilePaths,
      );
}

/// @nodoc
const CLSID_PhotoAcquire = '{00F26E02-E9F2-4A9F-9FDD-5A962FB26A98}';

/// {@category com}
class PhotoAcquire extends IPhotoAcquire {
  PhotoAcquire(Pointer<COMObject> ptr) : super(ptr);

  factory PhotoAcquire.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PhotoAcquire);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPhotoAcquire);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PhotoAcquire(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

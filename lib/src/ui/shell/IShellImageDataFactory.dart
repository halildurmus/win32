// IShellImageDataFactory.dart

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
import '../../ui/shell/IShellImageData.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IShellImageDataFactory = '{9BE8ED5C-EDAB-4D75-90F3-BD5BDBB21C82}';

/// {@category Interface}
/// {@category com}
class IShellImageDataFactory extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IShellImageDataFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateIShellImageData(
    Pointer<Pointer<COMObject>> ppshimg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppshimg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppshimg,
          )>()(
        ptr.ref.lpVtbl,
        ppshimg,
      );

  int CreateImageFromFile(
    Pointer<Utf16> pszPath,
    Pointer<Pointer<COMObject>> ppshimg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Pointer<COMObject>> ppshimg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Pointer<COMObject>> ppshimg,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ppshimg,
      );

  int CreateImageFromStream(
    Pointer<COMObject> pStream,
    Pointer<Pointer<COMObject>> ppshimg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Pointer<COMObject>> ppshimg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Pointer<COMObject>> ppshimg,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        ppshimg,
      );

  int GetDataFormatFromPath(
    Pointer<Utf16> pszPath,
    Pointer<GUID> pDataFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<GUID> pDataFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<GUID> pDataFormat,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        pDataFormat,
      );
}

/// @nodoc
const CLSID_ShellImageDataFactory = '{66E4E4FB-F385-4DD0-8D74-A2EFD1BC6178}';

/// {@category com}
class ShellImageDataFactory extends IShellImageDataFactory {
  ShellImageDataFactory(Pointer<COMObject> ptr) : super(ptr);

  factory ShellImageDataFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ShellImageDataFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IShellImageDataFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ShellImageDataFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

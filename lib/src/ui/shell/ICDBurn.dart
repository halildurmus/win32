// ICDBurn.dart

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

/// @nodoc
const IID_ICDBurn = '{3D73A659-E5D0-4D42-AFC0-5121BA425C8D}';

/// {@category Interface}
/// {@category com}
class ICDBurn extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ICDBurn(Pointer<COMObject> ptr) : super(ptr);

  int GetRecorderDriveLetter(
    Pointer<Utf16> pszDrive,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDrive,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDrive,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        pszDrive,
        cch,
      );

  int Burn(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );

  int HasRecordableDrive(
    Pointer<Int32> pfHasRecorder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfHasRecorder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfHasRecorder,
          )>()(
        ptr.ref.lpVtbl,
        pfHasRecorder,
      );
}

/// @nodoc
const CLSID_CDBurn = '{FBEB8A05-BEEE-4442-804E-409D6C4515E9}';

/// {@category com}
class CDBurn extends ICDBurn {
  CDBurn(Pointer<COMObject> ptr) : super(ptr);

  factory CDBurn.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_CDBurn);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICDBurn);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return CDBurn(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

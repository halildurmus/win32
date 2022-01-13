// IMFMediaKeySystemAccess.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../media/mediafoundation/IMFMediaKeys2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaKeySystemAccess = '{AEC63FDA-7A97-4944-B35C-6C6DF8085CC3}';

/// {@category Interface}
/// {@category com}
class IMFMediaKeySystemAccess extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFMediaKeySystemAccess(Pointer<COMObject> ptr) : super(ptr);

  int CreateMediaKeys(
    Pointer<COMObject> pCdmCustomConfig,
    Pointer<Pointer<COMObject>> ppKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCdmCustomConfig,
            Pointer<Pointer<COMObject>> ppKeys,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCdmCustomConfig,
            Pointer<Pointer<COMObject>> ppKeys,
          )>()(
        ptr.ref.lpVtbl,
        pCdmCustomConfig,
        ppKeys,
      );

  Pointer<COMObject> get SupportedConfiguration {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSupportedConfiguration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSupportedConfiguration,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get KeySystem {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pKeySystem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pKeySystem,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

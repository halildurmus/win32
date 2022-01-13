// IPMExtensionProtocolInfo.dart

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
const IID_IPMExtensionProtocolInfo = '{1E3FA036-51EB-4453-BAFF-B8D8E4B46C8E}';

/// {@category Interface}
/// {@category com}
class IPMExtensionProtocolInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPMExtensionProtocolInfo(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Protocol {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pProtocol,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_InvocationInfo(
    Pointer<Pointer<Utf16>> pImageUrn,
    Pointer<Pointer<Utf16>> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pImageUrn,
            Pointer<Pointer<Utf16>> pParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pImageUrn,
            Pointer<Pointer<Utf16>> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pImageUrn,
        pParameters,
      );
}

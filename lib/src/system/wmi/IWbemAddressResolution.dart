// IWbemAddressResolution.dart

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
const IID_IWbemAddressResolution = '{F7CE2E12-8C90-11D1-9E7B-00C04FC324A8}';

/// {@category Interface}
/// {@category com}
class IWbemAddressResolution extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemAddressResolution(Pointer<COMObject> ptr) : super(ptr);

  int Resolve(
    Pointer<Utf16> wszNamespacePath,
    Pointer<Utf16> wszAddressType,
    Pointer<Uint32> pdwAddressLength,
    Pointer<Pointer<Uint8>> pabBinaryAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszNamespacePath,
            Pointer<Utf16> wszAddressType,
            Pointer<Uint32> pdwAddressLength,
            Pointer<Pointer<Uint8>> pabBinaryAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszNamespacePath,
            Pointer<Utf16> wszAddressType,
            Pointer<Uint32> pdwAddressLength,
            Pointer<Pointer<Uint8>> pabBinaryAddress,
          )>()(
        ptr.ref.lpVtbl,
        wszNamespacePath,
        wszAddressType,
        pdwAddressLength,
        pabBinaryAddress,
      );
}

// IWTSVirtualChannel.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSVirtualChannel = '{A1230207-D6A7-11D8-B9FD-000BDBD1F198}';

/// {@category Interface}
/// {@category com}
class IWTSVirtualChannel extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWTSVirtualChannel(Pointer<COMObject> ptr) : super(ptr);

  int Write(
    int cbSize,
    Pointer<Uint8> pBuffer,
    Pointer<COMObject> pReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSize,
            Pointer<Uint8> pBuffer,
            Pointer<COMObject> pReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSize,
            Pointer<Uint8> pBuffer,
            Pointer<COMObject> pReserved,
          )>()(
        ptr.ref.lpVtbl,
        cbSize,
        pBuffer,
        pReserved,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

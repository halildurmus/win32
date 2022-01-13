// IMemoryData.dart

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
const IID_IMemoryData = '{327FC560-AF60-11D0-8212-00C04FC32C45}';

/// {@category Interface}
/// {@category com}
class IMemoryData extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMemoryData(Pointer<COMObject> ptr) : super(ptr);

  int SetBuffer(
    int cbSize,
    Pointer<Uint8> pbData,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSize,
            Pointer<Uint8> pbData,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSize,
            Pointer<Uint8> pbData,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        cbSize,
        pbData,
        dwFlags,
      );

  int GetInfo(
    Pointer<Uint32> pdwLength,
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pcbActualData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLength,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbActualData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLength,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbActualData,
          )>()(
        ptr.ref.lpVtbl,
        pdwLength,
        ppbData,
        pcbActualData,
      );

  int SetActual(
    int cbDataValid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbDataValid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbDataValid,
          )>()(
        ptr.ref.lpVtbl,
        cbDataValid,
      );
}

// IMDSPObject2.dart

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

import '../../media/devicemanager/IMDSPObject.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPObject2 = '{3F34CD3E-5907-4341-9AF9-97F4187C3AA5}';

/// {@category Interface}
/// {@category com}
class IMDSPObject2 extends IMDSPObject {
  // vtable begins at 11, is 2 entries long.
  IMDSPObject2(Pointer<COMObject> ptr) : super(ptr);

  int ReadOnClearChannel(
    Pointer<Uint8> pData,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        pdwSize,
      );

  int WriteOnClearChannel(
    Pointer<Uint8> pData,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        pdwSize,
      );
}

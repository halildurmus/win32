// IConfigAsfWriter2.dart

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

import '../../media/directshow/IConfigAsfWriter.dart';
import '../../media/directshow/IPin.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IConfigAsfWriter2 = '{7989CCAA-53F0-44F0-884A-F3B03F6AE066}';

/// {@category Interface}
/// {@category com}
class IConfigAsfWriter2 extends IConfigAsfWriter {
  // vtable begins at 11, is 4 entries long.
  IConfigAsfWriter2(Pointer<COMObject> ptr) : super(ptr);

  int StreamNumFromPin(
    Pointer<COMObject> pPin,
    Pointer<Uint16> pwStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<Uint16> pwStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<Uint16> pwStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
        pwStreamNum,
      );

  int SetParam(
    int dwParam,
    int dwParam1,
    int dwParam2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParam,
            Uint32 dwParam1,
            Uint32 dwParam2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParam,
            int dwParam1,
            int dwParam2,
          )>()(
        ptr.ref.lpVtbl,
        dwParam,
        dwParam1,
        dwParam2,
      );

  int GetParam(
    int dwParam,
    Pointer<Uint32> pdwParam1,
    Pointer<Uint32> pdwParam2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParam,
            Pointer<Uint32> pdwParam1,
            Pointer<Uint32> pdwParam2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParam,
            Pointer<Uint32> pdwParam1,
            Pointer<Uint32> pdwParam2,
          )>()(
        ptr.ref.lpVtbl,
        dwParam,
        pdwParam1,
        pdwParam2,
      );

  int ResetMultiPassState() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

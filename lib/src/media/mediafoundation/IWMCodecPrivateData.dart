// IWMCodecPrivateData.dart

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
import '../../media/dxmediaobjects/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMCodecPrivateData = '{73F0BE8E-57F7-4F01-AA66-9F57340CFE0E}';

/// {@category Interface}
/// {@category com}
class IWMCodecPrivateData extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMCodecPrivateData(Pointer<COMObject> ptr) : super(ptr);

  int SetPartialOutputType(
    Pointer<DMO_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMO_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        pmt,
      );

  int GetPrivateData(
    Pointer<Uint8> pbData,
    Pointer<Uint32> pcbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Pointer<Uint32> pcbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            Pointer<Uint32> pcbData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        pcbData,
      );
}

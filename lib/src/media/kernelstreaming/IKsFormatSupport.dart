// IKsFormatSupport.dart

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
import '../../media/kernelstreaming/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IKsFormatSupport = '{3CB4A69D-BB6F-4D2B-95B7-452D2C155DB5}';

/// {@category Interface}
/// {@category com}
class IKsFormatSupport extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IKsFormatSupport(Pointer<COMObject> ptr) : super(ptr);

  int IsFormatSupported(
    Pointer<KSDATAFORMAT> pKsFormat,
    int cbFormat,
    Pointer<Int32> pbSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<KSDATAFORMAT> pKsFormat,
            Uint32 cbFormat,
            Pointer<Int32> pbSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<KSDATAFORMAT> pKsFormat,
            int cbFormat,
            Pointer<Int32> pbSupported,
          )>()(
        ptr.ref.lpVtbl,
        pKsFormat,
        cbFormat,
        pbSupported,
      );

  int GetDevicePreferredFormat(
    Pointer<Pointer<KSDATAFORMAT>> ppKsFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<KSDATAFORMAT>> ppKsFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<KSDATAFORMAT>> ppKsFormat,
          )>()(
        ptr.ref.lpVtbl,
        ppKsFormat,
      );
}

// IWMReaderTypeNegotiation.dart

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
import '../../media/windowsmediaformat/IWMOutputMediaProps.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMReaderTypeNegotiation = '{FDBE5592-81A1-41EA-93BD-735CAD1ADC05}';

/// {@category Interface}
/// {@category com}
class IWMReaderTypeNegotiation extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMReaderTypeNegotiation(Pointer<COMObject> ptr) : super(ptr);

  int TryOutputProps(
    int dwOutputNum,
    Pointer<COMObject> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<COMObject> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<COMObject> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pOutput,
      );
}

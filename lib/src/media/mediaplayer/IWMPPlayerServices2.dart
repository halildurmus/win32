// IWMPPlayerServices2.dart

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

import '../../media/mediaplayer/IWMPPlayerServices.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPPlayerServices2 = '{1BB1592F-F040-418A-9F71-17C7512B4D70}';

/// {@category Interface}
/// {@category com}
class IWMPPlayerServices2 extends IWMPPlayerServices {
  // vtable begins at 6, is 1 entries long.
  IWMPPlayerServices2(Pointer<COMObject> ptr) : super(ptr);

  int setBackgroundProcessingPriority(
    Pointer<Utf16> bstrPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPriority,
          )>()(
        ptr.ref.lpVtbl,
        bstrPriority,
      );
}

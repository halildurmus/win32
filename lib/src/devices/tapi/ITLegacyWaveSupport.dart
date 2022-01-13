// ITLegacyWaveSupport.dart

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

import '../../system/com/IDispatch.dart';
import '../../devices/tapi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITLegacyWaveSupport = '{207823EA-E252-11D2-B77E-0080C7135381}';

/// {@category Interface}
/// {@category com}
class ITLegacyWaveSupport extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  ITLegacyWaveSupport(Pointer<COMObject> ptr) : super(ptr);

  int IsFullDuplex(
    Pointer<Int32> pSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSupport,
          )>()(
        ptr.ref.lpVtbl,
        pSupport,
      );
}

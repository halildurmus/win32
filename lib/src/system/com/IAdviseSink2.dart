// IAdviseSink2.dart

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

import '../../system/com/IAdviseSink.dart';
import '../../system/com/IMoniker.dart';

/// @nodoc
const IID_IAdviseSink2 = '{00000125-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IAdviseSink2 extends IAdviseSink {
  // vtable begins at 8, is 1 entries long.
  IAdviseSink2(Pointer<COMObject> ptr) : super(ptr);

  void OnLinkSrcChange(
    Pointer<COMObject> pmk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pmk,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pmk,
          )>()(
        ptr.ref.lpVtbl,
        pmk,
      );
}

// AsyncIAdviseSink2.dart

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

import '../../system/com/AsyncIAdviseSink.dart';
import '../../system/com/IMoniker.dart';

/// @nodoc
const IID_AsyncIAdviseSink2 = '{00000151-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class AsyncIAdviseSink2 extends AsyncIAdviseSink {
  // vtable begins at 13, is 2 entries long.
  AsyncIAdviseSink2(Pointer<COMObject> ptr) : super(ptr);

  void Begin_OnLinkSrcChange(
    Pointer<COMObject> pmk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  void Finish_OnLinkSrcChange() => ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

// ITfCompartmentEventSink.dart

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
const IID_ITfCompartmentEventSink = '{743ABD5F-F26D-48DF-8CC5-238492419B64}';

/// {@category Interface}
/// {@category com}
class ITfCompartmentEventSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfCompartmentEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnChange(
    Pointer<GUID> rguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
      );
}

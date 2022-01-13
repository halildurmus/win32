// IInternetProtocolSinkStackable.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/urlmon/IInternetProtocolSink.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetProtocolSinkStackable =
    '{79EAC9F0-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetProtocolSinkStackable extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IInternetProtocolSinkStackable(Pointer<COMObject> ptr) : super(ptr);

  int SwitchSink(
    Pointer<COMObject> pOIProtSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOIProtSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOIProtSink,
          )>()(
        ptr.ref.lpVtbl,
        pOIProtSink,
      );

  int CommitSwitch() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int RollbackSwitch() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

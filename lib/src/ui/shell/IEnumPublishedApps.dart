// IEnumPublishedApps.dart

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
import '../../ui/shell/IPublishedApp.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEnumPublishedApps = '{0B124F8C-91F0-11D1-B8B5-006008059382}';

/// {@category Interface}
/// {@category com}
class IEnumPublishedApps extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEnumPublishedApps(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    Pointer<Pointer<COMObject>> pia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pia,
          )>()(
        ptr.ref.lpVtbl,
        pia,
      );

  int Reset() => ptr.ref.lpVtbl.value
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
}

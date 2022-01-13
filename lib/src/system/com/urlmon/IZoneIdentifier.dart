// IZoneIdentifier.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IZoneIdentifier = '{CD45F185-1B21-48E2-967B-EAD743A8914E}';

/// {@category Interface}
/// {@category com}
class IZoneIdentifier extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IZoneIdentifier(Pointer<COMObject> ptr) : super(ptr);

  int GetId(
    Pointer<Uint32> pdwZone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwZone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwZone,
          )>()(
        ptr.ref.lpVtbl,
        pdwZone,
      );

  int SetId(
    int dwZone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
      );

  int Remove() => ptr.ref.lpVtbl.value
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

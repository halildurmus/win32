// IDebugHostPublic.dart

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

import '../../../system/diagnostics/debug/IDebugHostSymbol.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostPublic = '{6C597AC9-FB4D-4F6D-9F39-22488539F8F4}';

/// {@category Interface}
/// {@category com}
class IDebugHostPublic extends IDebugHostSymbol {
  // vtable begins at 10, is 2 entries long.
  IDebugHostPublic(Pointer<COMObject> ptr) : super(ptr);

  int GetLocationKind(
    Pointer<Int32> locationKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> locationKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> locationKind,
          )>()(
        ptr.ref.lpVtbl,
        locationKind,
      );

  int GetLocation(
    Pointer<Location> location,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Location> location,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Location> location,
          )>()(
        ptr.ref.lpVtbl,
        location,
      );
}

// IDebugHostField.dart

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
import '../../../specialTypes.dart';

/// @nodoc
const IID_IDebugHostField = '{E06F6495-16BC-4CC9-B11D-2A6B23FA72F3}';

/// {@category Interface}
/// {@category com}
class IDebugHostField extends IDebugHostSymbol {
  // vtable begins at 10, is 4 entries long.
  IDebugHostField(Pointer<COMObject> ptr) : super(ptr);

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

  int GetOffset(
    Pointer<Uint64> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  int GetLocation(
    Pointer<Location> location,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetValue(
    Pointer<VARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}

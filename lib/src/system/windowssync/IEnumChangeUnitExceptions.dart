// IEnumChangeUnitExceptions.dart

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
import '../../system/windowssync/IChangeUnitException.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IEnumChangeUnitExceptions.dart';

/// @nodoc
const IID_IEnumChangeUnitExceptions = '{3074E802-9319-4420-BE21-1022E2E21DA8}';

/// {@category Interface}
/// {@category com}
class IEnumChangeUnitExceptions extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumChangeUnitExceptions(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cExceptions,
    Pointer<Pointer<COMObject>> ppChangeUnitException,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cExceptions,
            Pointer<Pointer<COMObject>> ppChangeUnitException,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cExceptions,
            Pointer<Pointer<COMObject>> ppChangeUnitException,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cExceptions,
        ppChangeUnitException,
        pcFetched,
      );

  int Skip(
    int cExceptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cExceptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cExceptions,
          )>()(
        ptr.ref.lpVtbl,
        cExceptions,
      );

  int Reset() => ptr.ref.lpVtbl.value
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

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}

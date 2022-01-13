// IEnumRangeExceptions.dart

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
import '../../system/windowssync/IRangeException.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IEnumRangeExceptions.dart';

/// @nodoc
const IID_IEnumRangeExceptions = '{0944439F-DDB1-4176-B703-046FF22A2386}';

/// {@category Interface}
/// {@category com}
class IEnumRangeExceptions extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumRangeExceptions(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cExceptions,
    Pointer<Pointer<COMObject>> ppRangeException,
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
            Pointer<Pointer<COMObject>> ppRangeException,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cExceptions,
            Pointer<Pointer<COMObject>> ppRangeException,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cExceptions,
        ppRangeException,
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

// IXblIdpAuthTokenResult2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';

/// @nodoc
const IID_IXblIdpAuthTokenResult2 = '{75D760B0-60B9-412D-994F-26B2CD5F7812}';

/// {@category Interface}
/// {@category com}
class IXblIdpAuthTokenResult2 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IXblIdpAuthTokenResult2(Pointer<COMObject> ptr) : super(ptr);

  int GetModernGamertag(
    Pointer<Pointer<Utf16>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetModernGamertagSuffix(
    Pointer<Pointer<Utf16>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetUniqueModernGamertag(
    Pointer<Pointer<Utf16>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}

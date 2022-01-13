// IAzAuthorizationStore2.dart

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

import '../../security/authorization/IAzAuthorizationStore.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../security/authorization/IAzApplication2.dart';

/// @nodoc
const IID_IAzAuthorizationStore2 = '{B11E5584-D577-4273-B6C5-0973E0F8E80D}';

/// {@category Interface}
/// {@category com}
class IAzAuthorizationStore2 extends IAzAuthorizationStore {
  // vtable begins at 58, is 2 entries long.
  IAzAuthorizationStore2(Pointer<COMObject> ptr) : super(ptr);

  int OpenApplication2(
    Pointer<Utf16> bstrApplicationName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppApplication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppApplication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppApplication,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationName,
        varReserved,
        ppApplication,
      );

  int CreateApplication2(
    Pointer<Utf16> bstrApplicationName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppApplication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppApplication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppApplication,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationName,
        varReserved,
        ppApplication,
      );
}

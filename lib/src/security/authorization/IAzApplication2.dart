// IAzApplication2.dart

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

import '../../security/authorization/IAzApplication.dart';
import '../../specialTypes.dart';
import '../../security/authorization/IAzClientContext2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAzApplication2 = '{086A68AF-A249-437C-B18D-D4D86D6A9660}';

/// {@category Interface}
/// {@category com}
class IAzApplication2 extends IAzApplication {
  // vtable begins at 68, is 2 entries long.
  IAzApplication2(Pointer<COMObject> ptr) : super(ptr);

  int InitializeClientContextFromToken2(
    int ulTokenHandleLowPart,
    int ulTokenHandleHighPart,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppClientContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTokenHandleLowPart,
            Uint32 ulTokenHandleHighPart,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTokenHandleLowPart,
            int ulTokenHandleHighPart,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>()(
        ptr.ref.lpVtbl,
        ulTokenHandleLowPart,
        ulTokenHandleHighPart,
        varReserved,
        ppClientContext,
      );

  int InitializeClientContext2(
    Pointer<Utf16> IdentifyingString,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppClientContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> IdentifyingString,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> IdentifyingString,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>()(
        ptr.ref.lpVtbl,
        IdentifyingString,
        varReserved,
        ppClientContext,
      );
}

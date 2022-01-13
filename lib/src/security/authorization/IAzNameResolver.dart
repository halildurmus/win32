// IAzNameResolver.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IAzNameResolver = '{504D0F15-73E2-43DF-A870-A64F40714F53}';

/// {@category Interface}
/// {@category com}
class IAzNameResolver extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IAzNameResolver(Pointer<COMObject> ptr) : super(ptr);

  int NameFromSid(
    Pointer<Utf16> bstrSid,
    Pointer<Int32> pSidType,
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSid,
            Pointer<Int32> pSidType,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSid,
            Pointer<Int32> pSidType,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrSid,
        pSidType,
        pbstrName,
      );

  int NamesFromSids(
    VARIANT vSids,
    Pointer<VARIANT> pvSidTypes,
    Pointer<VARIANT> pvNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vSids,
            Pointer<VARIANT> pvSidTypes,
            Pointer<VARIANT> pvNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vSids,
            Pointer<VARIANT> pvSidTypes,
            Pointer<VARIANT> pvNames,
          )>()(
        ptr.ref.lpVtbl,
        vSids,
        pvSidTypes,
        pvNames,
      );
}

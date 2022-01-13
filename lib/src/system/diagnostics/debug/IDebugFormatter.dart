// IDebugFormatter.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/structs.g.dart';

/// @nodoc
const IID_IDebugFormatter = '{51973C05-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugFormatter extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDebugFormatter(Pointer<COMObject> ptr) : super(ptr);

  int GetStringForVariant(
    Pointer<VARIANT> pvar,
    int nRadix,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvar,
            Uint32 nRadix,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvar,
            int nRadix,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        pvar,
        nRadix,
        pbstrValue,
      );

  int GetVariantForString(
    Pointer<Utf16> pwstrValue,
    Pointer<VARIANT> pvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwstrValue,
            Pointer<VARIANT> pvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwstrValue,
            Pointer<VARIANT> pvar,
          )>()(
        ptr.ref.lpVtbl,
        pwstrValue,
        pvar,
      );

  int GetStringForVarType(
    int vt,
    Pointer<TYPEDESC> ptdescArrayType,
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 vt,
            Pointer<TYPEDESC> ptdescArrayType,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vt,
            Pointer<TYPEDESC> ptdescArrayType,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        vt,
        ptdescArrayType,
        pbstr,
      );
}

// IMFSAMIStyle.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFSAMIStyle = '{A7E025DD-5303-4A62-89D6-E747E1EFAC73}';

/// {@category Interface}
/// {@category com}
class IMFSAMIStyle extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFSAMIStyle(Pointer<COMObject> ptr) : super(ptr);

  int GetStyleCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int GetStyles(
    Pointer<PROPVARIANT> pPropVarStyleArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> pPropVarStyleArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> pPropVarStyleArray,
          )>()(
        ptr.ref.lpVtbl,
        pPropVarStyleArray,
      );

  int SetSelectedStyle(
    Pointer<Utf16> pwszStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszStyle,
          )>()(
        ptr.ref.lpVtbl,
        pwszStyle,
      );

  int GetSelectedStyle(
    Pointer<Pointer<Utf16>> ppwszStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszStyle,
          )>()(
        ptr.ref.lpVtbl,
        ppwszStyle,
      );
}

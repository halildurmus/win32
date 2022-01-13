// IItemNameLimits.dart

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

/// @nodoc
const IID_IItemNameLimits = '{1DF0D7F1-B267-4D28-8B10-12E23202A5C4}';

/// {@category Interface}
/// {@category com}
class IItemNameLimits extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IItemNameLimits(Pointer<COMObject> ptr) : super(ptr);

  int GetValidCharacters(
    Pointer<Pointer<Utf16>> ppwszValidChars,
    Pointer<Pointer<Utf16>> ppwszInvalidChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszValidChars,
            Pointer<Pointer<Utf16>> ppwszInvalidChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszValidChars,
            Pointer<Pointer<Utf16>> ppwszInvalidChars,
          )>()(
        ptr.ref.lpVtbl,
        ppwszValidChars,
        ppwszInvalidChars,
      );

  int GetMaxLength(
    Pointer<Utf16> pszName,
    Pointer<Int32> piMaxNameLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Int32> piMaxNameLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Int32> piMaxNameLen,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        piMaxNameLen,
      );
}

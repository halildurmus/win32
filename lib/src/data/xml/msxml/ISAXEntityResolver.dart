// ISAXEntityResolver.dart

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
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ISAXEntityResolver = '{99BCA7BD-E8C4-4D5F-A0CF-6D907901FF07}';

/// {@category Interface}
/// {@category com}
class ISAXEntityResolver extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISAXEntityResolver(Pointer<COMObject> ptr) : super(ptr);

  int resolveEntity(
    Pointer<Utf16> pwchPublicId,
    Pointer<Utf16> pwchSystemId,
    Pointer<VARIANT> pvarInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchPublicId,
            Pointer<Utf16> pwchSystemId,
            Pointer<VARIANT> pvarInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchPublicId,
            Pointer<Utf16> pwchSystemId,
            Pointer<VARIANT> pvarInput,
          )>()(
        ptr.ref.lpVtbl,
        pwchPublicId,
        pwchSystemId,
        pvarInput,
      );
}

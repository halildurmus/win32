// IVBSAXEntityResolver.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IVBSAXEntityResolver = '{0C05D096-F45B-4ACA-AD1A-AA0BC25518DC}';

/// {@category Interface}
/// {@category com}
class IVBSAXEntityResolver extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IVBSAXEntityResolver(Pointer<COMObject> ptr) : super(ptr);

  int resolveEntity(
    Pointer<Pointer<Utf16>> strPublicId,
    Pointer<Pointer<Utf16>> strSystemId,
    Pointer<VARIANT> varInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strPublicId,
            Pointer<Pointer<Utf16>> strSystemId,
            Pointer<VARIANT> varInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strPublicId,
            Pointer<Pointer<Utf16>> strSystemId,
            Pointer<VARIANT> varInput,
          )>()(
        ptr.ref.lpVtbl,
        strPublicId,
        strSystemId,
        varInput,
      );
}

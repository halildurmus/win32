// INetDiagExtensibleHelper.dart

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
import '../../networkmanagement/networkdiagnosticsframework/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetDiagExtensibleHelper = '{C0B35748-EBF5-11D8-BBE9-505054503030}';

/// {@category Interface}
/// {@category com}
class INetDiagExtensibleHelper extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INetDiagExtensibleHelper(Pointer<COMObject> ptr) : super(ptr);

  int ResolveAttributes(
    int celt,
    Pointer<HELPER_ATTRIBUTE> rgKeyAttributes,
    Pointer<Uint32> pcelt,
    Pointer<Pointer<HELPER_ATTRIBUTE>> prgMatchValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<HELPER_ATTRIBUTE> rgKeyAttributes,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HELPER_ATTRIBUTE>> prgMatchValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<HELPER_ATTRIBUTE> rgKeyAttributes,
            Pointer<Uint32> pcelt,
            Pointer<Pointer<HELPER_ATTRIBUTE>> prgMatchValues,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        rgKeyAttributes,
        pcelt,
        prgMatchValues,
      );
}

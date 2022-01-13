// IBinaryConverter2.dart

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

import '../../../security/cryptography/certificates/IBinaryConverter.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IBinaryConverter2 = '{8D7928B4-4E17-428D-9A17-728DF00D1B2B}';

/// {@category Interface}
/// {@category com}
class IBinaryConverter2 extends IBinaryConverter {
  // vtable begins at 10, is 2 entries long.
  IBinaryConverter2(Pointer<COMObject> ptr) : super(ptr);

  int StringArrayToVariantArray(
    Pointer<VARIANT> pvarStringArray,
    Pointer<VARIANT> pvarVariantArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarStringArray,
            Pointer<VARIANT> pvarVariantArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarStringArray,
            Pointer<VARIANT> pvarVariantArray,
          )>()(
        ptr.ref.lpVtbl,
        pvarStringArray,
        pvarVariantArray,
      );

  int VariantArrayToStringArray(
    Pointer<VARIANT> pvarVariantArray,
    Pointer<VARIANT> pvarStringArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarVariantArray,
            Pointer<VARIANT> pvarStringArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarVariantArray,
            Pointer<VARIANT> pvarStringArray,
          )>()(
        ptr.ref.lpVtbl,
        pvarVariantArray,
        pvarStringArray,
      );
}

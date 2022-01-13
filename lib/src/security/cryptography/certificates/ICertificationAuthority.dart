// ICertificationAuthority.dart

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
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertificationAuthority = '{835D1F61-1E95-4BC8-B4D3-976C42B968F7}';

/// {@category Interface}
/// {@category com}
class ICertificationAuthority extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  ICertificationAuthority(Pointer<COMObject> ptr) : super(ptr);

  int get_Property(
    int property,
    Pointer<VARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 property,
            Pointer<VARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int property,
            Pointer<VARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        property,
        pValue,
      );
}

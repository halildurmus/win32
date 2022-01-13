// IBindHttpSecurity.dart

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

/// @nodoc
const IID_IBindHttpSecurity = '{A9EDA967-F50E-4A33-B358-206F6EF3086D}';

/// {@category Interface}
/// {@category com}
class IBindHttpSecurity extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBindHttpSecurity(Pointer<COMObject> ptr) : super(ptr);

  int GetIgnoreCertMask(
    Pointer<Uint32> pdwIgnoreCertMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwIgnoreCertMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwIgnoreCertMask,
          )>()(
        ptr.ref.lpVtbl,
        pdwIgnoreCertMask,
      );
}

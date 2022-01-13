// ISecurityInformation4.dart

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
import '../../../security/authorization/ui/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISecurityInformation4 = '{EA961070-CD14-4621-ACE4-F63C03E583E4}';

/// {@category Interface}
/// {@category com}
class ISecurityInformation4 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISecurityInformation4(Pointer<COMObject> ptr) : super(ptr);

  int GetSecondarySecurity(
    Pointer<Pointer<SECURITY_OBJECT>> pSecurityObjects,
    Pointer<Uint32> pSecurityObjectCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SECURITY_OBJECT>> pSecurityObjects,
            Pointer<Uint32> pSecurityObjectCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SECURITY_OBJECT>> pSecurityObjects,
            Pointer<Uint32> pSecurityObjectCount,
          )>()(
        ptr.ref.lpVtbl,
        pSecurityObjects,
        pSecurityObjectCount,
      );
}

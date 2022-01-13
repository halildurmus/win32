// IRawElementProviderHostingAccessibles.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRawElementProviderHostingAccessibles =
    '{24BE0B07-D37D-487A-98CF-A13ED465E9B3}';

/// {@category Interface}
/// {@category com}
class IRawElementProviderHostingAccessibles extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRawElementProviderHostingAccessibles(Pointer<COMObject> ptr) : super(ptr);

  int GetEmbeddedAccessibles(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );
}

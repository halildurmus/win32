// IFunctionDiscoveryServiceProvider.dart

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
import '../../devices/functiondiscovery/IFunctionInstance.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFunctionDiscoveryServiceProvider =
    '{4C81ED02-1B04-43F2-A451-69966CBCD1C2}';

/// {@category Interface}
/// {@category com}
class IFunctionDiscoveryServiceProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IFunctionDiscoveryServiceProvider(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pIFunctionInstance,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        riid,
        ppv,
      );
}

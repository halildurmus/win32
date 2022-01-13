// IFunctionDiscoveryNotification.dart

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
import '../../devices/functiondiscovery/structs.g.dart';
import '../../devices/functiondiscovery/IFunctionInstance.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFunctionDiscoveryNotification =
    '{5F6C1BA8-5330-422E-A368-572B244D3F87}';

/// {@category Interface}
/// {@category com}
class IFunctionDiscoveryNotification extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IFunctionDiscoveryNotification(Pointer<COMObject> ptr) : super(ptr);

  int OnUpdate(
    int enumQueryUpdateAction,
    int fdqcQueryContext,
    Pointer<COMObject> pIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumQueryUpdateAction,
            Uint64 fdqcQueryContext,
            Pointer<COMObject> pIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumQueryUpdateAction,
            int fdqcQueryContext,
            Pointer<COMObject> pIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        enumQueryUpdateAction,
        fdqcQueryContext,
        pIFunctionInstance,
      );

  int OnError(
    int hr,
    int fdqcQueryContext,
    Pointer<Utf16> pszProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
            Uint64 fdqcQueryContext,
            Pointer<Utf16> pszProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
            int fdqcQueryContext,
            Pointer<Utf16> pszProvider,
          )>()(
        ptr.ref.lpVtbl,
        hr,
        fdqcQueryContext,
        pszProvider,
      );

  int OnEvent(
    int dwEventID,
    int fdqcQueryContext,
    Pointer<Utf16> pszProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEventID,
            Uint64 fdqcQueryContext,
            Pointer<Utf16> pszProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEventID,
            int fdqcQueryContext,
            Pointer<Utf16> pszProvider,
          )>()(
        ptr.ref.lpVtbl,
        dwEventID,
        fdqcQueryContext,
        pszProvider,
      );
}

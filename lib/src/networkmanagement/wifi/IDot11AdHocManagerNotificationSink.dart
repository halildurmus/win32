// IDot11AdHocManagerNotificationSink.dart

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
import '../../networkmanagement/wifi/IDot11AdHocNetwork.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/wifi/IDot11AdHocInterface.dart';

/// @nodoc
const IID_IDot11AdHocManagerNotificationSink =
    '{8F10CC27-CF0D-42A0-ACBE-E2DE7007384D}';

/// {@category Interface}
/// {@category com}
class IDot11AdHocManagerNotificationSink extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDot11AdHocManagerNotificationSink(Pointer<COMObject> ptr) : super(ptr);

  int OnNetworkAdd(
    Pointer<COMObject> pIAdHocNetwork,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIAdHocNetwork,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIAdHocNetwork,
          )>()(
        ptr.ref.lpVtbl,
        pIAdHocNetwork,
      );

  int OnNetworkRemove(
    Pointer<GUID> Signature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Signature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Signature,
          )>()(
        ptr.ref.lpVtbl,
        Signature,
      );

  int OnInterfaceAdd(
    Pointer<COMObject> pIAdHocInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIAdHocInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIAdHocInterface,
          )>()(
        ptr.ref.lpVtbl,
        pIAdHocInterface,
      );

  int OnInterfaceRemove(
    Pointer<GUID> Signature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Signature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Signature,
          )>()(
        ptr.ref.lpVtbl,
        Signature,
      );
}

// IDisplayDeviceInterop.dart

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
import '../../../system/winrt/IInspectable.dart';
import '../../../security/structs.g.dart';
import '../../../system/winrt/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDisplayDeviceInterop = '{64338358-366A-471B-BD56-DD8EF48E439B}';

/// {@category Interface}
/// {@category com}
class IDisplayDeviceInterop extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDisplayDeviceInterop(Pointer<COMObject> ptr) : super(ptr);

  int CreateSharedHandle(
    Pointer<COMObject> pObject,
    Pointer<SECURITY_ATTRIBUTES> pSecurityAttributes,
    int Access,
    int Name,
    Pointer<IntPtr> pHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObject,
            Pointer<SECURITY_ATTRIBUTES> pSecurityAttributes,
            Uint32 Access,
            IntPtr Name,
            Pointer<IntPtr> pHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObject,
            Pointer<SECURITY_ATTRIBUTES> pSecurityAttributes,
            int Access,
            int Name,
            Pointer<IntPtr> pHandle,
          )>()(
        ptr.ref.lpVtbl,
        pObject,
        pSecurityAttributes,
        Access,
        Name,
        pHandle,
      );

  int OpenSharedHandle(
    int NTHandle,
    GUID riid,
    Pointer<Pointer> ppvObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr NTHandle,
            GUID riid,
            Pointer<Pointer> ppvObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NTHandle,
            GUID riid,
            Pointer<Pointer> ppvObj,
          )>()(
        ptr.ref.lpVtbl,
        NTHandle,
        riid,
        ppvObj,
      );
}

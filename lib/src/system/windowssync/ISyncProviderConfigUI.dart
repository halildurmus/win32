// ISyncProviderConfigUI.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/windowssync/ISyncProviderInfo.dart';

/// @nodoc
const IID_ISyncProviderConfigUI = '{7B0705F6-CBCD-4071-AB05-3BDC364D4A0C}';

/// {@category Interface}
/// {@category com}
class ISyncProviderConfigUI extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISyncProviderConfigUI(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<GUID> pguidInstanceId,
    Pointer<GUID> pguidContentType,
    Pointer<COMObject> pConfigurationProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<GUID> pguidContentType,
            Pointer<COMObject> pConfigurationProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidInstanceId,
            Pointer<GUID> pguidContentType,
            Pointer<COMObject> pConfigurationProperties,
          )>()(
        ptr.ref.lpVtbl,
        pguidInstanceId,
        pguidContentType,
        pConfigurationProperties,
      );

  int GetRegisteredProperties(
    Pointer<Pointer<COMObject>> ppConfigUIProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConfigUIProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConfigUIProperties,
          )>()(
        ptr.ref.lpVtbl,
        ppConfigUIProperties,
      );

  int CreateAndRegisterNewSyncProvider(
    int hwndParent,
    Pointer<COMObject> pUnkContext,
    Pointer<Pointer<COMObject>> ppProviderInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<COMObject> pUnkContext,
            Pointer<Pointer<COMObject>> ppProviderInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<COMObject> pUnkContext,
            Pointer<Pointer<COMObject>> ppProviderInfo,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        pUnkContext,
        ppProviderInfo,
      );

  int ModifySyncProvider(
    int hwndParent,
    Pointer<COMObject> pUnkContext,
    Pointer<COMObject> pProviderInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<COMObject> pUnkContext,
            Pointer<COMObject> pProviderInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<COMObject> pUnkContext,
            Pointer<COMObject> pProviderInfo,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        pUnkContext,
        pProviderInfo,
      );
}

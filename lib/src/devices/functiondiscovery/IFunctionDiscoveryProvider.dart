// IFunctionDiscoveryProvider.dart

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
import '../../devices/functiondiscovery/IFunctionDiscoveryProviderFactory.dart';
import '../../devices/functiondiscovery/IFunctionDiscoveryNotification.dart';
import '../../foundation/structs.g.dart';
import '../../devices/functiondiscovery/IFunctionDiscoveryProviderQuery.dart';
import '../../devices/functiondiscovery/IFunctionInstanceCollection.dart';
import '../../devices/functiondiscovery/IFunctionInstance.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IFunctionDiscoveryProvider = '{DCDE394F-1478-4813-A402-F6FB10657222}';

/// {@category Interface}
/// {@category com}
class IFunctionDiscoveryProvider extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IFunctionDiscoveryProvider(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pIFunctionDiscoveryProviderFactory,
    Pointer<COMObject> pIFunctionDiscoveryNotification,
    int lcidUserDefault,
    Pointer<Uint32> pdwStgAccessCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionDiscoveryProviderFactory,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
            Uint32 lcidUserDefault,
            Pointer<Uint32> pdwStgAccessCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionDiscoveryProviderFactory,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
            int lcidUserDefault,
            Pointer<Uint32> pdwStgAccessCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionDiscoveryProviderFactory,
        pIFunctionDiscoveryNotification,
        lcidUserDefault,
        pdwStgAccessCapabilities,
      );

  int Query(
    Pointer<COMObject> pIFunctionDiscoveryProviderQuery,
    Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionDiscoveryProviderQuery,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionDiscoveryProviderQuery,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionDiscoveryProviderQuery,
        ppIFunctionInstanceCollection,
      );

  int EndQuery() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int InstancePropertyStoreValidateAccess(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
    int dwStgAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            IntPtr iProviderInstanceContext,
            Uint32 dwStgAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
            int dwStgAccess,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
        dwStgAccess,
      );

  int InstancePropertyStoreOpen(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
    int dwStgAccess,
    Pointer<Pointer<COMObject>> ppIPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            IntPtr iProviderInstanceContext,
            Uint32 dwStgAccess,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
            int dwStgAccess,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
        dwStgAccess,
        ppIPropertyStore,
      );

  int InstancePropertyStoreFlush(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            IntPtr iProviderInstanceContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
      );

  int InstanceQueryService(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
    Pointer<GUID> guidService,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppIUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            IntPtr iProviderInstanceContext,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppIUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppIUnknown,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
        guidService,
        riid,
        ppIUnknown,
      );

  int InstanceReleased(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            IntPtr iProviderInstanceContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
      );
}

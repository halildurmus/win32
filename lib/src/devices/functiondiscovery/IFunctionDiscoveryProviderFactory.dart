// IFunctionDiscoveryProviderFactory.dart

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
import '../../devices/functiondiscovery/IFunctionDiscoveryProvider.dart';
import '../../devices/functiondiscovery/IFunctionInstance.dart';
import '../../devices/functiondiscovery/IFunctionInstanceCollection.dart';

/// @nodoc
const IID_IFunctionDiscoveryProviderFactory =
    '{86443FF0-1AD5-4E68-A45A-40C2C329DE3B}';

/// {@category Interface}
/// {@category com}
class IFunctionDiscoveryProviderFactory extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IFunctionDiscoveryProviderFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreatePropertyStore(
    Pointer<Pointer<COMObject>> ppIPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        ppIPropertyStore,
      );

  int CreateInstance(
    Pointer<Utf16> pszSubCategory,
    Pointer<Utf16> pszProviderInstanceIdentity,
    int iProviderInstanceContext,
    Pointer<COMObject> pIPropertyStore,
    Pointer<COMObject> pIFunctionDiscoveryProvider,
    Pointer<Pointer<COMObject>> ppIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszProviderInstanceIdentity,
            IntPtr iProviderInstanceContext,
            Pointer<COMObject> pIPropertyStore,
            Pointer<COMObject> pIFunctionDiscoveryProvider,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszProviderInstanceIdentity,
            int iProviderInstanceContext,
            Pointer<COMObject> pIPropertyStore,
            Pointer<COMObject> pIFunctionDiscoveryProvider,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        pszSubCategory,
        pszProviderInstanceIdentity,
        iProviderInstanceContext,
        pIPropertyStore,
        pIFunctionDiscoveryProvider,
        ppIFunctionInstance,
      );

  int CreateFunctionInstanceCollection(
    Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
          )>()(
        ptr.ref.lpVtbl,
        ppIFunctionInstanceCollection,
      );
}

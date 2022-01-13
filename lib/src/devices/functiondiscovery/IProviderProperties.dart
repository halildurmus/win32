// IProviderProperties.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IProviderProperties = '{CF986EA6-3B5F-4C5F-B88A-2F8B20CEEF17}';

/// {@category Interface}
/// {@category com}
class IProviderProperties extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IProviderProperties(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            IntPtr iProviderInstanceContext,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
        pdwCount,
      );

  int GetAt(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
    int dwIndex,
    Pointer<PROPERTYKEY> pKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            IntPtr iProviderInstanceContext,
            Uint32 dwIndex,
            Pointer<PROPERTYKEY> pKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
            int dwIndex,
            Pointer<PROPERTYKEY> pKey,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
        dwIndex,
        pKey,
      );

  int GetValue(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
    Pointer<PROPERTYKEY> Key,
    Pointer<PROPVARIANT> ppropVar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            IntPtr iProviderInstanceContext,
            Pointer<PROPERTYKEY> Key,
            Pointer<PROPVARIANT> ppropVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
            Pointer<PROPERTYKEY> Key,
            Pointer<PROPVARIANT> ppropVar,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
        Key,
        ppropVar,
      );

  int SetValue(
    Pointer<COMObject> pIFunctionInstance,
    int iProviderInstanceContext,
    Pointer<PROPERTYKEY> Key,
    Pointer<PROPVARIANT> ppropVar,
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
            Pointer<PROPERTYKEY> Key,
            Pointer<PROPVARIANT> ppropVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
            int iProviderInstanceContext,
            Pointer<PROPERTYKEY> Key,
            Pointer<PROPVARIANT> ppropVar,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
        iProviderInstanceContext,
        Key,
        ppropVar,
      );
}

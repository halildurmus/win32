// IFunctionDiscovery.dart

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
import '../../foundation/structs.g.dart';
import '../../devices/functiondiscovery/IFunctionInstanceCollection.dart';
import '../../devices/functiondiscovery/IFunctionInstance.dart';
import '../../devices/functiondiscovery/IFunctionDiscoveryNotification.dart';
import '../../devices/functiondiscovery/IFunctionInstanceCollectionQuery.dart';
import '../../devices/functiondiscovery/IFunctionInstanceQuery.dart';
import '../../devices/functiondiscovery/structs.g.dart';

/// @nodoc
const IID_IFunctionDiscovery = '{4DF99B70-E148-4432-B004-4C9EEB535A5E}';

/// {@category Interface}
/// {@category com}
class IFunctionDiscovery extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IFunctionDiscovery(Pointer<COMObject> ptr) : super(ptr);

  int GetInstanceCollection(
    Pointer<Utf16> pszCategory,
    Pointer<Utf16> pszSubCategory,
    int fIncludeAllSubCategories,
    Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCategory,
            Pointer<Utf16> pszSubCategory,
            Int32 fIncludeAllSubCategories,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCategory,
            Pointer<Utf16> pszSubCategory,
            int fIncludeAllSubCategories,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollection,
          )>()(
        ptr.ref.lpVtbl,
        pszCategory,
        pszSubCategory,
        fIncludeAllSubCategories,
        ppIFunctionInstanceCollection,
      );

  int GetInstance(
    Pointer<Utf16> pszFunctionInstanceIdentity,
    Pointer<Pointer<COMObject>> ppIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFunctionInstanceIdentity,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFunctionInstanceIdentity,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        pszFunctionInstanceIdentity,
        ppIFunctionInstance,
      );

  int CreateInstanceCollectionQuery(
    Pointer<Utf16> pszCategory,
    Pointer<Utf16> pszSubCategory,
    int fIncludeAllSubCategories,
    Pointer<COMObject> pIFunctionDiscoveryNotification,
    Pointer<Uint64> pfdqcQueryContext,
    Pointer<Pointer<COMObject>> ppIFunctionInstanceCollectionQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCategory,
            Pointer<Utf16> pszSubCategory,
            Int32 fIncludeAllSubCategories,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
            Pointer<Uint64> pfdqcQueryContext,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollectionQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCategory,
            Pointer<Utf16> pszSubCategory,
            int fIncludeAllSubCategories,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
            Pointer<Uint64> pfdqcQueryContext,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceCollectionQuery,
          )>()(
        ptr.ref.lpVtbl,
        pszCategory,
        pszSubCategory,
        fIncludeAllSubCategories,
        pIFunctionDiscoveryNotification,
        pfdqcQueryContext,
        ppIFunctionInstanceCollectionQuery,
      );

  int CreateInstanceQuery(
    Pointer<Utf16> pszFunctionInstanceIdentity,
    Pointer<COMObject> pIFunctionDiscoveryNotification,
    Pointer<Uint64> pfdqcQueryContext,
    Pointer<Pointer<COMObject>> ppIFunctionInstanceQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFunctionInstanceIdentity,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
            Pointer<Uint64> pfdqcQueryContext,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFunctionInstanceIdentity,
            Pointer<COMObject> pIFunctionDiscoveryNotification,
            Pointer<Uint64> pfdqcQueryContext,
            Pointer<Pointer<COMObject>> ppIFunctionInstanceQuery,
          )>()(
        ptr.ref.lpVtbl,
        pszFunctionInstanceIdentity,
        pIFunctionDiscoveryNotification,
        pfdqcQueryContext,
        ppIFunctionInstanceQuery,
      );

  int AddInstance(
    int enumSystemVisibility,
    Pointer<Utf16> pszCategory,
    Pointer<Utf16> pszSubCategory,
    Pointer<Utf16> pszCategoryIdentity,
    Pointer<Pointer<COMObject>> ppIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumSystemVisibility,
            Pointer<Utf16> pszCategory,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszCategoryIdentity,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumSystemVisibility,
            Pointer<Utf16> pszCategory,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszCategoryIdentity,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        enumSystemVisibility,
        pszCategory,
        pszSubCategory,
        pszCategoryIdentity,
        ppIFunctionInstance,
      );

  int RemoveInstance(
    int enumSystemVisibility,
    Pointer<Utf16> pszCategory,
    Pointer<Utf16> pszSubCategory,
    Pointer<Utf16> pszCategoryIdentity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumSystemVisibility,
            Pointer<Utf16> pszCategory,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszCategoryIdentity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumSystemVisibility,
            Pointer<Utf16> pszCategory,
            Pointer<Utf16> pszSubCategory,
            Pointer<Utf16> pszCategoryIdentity,
          )>()(
        ptr.ref.lpVtbl,
        enumSystemVisibility,
        pszCategory,
        pszSubCategory,
        pszCategoryIdentity,
      );
}

/// @nodoc
const CLSID_FunctionDiscovery = '{C72BE2EC-8E90-452C-B29A-AB8FF1C071FC}';

/// {@category com}
class FunctionDiscovery extends IFunctionDiscovery {
  FunctionDiscovery(Pointer<COMObject> ptr) : super(ptr);

  factory FunctionDiscovery.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FunctionDiscovery);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFunctionDiscovery);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FunctionDiscovery(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

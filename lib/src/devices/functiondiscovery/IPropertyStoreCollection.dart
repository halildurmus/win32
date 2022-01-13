// IPropertyStoreCollection.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_IPropertyStoreCollection = '{D14D9C30-12D2-42D8-BCE4-C60C2BB226FA}';

/// {@category Interface}
/// {@category com}
class IPropertyStoreCollection extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IPropertyStoreCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int Get(
    Pointer<Utf16> pszInstanceIdentity,
    Pointer<Uint32> pdwIndex,
    Pointer<Pointer<COMObject>> ppIPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszInstanceIdentity,
            Pointer<Uint32> pdwIndex,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszInstanceIdentity,
            Pointer<Uint32> pdwIndex,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        pszInstanceIdentity,
        pdwIndex,
        ppIPropertyStore,
      );

  int Item(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppIPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppIPropertyStore,
      );

  int Add(
    Pointer<COMObject> pIPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        pIPropertyStore,
      );

  int Remove(
    int dwIndex,
    Pointer<Pointer<COMObject>> pIPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> pIPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> pIPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pIPropertyStore,
      );

  int Delete(
    int dwIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
      );

  int DeleteAll() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
}

/// @nodoc
const CLSID_PropertyStoreCollection = '{EDD36029-D753-4862-AA5B-5BCCAD2A4D29}';

/// {@category com}
class PropertyStoreCollection extends IPropertyStoreCollection {
  PropertyStoreCollection(Pointer<COMObject> ptr) : super(ptr);

  factory PropertyStoreCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PropertyStoreCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPropertyStoreCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PropertyStoreCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

// IFunctionInstanceCollection.dart

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
import '../../devices/functiondiscovery/IFunctionInstance.dart';

/// @nodoc
const IID_IFunctionInstanceCollection =
    '{F0A3D895-855C-42A2-948D-2F97D450ECB1}';

/// {@category Interface}
/// {@category com}
class IFunctionInstanceCollection extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IFunctionInstanceCollection(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> ppIFunctionInstance,
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
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszInstanceIdentity,
            Pointer<Uint32> pdwIndex,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        pszInstanceIdentity,
        pdwIndex,
        ppIFunctionInstance,
      );

  int Item(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppIFunctionInstance,
      );

  int Add(
    Pointer<COMObject> pIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        pIFunctionInstance,
      );

  int Remove(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppIFunctionInstance,
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
const CLSID_FunctionInstanceCollection =
    '{BA818CE5-B55F-443F-AD39-2FE89BE6191F}';

/// {@category com}
class FunctionInstanceCollection extends IFunctionInstanceCollection {
  FunctionInstanceCollection(Pointer<COMObject> ptr) : super(ptr);

  factory FunctionInstanceCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FunctionInstanceCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFunctionInstanceCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FunctionInstanceCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

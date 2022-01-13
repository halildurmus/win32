// IComponentUtil.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IComponentUtil = '{6EB22873-8A19-11D0-81B6-00A0C9231C29}';

/// {@category Interface}
/// {@category com}
class IComponentUtil extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IComponentUtil(Pointer<COMObject> ptr) : super(ptr);

  int InstallComponent(
    Pointer<Utf16> bstrDLLFile,
    Pointer<Utf16> bstrTypelibFile,
    Pointer<Utf16> bstrProxyStubDLLFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDLLFile,
            Pointer<Utf16> bstrTypelibFile,
            Pointer<Utf16> bstrProxyStubDLLFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDLLFile,
            Pointer<Utf16> bstrTypelibFile,
            Pointer<Utf16> bstrProxyStubDLLFile,
          )>()(
        ptr.ref.lpVtbl,
        bstrDLLFile,
        bstrTypelibFile,
        bstrProxyStubDLLFile,
      );

  int ImportComponent(
    Pointer<Utf16> bstrCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCLSID,
          )>()(
        ptr.ref.lpVtbl,
        bstrCLSID,
      );

  int ImportComponentByName(
    Pointer<Utf16> bstrProgID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProgID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProgID,
          )>()(
        ptr.ref.lpVtbl,
        bstrProgID,
      );

  int GetCLSIDs(
    Pointer<Utf16> bstrDLLFile,
    Pointer<Utf16> bstrTypelibFile,
    Pointer<Pointer<SAFEARRAY>> aCLSIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDLLFile,
            Pointer<Utf16> bstrTypelibFile,
            Pointer<Pointer<SAFEARRAY>> aCLSIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDLLFile,
            Pointer<Utf16> bstrTypelibFile,
            Pointer<Pointer<SAFEARRAY>> aCLSIDs,
          )>()(
        ptr.ref.lpVtbl,
        bstrDLLFile,
        bstrTypelibFile,
        aCLSIDs,
      );
}

/// @nodoc
const CLSID_ComponentUtil = '{6EB22884-8A19-11D0-81B6-00A0C9231C29}';

/// {@category com}
class ComponentUtil extends IComponentUtil {
  ComponentUtil(Pointer<COMObject> ptr) : super(ptr);

  factory ComponentUtil.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ComponentUtil);
    final iid = calloc<GUID>()..ref.setGUID(IID_IComponentUtil);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ComponentUtil(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

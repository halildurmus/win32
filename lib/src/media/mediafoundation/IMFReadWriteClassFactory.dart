// IMFReadWriteClassFactory.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFReadWriteClassFactory = '{E7FE2E12-661C-40DA-92F9-4F002AB67627}';

/// {@category Interface}
/// {@category com}
class IMFReadWriteClassFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFReadWriteClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstanceFromURL(
    Pointer<GUID> clsid,
    Pointer<Utf16> pwszURL,
    Pointer<COMObject> pAttributes,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<Utf16> pwszURL,
            Pointer<COMObject> pAttributes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<Utf16> pwszURL,
            Pointer<COMObject> pAttributes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        pwszURL,
        pAttributes,
        riid,
        ppvObject,
      );

  int CreateInstanceFromObject(
    Pointer<GUID> clsid,
    Pointer<COMObject> punkObject,
    Pointer<COMObject> pAttributes,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<COMObject> punkObject,
            Pointer<COMObject> pAttributes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<COMObject> punkObject,
            Pointer<COMObject> pAttributes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        punkObject,
        pAttributes,
        riid,
        ppvObject,
      );
}

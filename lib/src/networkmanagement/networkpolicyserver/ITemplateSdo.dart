// ITemplateSdo.dart

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

import '../../networkmanagement/networkpolicyserver/ISdo.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IDispatch.dart';

/// @nodoc
const IID_ITemplateSdo = '{8AA85302-D2E2-4E20-8B1F-A571E437D6C9}';

/// {@category Interface}
/// {@category com}
class ITemplateSdo extends ISdo {
  // vtable begins at 14, is 3 entries long.
  ITemplateSdo(Pointer<COMObject> ptr) : super(ptr);

  int AddToCollection(
    Pointer<Utf16> bstrName,
    Pointer<COMObject> pCollection,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<COMObject> pCollection,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<COMObject> pCollection,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pCollection,
        ppItem,
      );

  int AddToSdo(
    Pointer<Utf16> bstrName,
    Pointer<COMObject> pSdoTarget,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<COMObject> pSdoTarget,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<COMObject> pSdoTarget,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pSdoTarget,
        ppItem,
      );

  int AddToSdoAsProperty(
    Pointer<COMObject> pSdoTarget,
    int id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSdoTarget,
            Int32 id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSdoTarget,
            int id,
          )>()(
        ptr.ref.lpVtbl,
        pSdoTarget,
        id,
      );
}

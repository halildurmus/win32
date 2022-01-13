// ITfDisplayAttributeMgr.dart

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
import '../../ui/textservices/IEnumTfDisplayAttributeInfo.dart';
import '../../ui/textservices/ITfDisplayAttributeInfo.dart';

/// @nodoc
const IID_ITfDisplayAttributeMgr = '{8DED7393-5DB1-475C-9E71-A39111B0FF67}';

/// {@category Interface}
/// {@category com}
class ITfDisplayAttributeMgr extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITfDisplayAttributeMgr(Pointer<COMObject> ptr) : super(ptr);

  int OnUpdateInfo() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int EnumDisplayAttributeInfo(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetDisplayAttributeInfo(
    Pointer<GUID> guid,
    Pointer<Pointer<COMObject>> ppInfo,
    Pointer<GUID> pclsidOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Pointer<COMObject>> ppInfo,
            Pointer<GUID> pclsidOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Pointer<COMObject>> ppInfo,
            Pointer<GUID> pclsidOwner,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        ppInfo,
        pclsidOwner,
      );
}

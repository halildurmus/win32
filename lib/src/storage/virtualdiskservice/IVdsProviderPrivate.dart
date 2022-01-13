// IVdsProviderPrivate.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVdsProviderPrivate = '{11F3CD41-B7E8-48FF-9472-9DFF018AA292}';

/// {@category Interface}
/// {@category com}
class IVdsProviderPrivate extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVdsProviderPrivate(Pointer<COMObject> ptr) : super(ptr);

  int GetObject(
    GUID ObjectId,
    int type,
    Pointer<Pointer<COMObject>> ppObjectUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ObjectId,
            Int32 type,
            Pointer<Pointer<COMObject>> ppObjectUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ObjectId,
            int type,
            Pointer<Pointer<COMObject>> ppObjectUnk,
          )>()(
        ptr.ref.lpVtbl,
        ObjectId,
        type,
        ppObjectUnk,
      );

  int OnLoad(
    Pointer<Utf16> pwszMachineName,
    Pointer<COMObject> pCallbackObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszMachineName,
            Pointer<COMObject> pCallbackObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszMachineName,
            Pointer<COMObject> pCallbackObject,
          )>()(
        ptr.ref.lpVtbl,
        pwszMachineName,
        pCallbackObject,
      );

  int OnUnload(
    int bForceUnload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bForceUnload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bForceUnload,
          )>()(
        ptr.ref.lpVtbl,
        bForceUnload,
      );
}

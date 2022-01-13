// ISceSvcAttachmentData.dart

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
import '../../security/configurationsnapin/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/configurationsnapin/ISceSvcAttachmentPersistInfo.dart';

/// @nodoc
const IID_ISceSvcAttachmentData = '{17C35FDE-200D-11D1-AFFB-00C04FB984F9}';

/// {@category Interface}
/// {@category com}
class ISceSvcAttachmentData extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISceSvcAttachmentData(Pointer<COMObject> ptr) : super(ptr);

  int GetData(
    Pointer scesvcHandle,
    int sceType,
    Pointer<Pointer> ppvData,
    Pointer<Uint32> psceEnumHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer scesvcHandle,
            Int32 sceType,
            Pointer<Pointer> ppvData,
            Pointer<Uint32> psceEnumHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer scesvcHandle,
            int sceType,
            Pointer<Pointer> ppvData,
            Pointer<Uint32> psceEnumHandle,
          )>()(
        ptr.ref.lpVtbl,
        scesvcHandle,
        sceType,
        ppvData,
        psceEnumHandle,
      );

  int Initialize(
    Pointer<Int8> lpServiceName,
    Pointer<Int8> lpTemplateName,
    Pointer<COMObject> lpSceSvcPersistInfo,
    Pointer<Pointer> pscesvcHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpServiceName,
            Pointer<Int8> lpTemplateName,
            Pointer<COMObject> lpSceSvcPersistInfo,
            Pointer<Pointer> pscesvcHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpServiceName,
            Pointer<Int8> lpTemplateName,
            Pointer<COMObject> lpSceSvcPersistInfo,
            Pointer<Pointer> pscesvcHandle,
          )>()(
        ptr.ref.lpVtbl,
        lpServiceName,
        lpTemplateName,
        lpSceSvcPersistInfo,
        pscesvcHandle,
      );

  int FreeBuffer(
    Pointer pvData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pvData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pvData,
          )>()(
        ptr.ref.lpVtbl,
        pvData,
      );

  int CloseHandle(
    Pointer scesvcHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer scesvcHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer scesvcHandle,
          )>()(
        ptr.ref.lpVtbl,
        scesvcHandle,
      );
}

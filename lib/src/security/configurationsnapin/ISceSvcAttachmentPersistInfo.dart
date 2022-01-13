// ISceSvcAttachmentPersistInfo.dart

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

/// @nodoc
const IID_ISceSvcAttachmentPersistInfo =
    '{6D90E0D0-200D-11D1-AFFB-00C04FB984F9}';

/// {@category Interface}
/// {@category com}
class ISceSvcAttachmentPersistInfo extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISceSvcAttachmentPersistInfo(Pointer<COMObject> ptr) : super(ptr);

  int Save(
    Pointer<Int8> lpTemplateName,
    Pointer<Pointer> scesvcHandle,
    Pointer<Pointer> ppvData,
    Pointer<Int32> pbOverwriteAll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpTemplateName,
            Pointer<Pointer> scesvcHandle,
            Pointer<Pointer> ppvData,
            Pointer<Int32> pbOverwriteAll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpTemplateName,
            Pointer<Pointer> scesvcHandle,
            Pointer<Pointer> ppvData,
            Pointer<Int32> pbOverwriteAll,
          )>()(
        ptr.ref.lpVtbl,
        lpTemplateName,
        scesvcHandle,
        ppvData,
        pbOverwriteAll,
      );

  int IsDirty(
    Pointer<Int8> lpTemplateName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpTemplateName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpTemplateName,
          )>()(
        ptr.ref.lpVtbl,
        lpTemplateName,
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
}

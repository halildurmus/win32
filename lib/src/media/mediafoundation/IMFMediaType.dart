// IMFMediaType.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFMediaType.dart';

/// @nodoc
const IID_IMFMediaType = '{44AE0FA8-EA31-4109-8D2E-4CAE4997C555}';

/// {@category Interface}
/// {@category com}
class IMFMediaType extends IMFAttributes {
  // vtable begins at 33, is 5 entries long.
  IMFMediaType(Pointer<COMObject> ptr) : super(ptr);

  int GetMajorType(
    Pointer<GUID> pguidMajorType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidMajorType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidMajorType,
          )>()(
        ptr.ref.lpVtbl,
        pguidMajorType,
      );

  int IsCompressedFormat(
    Pointer<Int32> pfCompressed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCompressed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCompressed,
          )>()(
        ptr.ref.lpVtbl,
        pfCompressed,
      );

  int IsEqual(
    Pointer<COMObject> pIMediaType,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIMediaType,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIMediaType,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pIMediaType,
        pdwFlags,
      );

  int GetRepresentation(
    GUID guidRepresentation,
    Pointer<Pointer> ppvRepresentation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidRepresentation,
            Pointer<Pointer> ppvRepresentation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidRepresentation,
            Pointer<Pointer> ppvRepresentation,
          )>()(
        ptr.ref.lpVtbl,
        guidRepresentation,
        ppvRepresentation,
      );

  int FreeRepresentation(
    GUID guidRepresentation,
    Pointer pvRepresentation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidRepresentation,
            Pointer pvRepresentation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidRepresentation,
            Pointer pvRepresentation,
          )>()(
        ptr.ref.lpVtbl,
        guidRepresentation,
        pvRepresentation,
      );
}

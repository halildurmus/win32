// IWICMetadataWriter.dart

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

import '../../graphics/imaging/IWICMetadataReader.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICMetadataWriter = '{F7836E16-3BE0-470B-86BB-160D0AECD7DE}';

/// {@category Interface}
/// {@category com}
class IWICMetadataWriter extends IWICMetadataReader {
  // vtable begins at 9, is 4 entries long.
  IWICMetadataWriter(Pointer<COMObject> ptr) : super(ptr);

  int SetValue(
    Pointer<PROPVARIANT> pvarSchema,
    Pointer<PROPVARIANT> pvarId,
    Pointer<PROPVARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> pvarSchema,
            Pointer<PROPVARIANT> pvarId,
            Pointer<PROPVARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> pvarSchema,
            Pointer<PROPVARIANT> pvarId,
            Pointer<PROPVARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        pvarSchema,
        pvarId,
        pvarValue,
      );

  int SetValueByIndex(
    int nIndex,
    Pointer<PROPVARIANT> pvarSchema,
    Pointer<PROPVARIANT> pvarId,
    Pointer<PROPVARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<PROPVARIANT> pvarSchema,
            Pointer<PROPVARIANT> pvarId,
            Pointer<PROPVARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<PROPVARIANT> pvarSchema,
            Pointer<PROPVARIANT> pvarId,
            Pointer<PROPVARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        pvarSchema,
        pvarId,
        pvarValue,
      );

  int RemoveValue(
    Pointer<PROPVARIANT> pvarSchema,
    Pointer<PROPVARIANT> pvarId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> pvarSchema,
            Pointer<PROPVARIANT> pvarId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> pvarSchema,
            Pointer<PROPVARIANT> pvarId,
          )>()(
        ptr.ref.lpVtbl,
        pvarSchema,
        pvarId,
      );

  int RemoveValueByIndex(
    int nIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
      );
}

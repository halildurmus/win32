// IWICMetadataReader.dart

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
import '../../graphics/imaging/IWICMetadataHandlerInfo.dart';
import '../../specialTypes.dart';
import '../../graphics/imaging/IWICEnumMetadataItem.dart';

/// @nodoc
const IID_IWICMetadataReader = '{9204FE99-D8FC-4FD5-A001-9536B067A899}';

/// {@category Interface}
/// {@category com}
class IWICMetadataReader extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWICMetadataReader(Pointer<COMObject> ptr) : super(ptr);

  int GetMetadataFormat(
    Pointer<GUID> pguidMetadataFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidMetadataFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidMetadataFormat,
          )>()(
        ptr.ref.lpVtbl,
        pguidMetadataFormat,
      );

  int GetMetadataHandlerInfo(
    Pointer<Pointer<COMObject>> ppIHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIHandler,
          )>()(
        ptr.ref.lpVtbl,
        ppIHandler,
      );

  int GetCount(
    Pointer<Uint32> pcCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>()(
        ptr.ref.lpVtbl,
        pcCount,
      );

  int GetValueByIndex(
    int nIndex,
    Pointer<PROPVARIANT> pvarSchema,
    Pointer<PROPVARIANT> pvarId,
    Pointer<PROPVARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetValue(
    Pointer<PROPVARIANT> pvarSchema,
    Pointer<PROPVARIANT> pvarId,
    Pointer<PROPVARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetEnumerator(
    Pointer<Pointer<COMObject>> ppIEnumMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumMetadata,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumMetadata,
      );
}

// IWICEnumMetadataItem.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICEnumMetadataItem.dart';

/// @nodoc
const IID_IWICEnumMetadataItem = '{DC2BB46D-3F07-481E-8625-220C4AEDBB33}';

/// {@category Interface}
/// {@category com}
class IWICEnumMetadataItem extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWICEnumMetadataItem(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int celt,
    Pointer<PROPVARIANT> rgeltSchema,
    Pointer<PROPVARIANT> rgeltId,
    Pointer<PROPVARIANT> rgeltValue,
    Pointer<Uint32> pceltFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<PROPVARIANT> rgeltSchema,
            Pointer<PROPVARIANT> rgeltId,
            Pointer<PROPVARIANT> rgeltValue,
            Pointer<Uint32> pceltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<PROPVARIANT> rgeltSchema,
            Pointer<PROPVARIANT> rgeltId,
            Pointer<PROPVARIANT> rgeltValue,
            Pointer<Uint32> pceltFetched,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        rgeltSchema,
        rgeltId,
        rgeltValue,
        pceltFetched,
      );

  int Skip(
    int celt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
          )>()(
        ptr.ref.lpVtbl,
        celt,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Clone(
    Pointer<Pointer<COMObject>> ppIEnumMetadataItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumMetadataItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumMetadataItem,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumMetadataItem,
      );
}

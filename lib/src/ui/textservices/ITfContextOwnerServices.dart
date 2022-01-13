// ITfContextOwnerServices.dart

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
import '../../ui/textservices/ITfProperty.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../ui/textservices/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../ui/textservices/ITfPersistentPropertyLoaderACP.dart';
import '../../ui/textservices/ITfRangeACP.dart';

/// @nodoc
const IID_ITfContextOwnerServices = '{B23EB630-3E1C-11D3-A745-0050040AB407}';

/// {@category Interface}
/// {@category com}
class ITfContextOwnerServices extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ITfContextOwnerServices(Pointer<COMObject> ptr) : super(ptr);

  int OnLayoutChange() => ptr.ref.lpVtbl.value
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

  int OnStatusChange(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int OnAttributeChange(
    Pointer<GUID> rguidAttribute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidAttribute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidAttribute,
          )>()(
        ptr.ref.lpVtbl,
        rguidAttribute,
      );

  int Serialize(
    Pointer<COMObject> pProp,
    Pointer<COMObject> pRange,
    Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
    Pointer<COMObject> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProp,
            Pointer<COMObject> pRange,
            Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
            Pointer<COMObject> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProp,
            Pointer<COMObject> pRange,
            Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
            Pointer<COMObject> pStream,
          )>()(
        ptr.ref.lpVtbl,
        pProp,
        pRange,
        pHdr,
        pStream,
      );

  int Unserialize(
    Pointer<COMObject> pProp,
    Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
    Pointer<COMObject> pStream,
    Pointer<COMObject> pLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProp,
            Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
            Pointer<COMObject> pStream,
            Pointer<COMObject> pLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProp,
            Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
            Pointer<COMObject> pStream,
            Pointer<COMObject> pLoader,
          )>()(
        ptr.ref.lpVtbl,
        pProp,
        pHdr,
        pStream,
        pLoader,
      );

  int ForceLoadProperty(
    Pointer<COMObject> pProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProp,
          )>()(
        ptr.ref.lpVtbl,
        pProp,
      );

  int CreateRange(
    int acpStart,
    int acpEnd,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpStart,
            Int32 acpEnd,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpStart,
            int acpEnd,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        acpStart,
        acpEnd,
        ppRange,
      );
}

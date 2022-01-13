// IPart.dart

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
import '../../media/audio/structs.g.dart';
import '../../media/audio/IControlInterface.dart';
import '../../media/audio/IPartsList.dart';
import '../../media/audio/IDeviceTopology.dart';
import '../../media/audio/IControlChangeNotify.dart';

/// @nodoc
const IID_IPart = '{AE2DE0E4-5BCA-4F2D-AA46-5D13F8FDB3A9}';

/// {@category Interface}
/// {@category com}
class IPart extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IPart(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> ppwstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwstrName,
          )>()(
        ptr.ref.lpVtbl,
        ppwstrName,
      );

  int GetLocalId(
    Pointer<Uint32> pnId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnId,
          )>()(
        ptr.ref.lpVtbl,
        pnId,
      );

  int GetGlobalId(
    Pointer<Pointer<Utf16>> ppwstrGlobalId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwstrGlobalId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwstrGlobalId,
          )>()(
        ptr.ref.lpVtbl,
        ppwstrGlobalId,
      );

  int GetPartType(
    Pointer<Int32> pPartType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPartType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPartType,
          )>()(
        ptr.ref.lpVtbl,
        pPartType,
      );

  int GetSubType(
    Pointer<GUID> pSubType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pSubType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pSubType,
          )>()(
        ptr.ref.lpVtbl,
        pSubType,
      );

  int GetControlInterfaceCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetControlInterface(
    int nIndex,
    Pointer<Pointer<COMObject>> ppInterfaceDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<Pointer<COMObject>> ppInterfaceDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<COMObject>> ppInterfaceDesc,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppInterfaceDesc,
      );

  int EnumPartsIncoming(
    Pointer<Pointer<COMObject>> ppParts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParts,
          )>()(
        ptr.ref.lpVtbl,
        ppParts,
      );

  int EnumPartsOutgoing(
    Pointer<Pointer<COMObject>> ppParts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParts,
          )>()(
        ptr.ref.lpVtbl,
        ppParts,
      );

  int GetTopologyObject(
    Pointer<Pointer<COMObject>> ppTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTopology,
          )>()(
        ptr.ref.lpVtbl,
        ppTopology,
      );

  int Activate(
    int dwClsContext,
    Pointer<GUID> refiid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwClsContext,
            Pointer<GUID> refiid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwClsContext,
            Pointer<GUID> refiid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        dwClsContext,
        refiid,
        ppvObject,
      );

  int RegisterControlChangeCallback(
    Pointer<GUID> riid,
    Pointer<COMObject> pNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> pNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> pNotify,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        pNotify,
      );

  int UnregisterControlChangeCallback(
    Pointer<COMObject> pNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNotify,
          )>()(
        ptr.ref.lpVtbl,
        pNotify,
      );
}

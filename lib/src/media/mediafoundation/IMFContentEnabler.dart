// IMFContentEnabler.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFContentEnabler = '{D3C4EF59-49CE-4381-9071-D5BCD044C770}';

/// {@category Interface}
/// {@category com}
class IMFContentEnabler extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFContentEnabler(Pointer<COMObject> ptr) : super(ptr);

  int GetEnableType(
    Pointer<GUID> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );

  int GetEnableURL(
    Pointer<Pointer<Utf16>> ppwszURL,
    Pointer<Uint32> pcchURL,
    Pointer<Int32> pTrustStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszURL,
            Pointer<Uint32> pcchURL,
            Pointer<Int32> pTrustStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszURL,
            Pointer<Uint32> pcchURL,
            Pointer<Int32> pTrustStatus,
          )>()(
        ptr.ref.lpVtbl,
        ppwszURL,
        pcchURL,
        pTrustStatus,
      );

  int GetEnableData(
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pcbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbData,
          )>()(
        ptr.ref.lpVtbl,
        ppbData,
        pcbData,
      );

  int IsAutomaticSupported(
    Pointer<Int32> pfAutomatic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfAutomatic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfAutomatic,
          )>()(
        ptr.ref.lpVtbl,
        pfAutomatic,
      );

  int AutomaticEnable() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int MonitorEnable() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
}

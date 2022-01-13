// IMDSPEnumDevice.dart

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
import '../../media/devicemanager/IMDSPDevice.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IMDSPEnumDevice.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPEnumDevice = '{1DCB3A11-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IMDSPEnumDevice extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMDSPEnumDevice(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int celt,
    Pointer<Pointer<COMObject>> ppDevice,
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
            Pointer<Pointer<COMObject>> ppDevice,
            Pointer<Uint32> pceltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<Pointer<COMObject>> ppDevice,
            Pointer<Uint32> pceltFetched,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        ppDevice,
        pceltFetched,
      );

  int Skip(
    int celt,
    Pointer<Uint32> pceltFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<Uint32> pceltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<Uint32> pceltFetched,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        pceltFetched,
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
    Pointer<Pointer<COMObject>> ppEnumDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumDevice,
      );
}

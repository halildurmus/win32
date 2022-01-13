// IMachineGlobalObjectTable.dart

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
import '../../specialTypes.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMachineGlobalObjectTable = '{26D709AC-F70B-4421-A96F-D2878FAFB00D}';

/// {@category Interface}
/// {@category com}
class IMachineGlobalObjectTable extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMachineGlobalObjectTable(Pointer<COMObject> ptr) : super(ptr);

  int RegisterObject(
    Pointer<GUID> clsid,
    Pointer<Utf16> identifier,
    Pointer<COMObject> object,
    Pointer<Pointer<MachineGlobalObjectTableRegistrationToken__>> token,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<Utf16> identifier,
            Pointer<COMObject> object,
            Pointer<Pointer<MachineGlobalObjectTableRegistrationToken__>> token,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<Utf16> identifier,
            Pointer<COMObject> object,
            Pointer<Pointer<MachineGlobalObjectTableRegistrationToken__>> token,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        identifier,
        object,
        token,
      );

  int GetObject(
    Pointer<GUID> clsid,
    Pointer<Utf16> identifier,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<Utf16> identifier,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<Utf16> identifier,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        identifier,
        riid,
        ppv,
      );

  int RevokeObject(
    Pointer<MachineGlobalObjectTableRegistrationToken__> token,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MachineGlobalObjectTableRegistrationToken__> token,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MachineGlobalObjectTableRegistrationToken__> token,
          )>()(
        ptr.ref.lpVtbl,
        token,
      );
}

// IInternetZoneManagerEx2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/urlmon/IInternetZoneManagerEx.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetZoneManagerEx2 = '{EDC17559-DD5D-4846-8EEF-8BECBA5A4ABF}';

/// {@category Interface}
/// {@category com}
class IInternetZoneManagerEx2 extends IInternetZoneManagerEx {
  // vtable begins at 17, is 4 entries long.
  IInternetZoneManagerEx2(Pointer<COMObject> ptr) : super(ptr);

  int GetZoneAttributesEx(
    int dwZone,
    Pointer<ZONEATTRIBUTES> pZoneAttributes,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZone,
            Pointer<ZONEATTRIBUTES> pZoneAttributes,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZone,
            Pointer<ZONEATTRIBUTES> pZoneAttributes,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwZone,
        pZoneAttributes,
        dwFlags,
      );

  int GetZoneSecurityState(
    int dwZoneIndex,
    int fRespectPolicy,
    Pointer<Uint32> pdwState,
    Pointer<Int32> pfPolicyEncountered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwZoneIndex,
            Int32 fRespectPolicy,
            Pointer<Uint32> pdwState,
            Pointer<Int32> pfPolicyEncountered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwZoneIndex,
            int fRespectPolicy,
            Pointer<Uint32> pdwState,
            Pointer<Int32> pfPolicyEncountered,
          )>()(
        ptr.ref.lpVtbl,
        dwZoneIndex,
        fRespectPolicy,
        pdwState,
        pfPolicyEncountered,
      );

  int GetIESecurityState(
    int fRespectPolicy,
    Pointer<Uint32> pdwState,
    Pointer<Int32> pfPolicyEncountered,
    int fNoCache,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRespectPolicy,
            Pointer<Uint32> pdwState,
            Pointer<Int32> pfPolicyEncountered,
            Int32 fNoCache,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRespectPolicy,
            Pointer<Uint32> pdwState,
            Pointer<Int32> pfPolicyEncountered,
            int fNoCache,
          )>()(
        ptr.ref.lpVtbl,
        fRespectPolicy,
        pdwState,
        pfPolicyEncountered,
        fNoCache,
      );

  int FixUnsecureSettings() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

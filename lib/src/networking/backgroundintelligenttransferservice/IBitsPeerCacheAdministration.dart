// IBitsPeerCacheAdministration.dart

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
import '../../networking/backgroundintelligenttransferservice/IEnumBitsPeerCacheRecords.dart';
import '../../networking/backgroundintelligenttransferservice/IBitsPeerCacheRecord.dart';
import '../../networking/backgroundintelligenttransferservice/IEnumBitsPeers.dart';

/// @nodoc
const IID_IBitsPeerCacheAdministration =
    '{659CDEAD-489E-11D9-A9CD-000D56965251}';

/// {@category Interface}
/// {@category com}
class IBitsPeerCacheAdministration extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IBitsPeerCacheAdministration(Pointer<COMObject> ptr) : super(ptr);

  int GetMaximumCacheSize(
    Pointer<Uint32> pBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pBytes,
          )>()(
        ptr.ref.lpVtbl,
        pBytes,
      );

  int SetMaximumCacheSize(
    int Bytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Bytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Bytes,
          )>()(
        ptr.ref.lpVtbl,
        Bytes,
      );

  int GetMaximumContentAge(
    Pointer<Uint32> pSeconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pSeconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pSeconds,
          )>()(
        ptr.ref.lpVtbl,
        pSeconds,
      );

  int SetMaximumContentAge(
    int Seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Seconds,
          )>()(
        ptr.ref.lpVtbl,
        Seconds,
      );

  int GetConfigurationFlags(
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int SetConfigurationFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int EnumRecords(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetRecord(
    Pointer<GUID> id,
    Pointer<Pointer<COMObject>> ppRecord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> id,
            Pointer<Pointer<COMObject>> ppRecord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> id,
            Pointer<Pointer<COMObject>> ppRecord,
          )>()(
        ptr.ref.lpVtbl,
        id,
        ppRecord,
      );

  int ClearRecords() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int DeleteRecord(
    Pointer<GUID> id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> id,
          )>()(
        ptr.ref.lpVtbl,
        id,
      );

  int DeleteUrl(
    Pointer<Utf16> url,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> url,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> url,
          )>()(
        ptr.ref.lpVtbl,
        url,
      );

  int EnumPeers(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int ClearPeers() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int DiscoverPeers() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

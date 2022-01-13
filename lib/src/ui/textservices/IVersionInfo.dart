// IVersionInfo.dart

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

/// @nodoc
const IID_IVersionInfo = '{401518EC-DB00-4611-9B29-2A0E4B9AFA85}';

/// {@category Interface}
/// {@category com}
class IVersionInfo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IVersionInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSubcomponentCount(
    int ulSub,
    Pointer<Uint32> ulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSub,
            Pointer<Uint32> ulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSub,
            Pointer<Uint32> ulCount,
          )>()(
        ptr.ref.lpVtbl,
        ulSub,
        ulCount,
      );

  int GetImplementationID(
    int ulSub,
    Pointer<GUID> implid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSub,
            Pointer<GUID> implid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSub,
            Pointer<GUID> implid,
          )>()(
        ptr.ref.lpVtbl,
        ulSub,
        implid,
      );

  int GetBuildVersion(
    int ulSub,
    Pointer<Uint32> pdwMajor,
    Pointer<Uint32> pdwMinor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSub,
            Pointer<Uint32> pdwMajor,
            Pointer<Uint32> pdwMinor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSub,
            Pointer<Uint32> pdwMajor,
            Pointer<Uint32> pdwMinor,
          )>()(
        ptr.ref.lpVtbl,
        ulSub,
        pdwMajor,
        pdwMinor,
      );

  int GetComponentDescription(
    int ulSub,
    Pointer<Pointer<Utf16>> pImplStr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSub,
            Pointer<Pointer<Utf16>> pImplStr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSub,
            Pointer<Pointer<Utf16>> pImplStr,
          )>()(
        ptr.ref.lpVtbl,
        ulSub,
        pImplStr,
      );

  int GetInstanceDescription(
    int ulSub,
    Pointer<Pointer<Utf16>> pImplStr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulSub,
            Pointer<Pointer<Utf16>> pImplStr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulSub,
            Pointer<Pointer<Utf16>> pImplStr,
          )>()(
        ptr.ref.lpVtbl,
        ulSub,
        pImplStr,
      );
}

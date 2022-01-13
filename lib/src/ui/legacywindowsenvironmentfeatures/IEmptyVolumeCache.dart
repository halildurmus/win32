// IEmptyVolumeCache.dart

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
import '../../system/registry/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/legacywindowsenvironmentfeatures/IEmptyVolumeCacheCallBack.dart';

/// @nodoc
const IID_IEmptyVolumeCache = '{8FCE5227-04DA-11D1-A004-00805F8ABE06}';

/// {@category Interface}
/// {@category com}
class IEmptyVolumeCache extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IEmptyVolumeCache(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hkRegKey,
    Pointer<Utf16> pcwszVolume,
    Pointer<Pointer<Utf16>> ppwszDisplayName,
    Pointer<Pointer<Utf16>> ppwszDescription,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hkRegKey,
            Pointer<Utf16> pcwszVolume,
            Pointer<Pointer<Utf16>> ppwszDisplayName,
            Pointer<Pointer<Utf16>> ppwszDescription,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hkRegKey,
            Pointer<Utf16> pcwszVolume,
            Pointer<Pointer<Utf16>> ppwszDisplayName,
            Pointer<Pointer<Utf16>> ppwszDescription,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        hkRegKey,
        pcwszVolume,
        ppwszDisplayName,
        ppwszDescription,
        pdwFlags,
      );

  int GetSpaceUsed(
    Pointer<Uint64> pdwlSpaceUsed,
    Pointer<COMObject> picb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pdwlSpaceUsed,
            Pointer<COMObject> picb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pdwlSpaceUsed,
            Pointer<COMObject> picb,
          )>()(
        ptr.ref.lpVtbl,
        pdwlSpaceUsed,
        picb,
      );

  int Purge(
    int dwlSpaceToFree,
    Pointer<COMObject> picb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dwlSpaceToFree,
            Pointer<COMObject> picb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwlSpaceToFree,
            Pointer<COMObject> picb,
          )>()(
        ptr.ref.lpVtbl,
        dwlSpaceToFree,
        picb,
      );

  int ShowProperties(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );

  int Deactivate(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );
}

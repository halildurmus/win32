// IEmptyVolumeCache2.dart

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

import '../../ui/legacywindowsenvironmentfeatures/IEmptyVolumeCache.dart';
import '../../system/registry/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEmptyVolumeCache2 = '{02B7E3BA-4DB3-11D2-B2D9-00C04F8EEC8C}';

/// {@category Interface}
/// {@category com}
class IEmptyVolumeCache2 extends IEmptyVolumeCache {
  // vtable begins at 8, is 1 entries long.
  IEmptyVolumeCache2(Pointer<COMObject> ptr) : super(ptr);

  int InitializeEx(
    int hkRegKey,
    Pointer<Utf16> pcwszVolume,
    Pointer<Utf16> pcwszKeyName,
    Pointer<Pointer<Utf16>> ppwszDisplayName,
    Pointer<Pointer<Utf16>> ppwszDescription,
    Pointer<Pointer<Utf16>> ppwszBtnText,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hkRegKey,
            Pointer<Utf16> pcwszVolume,
            Pointer<Utf16> pcwszKeyName,
            Pointer<Pointer<Utf16>> ppwszDisplayName,
            Pointer<Pointer<Utf16>> ppwszDescription,
            Pointer<Pointer<Utf16>> ppwszBtnText,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hkRegKey,
            Pointer<Utf16> pcwszVolume,
            Pointer<Utf16> pcwszKeyName,
            Pointer<Pointer<Utf16>> ppwszDisplayName,
            Pointer<Pointer<Utf16>> ppwszDescription,
            Pointer<Pointer<Utf16>> ppwszBtnText,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        hkRegKey,
        pcwszVolume,
        pcwszKeyName,
        ppwszDisplayName,
        ppwszDescription,
        ppwszBtnText,
        pdwFlags,
      );
}

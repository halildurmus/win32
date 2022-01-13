// ISystemMediaTransportControlsInterop.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISystemMediaTransportControlsInterop =
    '{DDB0472D-C911-4A1F-86D9-DC3D71A95F5A}';

/// {@category Interface}
/// {@category com}
class ISystemMediaTransportControlsInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ISystemMediaTransportControlsInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> mediaTransportControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> mediaTransportControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> mediaTransportControl,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        mediaTransportControl,
      );
}

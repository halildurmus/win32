// IWSDHttpAuthParameters.dart

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
const IID_IWSDHttpAuthParameters = '{0B476DF0-8DAC-480D-B05C-99781A5884AA}';

/// {@category Interface}
/// {@category com}
class IWSDHttpAuthParameters extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWSDHttpAuthParameters(Pointer<COMObject> ptr) : super(ptr);

  int GetClientAccessToken(
    Pointer<IntPtr> phToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phToken,
          )>()(
        ptr.ref.lpVtbl,
        phToken,
      );

  int GetAuthType(
    Pointer<Uint32> pAuthType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pAuthType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pAuthType,
          )>()(
        ptr.ref.lpVtbl,
        pAuthType,
      );
}

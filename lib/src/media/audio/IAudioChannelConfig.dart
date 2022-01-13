// IAudioChannelConfig.dart

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
const IID_IAudioChannelConfig = '{BB11C46F-EC28-493C-B88A-5DB88062CE98}';

/// {@category Interface}
/// {@category com}
class IAudioChannelConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioChannelConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetChannelConfig(
    int dwConfig,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwConfig,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwConfig,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        dwConfig,
        pguidEventContext,
      );

  int GetChannelConfig(
    Pointer<Uint32> pdwConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwConfig,
          )>()(
        ptr.ref.lpVtbl,
        pdwConfig,
      );
}

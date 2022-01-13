// IWMDMNotification.dart

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
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMNotification = '{3F5E95C0-0F43-4ED4-93D2-C89A45D59B81}';

/// {@category Interface}
/// {@category com}
class IWMDMNotification extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMDMNotification(Pointer<COMObject> ptr) : super(ptr);

  int WMDMMessage(
    int dwMessageType,
    Pointer<Utf16> pwszCanonicalName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMessageType,
            Pointer<Utf16> pwszCanonicalName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMessageType,
            Pointer<Utf16> pwszCanonicalName,
          )>()(
        ptr.ref.lpVtbl,
        dwMessageType,
        pwszCanonicalName,
      );
}

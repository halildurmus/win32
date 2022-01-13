// ICredentialProviderEvents.dart

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
const IID_ICredentialProviderEvents = '{34201E5A-A787-41A3-A5A4-BD6DCF2A854E}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICredentialProviderEvents(Pointer<COMObject> ptr) : super(ptr);

  int CredentialsChanged(
    int upAdviseContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr upAdviseContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int upAdviseContext,
          )>()(
        ptr.ref.lpVtbl,
        upAdviseContext,
      );
}

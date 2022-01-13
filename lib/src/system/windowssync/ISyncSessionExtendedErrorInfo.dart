// ISyncSessionExtendedErrorInfo.dart

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
import '../../system/windowssync/ISyncProvider.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncSessionExtendedErrorInfo =
    '{326C6810-790A-409B-B741-6999388761EB}';

/// {@category Interface}
/// {@category com}
class ISyncSessionExtendedErrorInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncSessionExtendedErrorInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncProviderWithError(
    Pointer<Pointer<COMObject>> ppProviderWithError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProviderWithError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProviderWithError,
          )>()(
        ptr.ref.lpVtbl,
        ppProviderWithError,
      );
}

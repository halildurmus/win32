// IWMProfile2.dart

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

import '../../media/windowsmediaformat/IWMProfile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMProfile2 = '{07E72D33-D94E-4BE7-8843-60AE5FF7E5F5}';

/// {@category Interface}
/// {@category com}
class IWMProfile2 extends IWMProfile {
  // vtable begins at 21, is 1 entries long.
  IWMProfile2(Pointer<COMObject> ptr) : super(ptr);

  int GetProfileID(
    Pointer<GUID> pguidID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidID,
          )>()(
        ptr.ref.lpVtbl,
        pguidID,
      );
}

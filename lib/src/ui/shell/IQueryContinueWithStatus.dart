// IQueryContinueWithStatus.dart

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

import '../../ui/shell/IQueryContinue.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IQueryContinueWithStatus = '{9090BE5B-502B-41FB-BCCC-0049A6C7254B}';

/// {@category Interface}
/// {@category com}
class IQueryContinueWithStatus extends IQueryContinue {
  // vtable begins at 4, is 1 entries long.
  IQueryContinueWithStatus(Pointer<COMObject> ptr) : super(ptr);

  int SetStatusMessage(
    Pointer<Utf16> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> psz,
          )>()(
        ptr.ref.lpVtbl,
        psz,
      );
}

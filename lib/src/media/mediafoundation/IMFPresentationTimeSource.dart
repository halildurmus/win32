// IMFPresentationTimeSource.dart

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

import '../../media/mediafoundation/IMFClock.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFPresentationTimeSource = '{7FF12CCE-F76F-41C2-863B-1666C8E5E139}';

/// {@category Interface}
/// {@category com}
class IMFPresentationTimeSource extends IMFClock {
  // vtable begins at 8, is 1 entries long.
  IMFPresentationTimeSource(Pointer<COMObject> ptr) : super(ptr);

  int GetUnderlyingClock(
    Pointer<Pointer<COMObject>> ppClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClock,
          )>()(
        ptr.ref.lpVtbl,
        ppClock,
      );
}

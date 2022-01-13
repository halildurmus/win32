// IPreviousVersionsInfo.dart

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
const IID_IPreviousVersionsInfo = '{76E54780-AD74-48E3-A695-3BA9A0AFF10D}';

/// {@category Interface}
/// {@category com}
class IPreviousVersionsInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPreviousVersionsInfo(Pointer<COMObject> ptr) : super(ptr);

  int AreSnapshotsAvailable(
    Pointer<Utf16> pszPath,
    int fOkToBeSlow,
    Pointer<Int32> pfAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 fOkToBeSlow,
            Pointer<Int32> pfAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int fOkToBeSlow,
            Pointer<Int32> pfAvailable,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        fOkToBeSlow,
        pfAvailable,
      );
}

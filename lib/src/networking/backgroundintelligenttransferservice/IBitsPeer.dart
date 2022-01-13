// IBitsPeer.dart

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
const IID_IBitsPeer = '{659CDEA2-489E-11D9-A9CD-000D56965251}';

/// {@category Interface}
/// {@category com}
class IBitsPeer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBitsPeer(Pointer<COMObject> ptr) : super(ptr);

  int GetPeerName(
    Pointer<Pointer<Utf16>> pName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>()(
        ptr.ref.lpVtbl,
        pName,
      );

  int IsAuthenticated(
    Pointer<Int32> pAuth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pAuth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pAuth,
          )>()(
        ptr.ref.lpVtbl,
        pAuth,
      );

  int IsAvailable(
    Pointer<Int32> pOnline,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pOnline,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pOnline,
          )>()(
        ptr.ref.lpVtbl,
        pOnline,
      );
}

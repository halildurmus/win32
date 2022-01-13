// IComExceptionEvents.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComExceptionEvents = '{683130B3-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComExceptionEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IComExceptionEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnExceptionUser(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int code,
    int address,
    Pointer<Utf16> pszStackTrace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint32 code,
            Uint64 address,
            Pointer<Utf16> pszStackTrace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int code,
            int address,
            Pointer<Utf16> pszStackTrace,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        code,
        address,
        pszStackTrace,
      );
}

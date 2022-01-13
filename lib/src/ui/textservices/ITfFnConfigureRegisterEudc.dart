// ITfFnConfigureRegisterEudc.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnConfigureRegisterEudc = '{B5E26FF5-D7AD-4304-913F-21A2ED95A1B0}';

/// {@category Interface}
/// {@category com}
class ITfFnConfigureRegisterEudc extends ITfFunction {
  // vtable begins at 4, is 1 entries long.
  ITfFnConfigureRegisterEudc(Pointer<COMObject> ptr) : super(ptr);

  int Show(
    int hwndParent,
    int langid,
    Pointer<GUID> rguidProfile,
    Pointer<Utf16> bstrRegistered,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Uint16 langid,
            Pointer<GUID> rguidProfile,
            Pointer<Utf16> bstrRegistered,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int langid,
            Pointer<GUID> rguidProfile,
            Pointer<Utf16> bstrRegistered,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        langid,
        rguidProfile,
        bstrRegistered,
      );
}

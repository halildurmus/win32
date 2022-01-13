// ITfReverseConversion.dart

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
import '../../ui/textservices/ITfReverseConversionList.dart';

/// @nodoc
const IID_ITfReverseConversion = '{A415E162-157D-417D-8A8C-0AB26C7D2781}';

/// {@category Interface}
/// {@category com}
class ITfReverseConversion extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfReverseConversion(Pointer<COMObject> ptr) : super(ptr);

  int DoReverseConversion(
    Pointer<Utf16> lpstr,
    Pointer<Pointer<COMObject>> ppList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpstr,
            Pointer<Pointer<COMObject>> ppList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpstr,
            Pointer<Pointer<COMObject>> ppList,
          )>()(
        ptr.ref.lpVtbl,
        lpstr,
        ppList,
      );
}

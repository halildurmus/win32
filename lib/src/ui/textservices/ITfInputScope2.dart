// ITfInputScope2.dart

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

import '../../ui/textservices/ITfInputScope.dart';
import '../../system/com/IEnumString.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfInputScope2 = '{5731EAA0-6BC2-4681-A532-92FBB74D7C41}';

/// {@category Interface}
/// {@category com}
class ITfInputScope2 extends ITfInputScope {
  // vtable begins at 8, is 1 entries long.
  ITfInputScope2(Pointer<COMObject> ptr) : super(ptr);

  int EnumWordList(
    Pointer<Pointer<COMObject>> ppEnumString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumString,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumString,
      );
}

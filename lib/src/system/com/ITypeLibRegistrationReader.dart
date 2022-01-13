// ITypeLibRegistrationReader.dart

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
import '../../system/com/IEnumUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITypeLibRegistrationReader = '{ED6A8A2A-B160-4E77-8F73-AA7435CD5C27}';

/// {@category Interface}
/// {@category com}
class ITypeLibRegistrationReader extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITypeLibRegistrationReader(Pointer<COMObject> ptr) : super(ptr);

  int EnumTypeLibRegistrations(
    Pointer<Pointer<COMObject>> ppEnumUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumUnknown,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumUnknown,
      );
}

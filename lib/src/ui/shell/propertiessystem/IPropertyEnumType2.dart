// IPropertyEnumType2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../ui/shell/propertiessystem/IPropertyEnumType.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertyEnumType2 = '{9B6E051C-5DDD-4321-9070-FE2ACB55E794}';

/// {@category Interface}
/// {@category com}
class IPropertyEnumType2 extends IPropertyEnumType {
  // vtable begins at 8, is 1 entries long.
  IPropertyEnumType2(Pointer<COMObject> ptr) : super(ptr);

  int GetImageReference(
    Pointer<Pointer<Utf16>> ppszImageRes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszImageRes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszImageRes,
          )>()(
        ptr.ref.lpVtbl,
        ppszImageRes,
      );
}

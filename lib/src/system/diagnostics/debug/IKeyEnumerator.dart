// IKeyEnumerator.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';

/// @nodoc
const IID_IKeyEnumerator = '{345FA92E-5E00-4319-9CAE-971F7601CDCF}';

/// {@category Interface}
/// {@category com}
class IKeyEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IKeyEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetNext(
    Pointer<Pointer<Utf16>> key,
    Pointer<Pointer<COMObject>> value,
    Pointer<Pointer<COMObject>> metadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
            Pointer<Pointer<COMObject>> value,
            Pointer<Pointer<COMObject>> metadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> key,
            Pointer<Pointer<COMObject>> value,
            Pointer<Pointer<COMObject>> metadata,
          )>()(
        ptr.ref.lpVtbl,
        key,
        value,
        metadata,
      );
}

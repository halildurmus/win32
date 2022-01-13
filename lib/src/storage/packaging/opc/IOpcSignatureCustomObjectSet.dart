// IOpcSignatureCustomObjectSet.dart

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
import '../../../storage/packaging/opc/IOpcSignatureCustomObject.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/IOpcSignatureCustomObjectEnumerator.dart';

/// @nodoc
const IID_IOpcSignatureCustomObjectSet =
    '{8F792AC5-7947-4E11-BC3D-2659FF046AE1}';

/// {@category Interface}
/// {@category com}
class IOpcSignatureCustomObjectSet extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOpcSignatureCustomObjectSet(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<Uint8> xmlMarkup,
    int count,
    Pointer<Pointer<COMObject>> customObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> xmlMarkup,
            Uint32 count,
            Pointer<Pointer<COMObject>> customObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> xmlMarkup,
            int count,
            Pointer<Pointer<COMObject>> customObject,
          )>()(
        ptr.ref.lpVtbl,
        xmlMarkup,
        count,
        customObject,
      );

  int Delete(
    Pointer<COMObject> customObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> customObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> customObject,
          )>()(
        ptr.ref.lpVtbl,
        customObject,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> customObjectEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObjectEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObjectEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        customObjectEnumerator,
      );
}

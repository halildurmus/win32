// IOpcSignaturePartReferenceSet.dart

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
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../storage/packaging/opc/IOpcSignaturePartReference.dart';
import '../../../storage/packaging/opc/IOpcSignaturePartReferenceEnumerator.dart';

/// @nodoc
const IID_IOpcSignaturePartReferenceSet =
    '{6C9FE28C-ECD9-4B22-9D36-7FDDE670FEC0}';

/// {@category Interface}
/// {@category com}
class IOpcSignaturePartReferenceSet extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOpcSignaturePartReferenceSet(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<COMObject> partUri,
    Pointer<Utf16> digestMethod,
    int transformMethod,
    Pointer<Pointer<COMObject>> partReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Utf16> digestMethod,
            Int32 transformMethod,
            Pointer<Pointer<COMObject>> partReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Utf16> digestMethod,
            int transformMethod,
            Pointer<Pointer<COMObject>> partReference,
          )>()(
        ptr.ref.lpVtbl,
        partUri,
        digestMethod,
        transformMethod,
        partReference,
      );

  int Delete(
    Pointer<COMObject> partReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partReference,
          )>()(
        ptr.ref.lpVtbl,
        partReference,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> partReferenceEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partReferenceEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partReferenceEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        partReferenceEnumerator,
      );
}

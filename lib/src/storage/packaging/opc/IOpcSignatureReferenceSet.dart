// IOpcSignatureReferenceSet.dart

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
import '../../../system/com/IUri.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../storage/packaging/opc/IOpcSignatureReference.dart';
import '../../../storage/packaging/opc/IOpcSignatureReferenceEnumerator.dart';

/// @nodoc
const IID_IOpcSignatureReferenceSet = '{F3B02D31-AB12-42DD-9E2F-2B16761C3C1E}';

/// {@category Interface}
/// {@category com}
class IOpcSignatureReferenceSet extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOpcSignatureReferenceSet(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<COMObject> referenceUri,
    Pointer<Utf16> referenceId,
    Pointer<Utf16> type,
    Pointer<Utf16> digestMethod,
    int transformMethod,
    Pointer<Pointer<COMObject>> reference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> referenceUri,
            Pointer<Utf16> referenceId,
            Pointer<Utf16> type,
            Pointer<Utf16> digestMethod,
            Int32 transformMethod,
            Pointer<Pointer<COMObject>> reference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> referenceUri,
            Pointer<Utf16> referenceId,
            Pointer<Utf16> type,
            Pointer<Utf16> digestMethod,
            int transformMethod,
            Pointer<Pointer<COMObject>> reference,
          )>()(
        ptr.ref.lpVtbl,
        referenceUri,
        referenceId,
        type,
        digestMethod,
        transformMethod,
        reference,
      );

  int Delete(
    Pointer<COMObject> reference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> reference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> reference,
          )>()(
        ptr.ref.lpVtbl,
        reference,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> referenceEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> referenceEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> referenceEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        referenceEnumerator,
      );
}

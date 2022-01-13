// IXpsOMSignatureBlockResourceCollection.dart

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
import '../../storage/xps/IXpsOMSignatureBlockResource.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';

/// @nodoc
const IID_IXpsOMSignatureBlockResourceCollection =
    '{AB8F5D8E-351B-4D33-AAED-FA56F0022931}';

/// {@category Interface}
/// {@category com}
class IXpsOMSignatureBlockResourceCollection extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IXpsOMSignatureBlockResourceCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        count,
      );

  int GetAt(
    int index,
    Pointer<Pointer<COMObject>> signatureBlockResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> signatureBlockResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> signatureBlockResource,
          )>()(
        ptr.ref.lpVtbl,
        index,
        signatureBlockResource,
      );

  int InsertAt(
    int index,
    Pointer<COMObject> signatureBlockResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> signatureBlockResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> signatureBlockResource,
          )>()(
        ptr.ref.lpVtbl,
        index,
        signatureBlockResource,
      );

  int RemoveAt(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );

  int SetAt(
    int index,
    Pointer<COMObject> signatureBlockResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<COMObject> signatureBlockResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<COMObject> signatureBlockResource,
          )>()(
        ptr.ref.lpVtbl,
        index,
        signatureBlockResource,
      );

  int Append(
    Pointer<COMObject> signatureBlockResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> signatureBlockResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> signatureBlockResource,
          )>()(
        ptr.ref.lpVtbl,
        signatureBlockResource,
      );

  int GetByPartName(
    Pointer<COMObject> partName,
    Pointer<Pointer<COMObject>> signatureBlockResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partName,
            Pointer<Pointer<COMObject>> signatureBlockResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partName,
            Pointer<Pointer<COMObject>> signatureBlockResource,
          )>()(
        ptr.ref.lpVtbl,
        partName,
        signatureBlockResource,
      );
}

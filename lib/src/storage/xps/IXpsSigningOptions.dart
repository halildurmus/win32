// IXpsSigningOptions.dart

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
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/packaging/opc/structs.g.dart';
import '../../storage/packaging/opc/IOpcSignatureCustomObjectSet.dart';
import '../../storage/packaging/opc/IOpcSignatureReferenceSet.dart';
import '../../storage/packaging/opc/IOpcCertificateSet.dart';

/// @nodoc
const IID_IXpsSigningOptions = '{7718EAE4-3215-49BE-AF5B-594FEF7FCFA6}';

/// {@category Interface}
/// {@category com}
class IXpsSigningOptions extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IXpsSigningOptions(Pointer<COMObject> ptr) : super(ptr);

  int GetSignatureId(
    Pointer<Pointer<Utf16>> signatureId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> signatureId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> signatureId,
          )>()(
        ptr.ref.lpVtbl,
        signatureId,
      );

  int SetSignatureId(
    Pointer<Utf16> signatureId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> signatureId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> signatureId,
          )>()(
        ptr.ref.lpVtbl,
        signatureId,
      );

  int GetSignatureMethod(
    Pointer<Pointer<Utf16>> signatureMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> signatureMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> signatureMethod,
          )>()(
        ptr.ref.lpVtbl,
        signatureMethod,
      );

  int SetSignatureMethod(
    Pointer<Utf16> signatureMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> signatureMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> signatureMethod,
          )>()(
        ptr.ref.lpVtbl,
        signatureMethod,
      );

  int GetDigestMethod(
    Pointer<Pointer<Utf16>> digestMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> digestMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> digestMethod,
          )>()(
        ptr.ref.lpVtbl,
        digestMethod,
      );

  int SetDigestMethod(
    Pointer<Utf16> digestMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> digestMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> digestMethod,
          )>()(
        ptr.ref.lpVtbl,
        digestMethod,
      );

  int GetSignaturePartName(
    Pointer<Pointer<COMObject>> signaturePartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signaturePartName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signaturePartName,
          )>()(
        ptr.ref.lpVtbl,
        signaturePartName,
      );

  int SetSignaturePartName(
    Pointer<COMObject> signaturePartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> signaturePartName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> signaturePartName,
          )>()(
        ptr.ref.lpVtbl,
        signaturePartName,
      );

  int GetPolicy(
    Pointer<Int32> policy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> policy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> policy,
          )>()(
        ptr.ref.lpVtbl,
        policy,
      );

  int SetPolicy(
    int policy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 policy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int policy,
          )>()(
        ptr.ref.lpVtbl,
        policy,
      );

  int GetSigningTimeFormat(
    Pointer<Int32> timeFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> timeFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> timeFormat,
          )>()(
        ptr.ref.lpVtbl,
        timeFormat,
      );

  int SetSigningTimeFormat(
    int timeFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 timeFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int timeFormat,
          )>()(
        ptr.ref.lpVtbl,
        timeFormat,
      );

  int GetCustomObjects(
    Pointer<Pointer<COMObject>> customObjectSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        customObjectSet,
      );

  int GetCustomReferences(
    Pointer<Pointer<COMObject>> customReferenceSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> customReferenceSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> customReferenceSet,
          )>()(
        ptr.ref.lpVtbl,
        customReferenceSet,
      );

  int GetCertificateSet(
    Pointer<Pointer<COMObject>> certificateSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> certificateSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> certificateSet,
          )>()(
        ptr.ref.lpVtbl,
        certificateSet,
      );

  int GetFlags(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SetFlags(
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );
}

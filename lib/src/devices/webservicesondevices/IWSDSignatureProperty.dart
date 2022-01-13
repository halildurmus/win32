// IWSDSignatureProperty.dart

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

/// @nodoc
const IID_IWSDSignatureProperty = '{03CE20AA-71C4-45E2-B32E-3766C61C790F}';

/// {@category Interface}
/// {@category com}
class IWSDSignatureProperty extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWSDSignatureProperty(Pointer<COMObject> ptr) : super(ptr);

  int IsMessageSigned(
    Pointer<Int32> pbSigned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbSigned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbSigned,
          )>()(
        ptr.ref.lpVtbl,
        pbSigned,
      );

  int IsMessageSignatureTrusted(
    Pointer<Int32> pbSignatureTrusted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbSignatureTrusted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbSignatureTrusted,
          )>()(
        ptr.ref.lpVtbl,
        pbSignatureTrusted,
      );

  int GetKeyInfo(
    Pointer<Uint8> pbKeyInfo,
    Pointer<Uint32> pdwKeyInfoSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbKeyInfo,
            Pointer<Uint32> pdwKeyInfoSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbKeyInfo,
            Pointer<Uint32> pdwKeyInfoSize,
          )>()(
        ptr.ref.lpVtbl,
        pbKeyInfo,
        pdwKeyInfoSize,
      );

  int GetSignature(
    Pointer<Uint8> pbSignature,
    Pointer<Uint32> pdwSignatureSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSignature,
            Pointer<Uint32> pdwSignatureSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSignature,
            Pointer<Uint32> pdwSignatureSize,
          )>()(
        ptr.ref.lpVtbl,
        pbSignature,
        pdwSignatureSize,
      );

  int GetSignedInfoHash(
    Pointer<Uint8> pbSignedInfoHash,
    Pointer<Uint32> pdwHashSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSignedInfoHash,
            Pointer<Uint32> pdwHashSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSignedInfoHash,
            Pointer<Uint32> pdwHashSize,
          )>()(
        ptr.ref.lpVtbl,
        pbSignedInfoHash,
        pdwHashSize,
      );
}

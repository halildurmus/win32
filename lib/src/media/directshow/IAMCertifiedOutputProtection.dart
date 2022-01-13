// IAMCertifiedOutputProtection.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IAMCertifiedOutputProtection =
    '{6FEDED3E-0FF1-4901-A2F1-43F7012C8515}';

/// {@category Interface}
/// {@category com}
class IAMCertifiedOutputProtection extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAMCertifiedOutputProtection(Pointer<COMObject> ptr) : super(ptr);

  int KeyExchange(
    Pointer<GUID> pRandom,
    Pointer<Pointer<Uint8>> VarLenCertGH,
    Pointer<Uint32> pdwLengthCertGH,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pRandom,
            Pointer<Pointer<Uint8>> VarLenCertGH,
            Pointer<Uint32> pdwLengthCertGH,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pRandom,
            Pointer<Pointer<Uint8>> VarLenCertGH,
            Pointer<Uint32> pdwLengthCertGH,
          )>()(
        ptr.ref.lpVtbl,
        pRandom,
        VarLenCertGH,
        pdwLengthCertGH,
      );

  int SessionSequenceStart(
    Pointer<AMCOPPSignature> pSig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMCOPPSignature> pSig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMCOPPSignature> pSig,
          )>()(
        ptr.ref.lpVtbl,
        pSig,
      );

  int ProtectionCommand(
    Pointer<AMCOPPCommand> cmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMCOPPCommand> cmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMCOPPCommand> cmd,
          )>()(
        ptr.ref.lpVtbl,
        cmd,
      );

  int ProtectionStatus(
    Pointer<AMCOPPStatusInput> pStatusInput,
    Pointer<AMCOPPStatusOutput> pStatusOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMCOPPStatusInput> pStatusInput,
            Pointer<AMCOPPStatusOutput> pStatusOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMCOPPStatusInput> pStatusInput,
            Pointer<AMCOPPStatusOutput> pStatusOutput,
          )>()(
        ptr.ref.lpVtbl,
        pStatusInput,
        pStatusOutput,
      );
}

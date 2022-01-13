// IWMLicenseRevocationAgent.dart

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
const IID_IWMLicenseRevocationAgent = '{6967F2C9-4E26-4B57-8894-799880F7AC7B}';

/// {@category Interface}
/// {@category com}
class IWMLicenseRevocationAgent extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMLicenseRevocationAgent(Pointer<COMObject> ptr) : super(ptr);

  int GetLRBChallenge(
    Pointer<Uint8> pMachineID,
    int dwMachineIDLength,
    Pointer<Uint8> pChallenge,
    int dwChallengeLength,
    Pointer<Uint8> pChallengeOutput,
    Pointer<Uint32> pdwChallengeOutputLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pMachineID,
            Uint32 dwMachineIDLength,
            Pointer<Uint8> pChallenge,
            Uint32 dwChallengeLength,
            Pointer<Uint8> pChallengeOutput,
            Pointer<Uint32> pdwChallengeOutputLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pMachineID,
            int dwMachineIDLength,
            Pointer<Uint8> pChallenge,
            int dwChallengeLength,
            Pointer<Uint8> pChallengeOutput,
            Pointer<Uint32> pdwChallengeOutputLength,
          )>()(
        ptr.ref.lpVtbl,
        pMachineID,
        dwMachineIDLength,
        pChallenge,
        dwChallengeLength,
        pChallengeOutput,
        pdwChallengeOutputLength,
      );

  int ProcessLRB(
    Pointer<Uint8> pSignedLRB,
    int dwSignedLRBLength,
    Pointer<Uint8> pSignedACK,
    Pointer<Uint32> pdwSignedACKLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pSignedLRB,
            Uint32 dwSignedLRBLength,
            Pointer<Uint8> pSignedACK,
            Pointer<Uint32> pdwSignedACKLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pSignedLRB,
            int dwSignedLRBLength,
            Pointer<Uint8> pSignedACK,
            Pointer<Uint32> pdwSignedACKLength,
          )>()(
        ptr.ref.lpVtbl,
        pSignedLRB,
        dwSignedLRBLength,
        pSignedACK,
        pdwSignedACKLength,
      );
}

// IOPMVideoOutput.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOPMVideoOutput = '{0A15159D-41C7-4456-93E1-284CD61D4E8D}';

/// {@category Interface}
/// {@category com}
class IOPMVideoOutput extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IOPMVideoOutput(Pointer<COMObject> ptr) : super(ptr);

  int StartInitialization(
    Pointer<OPM_RANDOM_NUMBER> prnRandomNumber,
    Pointer<Pointer<Uint8>> ppbCertificate,
    Pointer<Uint32> pulCertificateLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OPM_RANDOM_NUMBER> prnRandomNumber,
            Pointer<Pointer<Uint8>> ppbCertificate,
            Pointer<Uint32> pulCertificateLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OPM_RANDOM_NUMBER> prnRandomNumber,
            Pointer<Pointer<Uint8>> ppbCertificate,
            Pointer<Uint32> pulCertificateLength,
          )>()(
        ptr.ref.lpVtbl,
        prnRandomNumber,
        ppbCertificate,
        pulCertificateLength,
      );

  int FinishInitialization(
    Pointer<OPM_ENCRYPTED_INITIALIZATION_PARAMETERS> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OPM_ENCRYPTED_INITIALIZATION_PARAMETERS> pParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OPM_ENCRYPTED_INITIALIZATION_PARAMETERS> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
      );

  int GetInformation(
    Pointer<OPM_GET_INFO_PARAMETERS> pParameters,
    Pointer<OPM_REQUESTED_INFORMATION> pRequestedInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OPM_GET_INFO_PARAMETERS> pParameters,
            Pointer<OPM_REQUESTED_INFORMATION> pRequestedInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OPM_GET_INFO_PARAMETERS> pParameters,
            Pointer<OPM_REQUESTED_INFORMATION> pRequestedInformation,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
        pRequestedInformation,
      );

  int COPPCompatibleGetInformation(
    Pointer<OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS> pParameters,
    Pointer<OPM_REQUESTED_INFORMATION> pRequestedInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS> pParameters,
            Pointer<OPM_REQUESTED_INFORMATION> pRequestedInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS> pParameters,
            Pointer<OPM_REQUESTED_INFORMATION> pRequestedInformation,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
        pRequestedInformation,
      );

  int Configure(
    Pointer<OPM_CONFIGURE_PARAMETERS> pParameters,
    int ulAdditionalParametersSize,
    Pointer<Uint8> pbAdditionalParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OPM_CONFIGURE_PARAMETERS> pParameters,
            Uint32 ulAdditionalParametersSize,
            Pointer<Uint8> pbAdditionalParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OPM_CONFIGURE_PARAMETERS> pParameters,
            int ulAdditionalParametersSize,
            Pointer<Uint8> pbAdditionalParameters,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
        ulAdditionalParametersSize,
        pbAdditionalParameters,
      );
}

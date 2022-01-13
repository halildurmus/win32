// IApoAuxiliaryInputConfiguration.dart

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
import '../../../media/audio/apo/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/apo/IAudioMediaType.dart';

/// @nodoc
const IID_IApoAuxiliaryInputConfiguration =
    '{4CEB0AAB-FA19-48ED-A857-87771AE1B768}';

/// {@category Interface}
/// {@category com}
class IApoAuxiliaryInputConfiguration extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IApoAuxiliaryInputConfiguration(Pointer<COMObject> ptr) : super(ptr);

  int AddAuxiliaryInput(
    int dwInputId,
    int cbDataSize,
    Pointer<Uint8> pbyData,
    Pointer<APO_CONNECTION_DESCRIPTOR> pInputConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputId,
            Uint32 cbDataSize,
            Pointer<Uint8> pbyData,
            Pointer<APO_CONNECTION_DESCRIPTOR> pInputConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputId,
            int cbDataSize,
            Pointer<Uint8> pbyData,
            Pointer<APO_CONNECTION_DESCRIPTOR> pInputConnection,
          )>()(
        ptr.ref.lpVtbl,
        dwInputId,
        cbDataSize,
        pbyData,
        pInputConnection,
      );

  int RemoveAuxiliaryInput(
    int dwInputId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputId,
          )>()(
        ptr.ref.lpVtbl,
        dwInputId,
      );

  int IsInputFormatSupported(
    Pointer<COMObject> pRequestedInputFormat,
    Pointer<Pointer<COMObject>> ppSupportedInputFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRequestedInputFormat,
            Pointer<Pointer<COMObject>> ppSupportedInputFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRequestedInputFormat,
            Pointer<Pointer<COMObject>> ppSupportedInputFormat,
          )>()(
        ptr.ref.lpVtbl,
        pRequestedInputFormat,
        ppSupportedInputFormat,
      );
}

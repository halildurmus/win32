// ISpPhrase.dart

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
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpPhrase = '{1A5C0354-B621-4B5A-8791-D306ED379E53}';

/// {@category Interface}
/// {@category com}
class ISpPhrase extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISpPhrase(Pointer<COMObject> ptr) : super(ptr);

  int GetPhrase(
    Pointer<Pointer<SPPHRASE>> ppCoMemPhrase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SPPHRASE>> ppCoMemPhrase,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SPPHRASE>> ppCoMemPhrase,
          )>()(
        ptr.ref.lpVtbl,
        ppCoMemPhrase,
      );

  int GetSerializedPhrase(
    Pointer<Pointer<SPSERIALIZEDPHRASE>> ppCoMemPhrase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SPSERIALIZEDPHRASE>> ppCoMemPhrase,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SPSERIALIZEDPHRASE>> ppCoMemPhrase,
          )>()(
        ptr.ref.lpVtbl,
        ppCoMemPhrase,
      );

  int GetText(
    int ulStart,
    int ulCount,
    int fUseTextReplacements,
    Pointer<Pointer<Utf16>> ppszCoMemText,
    Pointer<Uint8> pbDisplayAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStart,
            Uint32 ulCount,
            Int32 fUseTextReplacements,
            Pointer<Pointer<Utf16>> ppszCoMemText,
            Pointer<Uint8> pbDisplayAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStart,
            int ulCount,
            int fUseTextReplacements,
            Pointer<Pointer<Utf16>> ppszCoMemText,
            Pointer<Uint8> pbDisplayAttributes,
          )>()(
        ptr.ref.lpVtbl,
        ulStart,
        ulCount,
        fUseTextReplacements,
        ppszCoMemText,
        pbDisplayAttributes,
      );

  int Discard(
    int dwValueTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwValueTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwValueTypes,
          )>()(
        ptr.ref.lpVtbl,
        dwValueTypes,
      );
}

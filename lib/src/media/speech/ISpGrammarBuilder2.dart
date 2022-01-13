// ISpGrammarBuilder2.dart

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
const IID_ISpGrammarBuilder2 = '{8AB10026-20CC-4B20-8C22-A49C9BA78F60}';

/// {@category Interface}
/// {@category com}
class ISpGrammarBuilder2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpGrammarBuilder2(Pointer<COMObject> ptr) : super(ptr);

  int AddTextSubset(
    Pointer<SPSTATEHANDLE__> hFromState,
    Pointer<SPSTATEHANDLE__> hToState,
    Pointer<Utf16> psz,
    int eMatchMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hFromState,
            Pointer<SPSTATEHANDLE__> hToState,
            Pointer<Utf16> psz,
            Int32 eMatchMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hFromState,
            Pointer<SPSTATEHANDLE__> hToState,
            Pointer<Utf16> psz,
            int eMatchMode,
          )>()(
        ptr.ref.lpVtbl,
        hFromState,
        hToState,
        psz,
        eMatchMode,
      );

  int SetPhoneticAlphabet(
    int phoneticALphabet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 phoneticALphabet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int phoneticALphabet,
          )>()(
        ptr.ref.lpVtbl,
        phoneticALphabet,
      );
}

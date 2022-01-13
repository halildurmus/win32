// ISpContainerLexicon.dart

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

import '../../media/speech/ISpLexicon.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpContainerLexicon = '{8565572F-C094-41CC-B56E-10BD9C3FF044}';

/// {@category Interface}
/// {@category com}
class ISpContainerLexicon extends ISpLexicon {
  // vtable begins at 9, is 1 entries long.
  ISpContainerLexicon(Pointer<COMObject> ptr) : super(ptr);

  int AddLexicon(
    Pointer<COMObject> pAddLexicon,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAddLexicon,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAddLexicon,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pAddLexicon,
        dwFlags,
      );
}

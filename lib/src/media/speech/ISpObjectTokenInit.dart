// ISpObjectTokenInit.dart

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

import '../../media/speech/ISpObjectToken.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpDataKey.dart';

/// @nodoc
const IID_ISpObjectTokenInit = '{B8AAB0CF-346F-49D8-9499-C8B03F161D51}';

/// {@category Interface}
/// {@category com}
class ISpObjectTokenInit extends ISpObjectToken {
  // vtable begins at 25, is 1 entries long.
  ISpObjectTokenInit(Pointer<COMObject> ptr) : super(ptr);

  int InitFromDataKey(
    Pointer<Utf16> pszCategoryId,
    Pointer<Utf16> pszTokenId,
    Pointer<COMObject> pDataKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCategoryId,
            Pointer<Utf16> pszTokenId,
            Pointer<COMObject> pDataKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCategoryId,
            Pointer<Utf16> pszTokenId,
            Pointer<COMObject> pDataKey,
          )>()(
        ptr.ref.lpVtbl,
        pszCategoryId,
        pszTokenId,
        pDataKey,
      );
}

// IInitializeWithFile.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInitializeWithFile = '{B7D14566-0509-4CCE-A71F-0A554233BD9B}';

/// {@category Interface}
/// {@category com}
class IInitializeWithFile extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeWithFile(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszFilePath,
    int grfMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFilePath,
            Uint32 grfMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFilePath,
            int grfMode,
          )>()(
        ptr.ref.lpVtbl,
        pszFilePath,
        grfMode,
      );
}

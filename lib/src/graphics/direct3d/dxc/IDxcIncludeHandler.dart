// IDxcIncludeHandler.dart

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
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';

/// @nodoc
const IID_IDxcIncludeHandler = '{7F61FC7D-950D-467F-B3E3-3C02FB49187C}';

/// {@category Interface}
/// {@category com}
class IDxcIncludeHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDxcIncludeHandler(Pointer<COMObject> ptr) : super(ptr);

  int LoadSource(
    Pointer<Utf16> pFilename,
    Pointer<Pointer<COMObject>> ppIncludeSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pFilename,
            Pointer<Pointer<COMObject>> ppIncludeSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pFilename,
            Pointer<Pointer<COMObject>> ppIncludeSource,
          )>()(
        ptr.ref.lpVtbl,
        pFilename,
        ppIncludeSource,
      );
}

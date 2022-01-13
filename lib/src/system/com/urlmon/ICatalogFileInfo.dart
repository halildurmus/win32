// ICatalogFileInfo.dart

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
const IID_ICatalogFileInfo = '{711C7600-6B48-11D1-B403-00AA00B92AF1}';

/// {@category Interface}
/// {@category com}
class ICatalogFileInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICatalogFileInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetCatalogFile(
    Pointer<Pointer<Utf8>> ppszCatalogFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf8>> ppszCatalogFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf8>> ppszCatalogFile,
          )>()(
        ptr.ref.lpVtbl,
        ppszCatalogFile,
      );

  int GetJavaTrust(
    Pointer<Pointer> ppJavaTrust,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> ppJavaTrust,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> ppJavaTrust,
          )>()(
        ptr.ref.lpVtbl,
        ppJavaTrust,
      );
}

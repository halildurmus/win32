// IDDEInitializer.dart

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
import '../../../system/winrt/shell/structs.g.dart';
import '../../../ui/shell/IShellItem.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IDDEInitializer = '{30DC931F-33FC-4FFD-A168-942258CF3CA4}';

/// {@category Interface}
/// {@category com}
class IDDEInitializer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDDEInitializer(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> fileExtensionOrProtocol,
    int method,
    Pointer<Utf16> currentDirectory,
    Pointer<COMObject> execTarget,
    Pointer<COMObject> site,
    Pointer<Utf16> application,
    Pointer<Utf16> targetFile,
    Pointer<Utf16> arguments,
    Pointer<Utf16> verb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileExtensionOrProtocol,
            Int32 method,
            Pointer<Utf16> currentDirectory,
            Pointer<COMObject> execTarget,
            Pointer<COMObject> site,
            Pointer<Utf16> application,
            Pointer<Utf16> targetFile,
            Pointer<Utf16> arguments,
            Pointer<Utf16> verb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileExtensionOrProtocol,
            int method,
            Pointer<Utf16> currentDirectory,
            Pointer<COMObject> execTarget,
            Pointer<COMObject> site,
            Pointer<Utf16> application,
            Pointer<Utf16> targetFile,
            Pointer<Utf16> arguments,
            Pointer<Utf16> verb,
          )>()(
        ptr.ref.lpVtbl,
        fileExtensionOrProtocol,
        method,
        currentDirectory,
        execTarget,
        site,
        application,
        targetFile,
        arguments,
        verb,
      );
}

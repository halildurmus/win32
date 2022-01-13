// IAssemblyLocator.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IAssemblyLocator = '{391FFBB9-A8EE-432A-ABC8-BAA238DAB90F}';

/// {@category Interface}
/// {@category com}
class IAssemblyLocator extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IAssemblyLocator(Pointer<COMObject> ptr) : super(ptr);

  int GetModules(
    Pointer<Utf16> applicationDir,
    Pointer<Utf16> applicationName,
    Pointer<Utf16> assemblyName,
    Pointer<Pointer<SAFEARRAY>> pModules,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> applicationDir,
            Pointer<Utf16> applicationName,
            Pointer<Utf16> assemblyName,
            Pointer<Pointer<SAFEARRAY>> pModules,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> applicationDir,
            Pointer<Utf16> applicationName,
            Pointer<Utf16> assemblyName,
            Pointer<Pointer<SAFEARRAY>> pModules,
          )>()(
        ptr.ref.lpVtbl,
        applicationDir,
        applicationName,
        assemblyName,
        pModules,
      );
}

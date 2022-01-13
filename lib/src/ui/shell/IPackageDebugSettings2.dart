// IPackageDebugSettings2.dart

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

import '../../ui/shell/IPackageDebugSettings.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPackageDebugSettings2 = '{6E3194BB-AB82-4D22-93F5-FABDA40E7B16}';

/// {@category Interface}
/// {@category com}
class IPackageDebugSettings2 extends IPackageDebugSettings {
  // vtable begins at 18, is 1 entries long.
  IPackageDebugSettings2(Pointer<COMObject> ptr) : super(ptr);

  int EnumerateApps(
    Pointer<Utf16> packageFullName,
    Pointer<Uint32> appCount,
    Pointer<Pointer<Pointer<Utf16>>> appUserModelIds,
    Pointer<Pointer<Pointer<Utf16>>> appDisplayNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Uint32> appCount,
            Pointer<Pointer<Pointer<Utf16>>> appUserModelIds,
            Pointer<Pointer<Pointer<Utf16>>> appDisplayNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> packageFullName,
            Pointer<Uint32> appCount,
            Pointer<Pointer<Pointer<Utf16>>> appUserModelIds,
            Pointer<Pointer<Pointer<Utf16>>> appDisplayNames,
          )>()(
        ptr.ref.lpVtbl,
        packageFullName,
        appCount,
        appUserModelIds,
        appDisplayNames,
      );
}

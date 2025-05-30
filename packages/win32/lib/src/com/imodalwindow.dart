// imodalwindow.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

/// Exposes a method that represents a modal window.
///
/// {@category com}
class IModalWindow extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IModalWindow(super.ptr);

  factory IModalWindow.from(IUnknown interface) =>
      IModalWindow(interface.toInterface(IID_IModalWindow));

  int show(int hwndOwner) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<NativeFunction<Int32 Function(Pointer, IntPtr hwndOwner)>>
          >()
          .value
          .asFunction<int Function(Pointer, int hwndOwner)>()(
        ptr.ref.lpVtbl,
        hwndOwner,
      );
}

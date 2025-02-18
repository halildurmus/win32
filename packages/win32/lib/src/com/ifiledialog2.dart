// ifiledialog2.dart

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
import 'ifiledialog.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IFileDialog2 = '{61744fc7-85b5-4791-a9b0-272276309b13}';

/// Extends the IFileDialog interface by providing methods that allow the
/// caller to name a specific, restricted location that can be browsed in
/// the common file dialog as well as to specify alternate text to display
/// as a label on the Cancel button.
///
/// {@category com}
class IFileDialog2 extends IFileDialog {
  // vtable begins at 27, is 2 entries long.
  IFileDialog2(super.ptr);

  factory IFileDialog2.from(IUnknown interface) =>
      IFileDialog2(interface.toInterface(IID_IFileDialog2));

  int setCancelButtonLabel(Pointer<Utf16> pszLabel) => (ptr.ref.vtable + 27)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszLabel)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> pszLabel)>()(
    ptr.ref.lpVtbl,
    pszLabel,
  );

  int setNavigationRoot(Pointer<COMObject> psi) => (ptr.ref.vtable + 28)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<COMObject> psi)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> psi)>()(
    ptr.ref.lpVtbl,
    psi,
  );
}

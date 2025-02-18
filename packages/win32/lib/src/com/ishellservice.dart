// ishellservice.dart

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
const IID_IShellService = '{5836fb00-8187-11cf-a12b-00aa004ae837}';

/// IShellService Exposes one method that declares ownership when a service
/// component implementing a certain interface is shared among multiple
/// clients, such as Windows Internet Explorer and Windows Explorer.
///
/// {@category com}
class IShellService extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShellService(super.ptr);

  factory IShellService.from(IUnknown interface) =>
      IShellService(interface.toInterface(IID_IShellService));

  int setOwner(Pointer<COMObject> punkOwner) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> punkOwner)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> punkOwner)>()(
    ptr.ref.lpVtbl,
    punkOwner,
  );
}

// isequentialstream.dart

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
const IID_ISequentialStream = '{0c733a30-2a1c-11ce-ade5-00aa0044773d}';

/// The ISequentialStream interface supports simplified sequential access to
/// stream objects. The `IStream` interface inherits its Read and Write
/// methods from ISequentialStream.
///
/// {@category com}
class ISequentialStream extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISequentialStream(super.ptr);

  factory ISequentialStream.from(IUnknown interface) =>
      ISequentialStream(interface.toInterface(IID_ISequentialStream));

  int read(Pointer pv, int cb, Pointer<Uint32> pcbRead) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer pv,
              Uint32 cb,
              Pointer<Uint32> pcbRead,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer pv, int cb, Pointer<Uint32> pcbRead)
      >()(ptr.ref.lpVtbl, pv, cb, pcbRead);

  int write(Pointer pv, int cb, Pointer<Uint32> pcbWritten) => (ptr.ref.vtable +
          4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer pv,
              Uint32 cb,
              Pointer<Uint32> pcbWritten,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer pv, int cb, Pointer<Uint32> pcbWritten)
      >()(ptr.ref.lpVtbl, pv, cb, pcbWritten);
}

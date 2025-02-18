// ifileisinuse.dart

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
const IID_IFileIsInUse = '{64a1cbf0-3a1a-4461-9158-376969693950}';

/// Exposes methods that can be called to get information on or close a file
/// that is in use by another application. When an application attempts to
/// access a file and finds that file already in use, it can use the methods
/// of this interface to gather information to present to the user in a
/// dialog box.
///
/// {@category com}
class IFileIsInUse extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IFileIsInUse(super.ptr);

  factory IFileIsInUse.from(IUnknown interface) =>
      IFileIsInUse(interface.toInterface(IID_IFileIsInUse));

  int getAppName(Pointer<Pointer<Utf16>> ppszName) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> ppszName)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> ppszName)>()(
    ptr.ref.lpVtbl,
    ppszName,
  );

  int getUsage(Pointer<Int32> pfut) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> pfut)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pfut)>()(
    ptr.ref.lpVtbl,
    pfut,
  );

  int getCapabilities(Pointer<Uint32> pdwCapFlags) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwCapFlags)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pdwCapFlags)>()(
    ptr.ref.lpVtbl,
    pdwCapFlags,
  );

  int getSwitchToHWND(Pointer<IntPtr> phwnd) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<IntPtr> phwnd)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<IntPtr> phwnd)>()(
    ptr.ref.lpVtbl,
    phwnd,
  );

  int closeFile() => (ptr.ref.vtable + 7)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

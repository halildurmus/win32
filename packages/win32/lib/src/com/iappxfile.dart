// iappxfile.dart

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
const IID_IAppxFile = '{91df827b-94fd-468f-827b-57f41b2f6f2e}';

/// Retrieves information about a payload or footprint file in a package.
///
/// {@category com}
class IAppxFile extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAppxFile(super.ptr);

  factory IAppxFile.from(IUnknown interface) =>
      IAppxFile(interface.toInterface(IID_IAppxFile));

  int getCompressionOption(
    Pointer<Int32> compressionOption,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Int32> compressionOption)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> compressionOption)>()(
    ptr.ref.lpVtbl,
    compressionOption,
  );

  int getContentType(Pointer<Pointer<Utf16>> contentType) => (ptr.ref.vtable +
          4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> contentType)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> contentType)>()(
    ptr.ref.lpVtbl,
    contentType,
  );

  int getName(Pointer<Pointer<Utf16>> fileName) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> fileName)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> fileName)>()(
    ptr.ref.lpVtbl,
    fileName,
  );

  int getSize(Pointer<Uint64> size) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Uint64> size)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint64> size)>()(
    ptr.ref.lpVtbl,
    size,
  );

  int getStream(Pointer<Pointer<COMObject>> stream) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> stream)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> stream)>()(
    ptr.ref.lpVtbl,
    stream,
  );
}

// IAppxManifestProperties.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IAppxManifestProperties = '{03FAF64D-F26F-4B2C-AAF7-8FE7789B8BCA}';

typedef _GetBoolValue_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> name, Pointer<Int32> value);
typedef _GetBoolValue_Dart = int Function(
    Pointer obj, Pointer<Utf16> name, Pointer<Int32> value);

typedef _GetStringValue_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> name, Pointer<Pointer<Utf16>> value);
typedef _GetStringValue_Dart = int Function(
    Pointer obj, Pointer<Utf16> name, Pointer<Pointer<Utf16>> value);

/// {@category Interface}
/// {@category com}
class IAppxManifestProperties extends IUnknown {
  // vtable begins at 3, ends at 4

  IAppxManifestProperties(Pointer<COMObject> ptr) : super(ptr);

  int GetBoolValue(Pointer<Utf16> name, Pointer<Int32> value) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_GetBoolValue_Native>>>()
          .value
          .asFunction<_GetBoolValue_Dart>()(ptr.ref.lpVtbl, name, value);

  int GetStringValue(Pointer<Utf16> name, Pointer<Pointer<Utf16>> value) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<Pointer<NativeFunction<_GetStringValue_Native>>>()
          .value
          .asFunction<_GetStringValue_Dart>()(ptr.ref.lpVtbl, name, value);
}

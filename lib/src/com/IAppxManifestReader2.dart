// IAppxManifestReader2.dart

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

import 'IAppxManifestReader.dart';

/// @nodoc
const IID_IAppxManifestReader2 = '{D06F67BC-B31D-4EBA-A8AF-638E73E77B4D}';

typedef _GetQualifiedResources_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> resources);
typedef _GetQualifiedResources_Dart = int Function(
    Pointer obj, Pointer<Pointer> resources);

/// {@category Interface}
/// {@category com}
class IAppxManifestReader2 extends IAppxManifestReader {
  // vtable begins at 12, ends at 12

  IAppxManifestReader2(Pointer<COMObject> ptr) : super(ptr);

  int GetQualifiedResources(Pointer<Pointer> resources) =>
      Pointer<NativeFunction<_GetQualifiedResources_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_GetQualifiedResources_Dart>()(ptr.ref.lpVtbl, resources);
}

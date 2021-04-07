// IAppxManifestReader4.dart

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

import 'IAppxManifestReader3.dart';

/// @nodoc
const IID_IAppxManifestReader4 = '{4579BB7C-741D-4161-B5A1-47BD3B78AD9B}';

typedef _GetOptionalPackageInfo_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> optionalPackageInfo);
typedef _GetOptionalPackageInfo_Dart = int Function(
    Pointer obj, Pointer<Pointer> optionalPackageInfo);

/// {@category Interface}
/// {@category com}
class IAppxManifestReader4 extends IAppxManifestReader3 {
  // vtable begins at 15, ends at 15

  IAppxManifestReader4(Pointer<COMObject> ptr) : super(ptr);

  int GetOptionalPackageInfo(Pointer<Pointer> optionalPackageInfo) =>
      Pointer<NativeFunction<_GetOptionalPackageInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_GetOptionalPackageInfo_Dart>()(
          ptr.ref.lpVtbl, optionalPackageInfo);
}

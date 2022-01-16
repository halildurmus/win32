// IAppxManifestReader5.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IAppxManifestReader5 = '{8D7AE132-A690-4C00-B75A-6AAE1FEAAC80}';

/// {@category Interface}
/// {@category com}
class IAppxManifestReader5 extends IUnknown {
  // vtable begins at 3, ends at 3
  IAppxManifestReader5(Pointer<COMObject> ptr) : super(ptr);

  int GetMainPackageDependencies(
          Pointer<Pointer<COMObject>> mainPackageDependencies) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer<COMObject>>
                                  mainPackageDependencies)>>>()
              .value
              .asFunction<
                  int Function(Pointer,
                      Pointer<Pointer<COMObject>> mainPackageDependencies)>()(
          ptr.ref.lpVtbl, mainPackageDependencies);
}

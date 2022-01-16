// IAppxFilesEnumerator.dart

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
const IID_IAppxFilesEnumerator = '{F007EEAF-9831-411C-9847-917CDC62D1FE}';

/// {@category Interface}
/// {@category com}
class IAppxFilesEnumerator extends IUnknown {
  // vtable begins at 3, ends at 5
  IAppxFilesEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrent(Pointer<Pointer<COMObject>> file) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<Pointer<COMObject>> file)>>>()
      .value
      .asFunction<
          int Function(Pointer,
              Pointer<Pointer<COMObject>> file)>()(ptr.ref.lpVtbl, file);

  int GetHasCurrent(Pointer<Int32> hasCurrent) => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> hasCurrent)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Int32> hasCurrent)>()(
      ptr.ref.lpVtbl, hasCurrent);

  int MoveNext(Pointer<Int32> hasNext) => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> hasNext)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Int32> hasNext)>()(
      ptr.ref.lpVtbl, hasNext);
}

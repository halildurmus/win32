// ICoreFragmentInspector.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../system/windowssync/ICoreFragment.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICoreFragmentInspector = '{F7FCC5FD-AE26-4679-BA16-96AAC583C134}';

/// {@category Interface}
/// {@category com}
class ICoreFragmentInspector extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICoreFragmentInspector(Pointer<COMObject> ptr) : super(ptr);

  int NextCoreFragments(
    int requestedCount,
    Pointer<Pointer<COMObject>> ppiCoreFragments,
    Pointer<Uint32> pFetchedCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 requestedCount,
            Pointer<Pointer<COMObject>> ppiCoreFragments,
            Pointer<Uint32> pFetchedCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int requestedCount,
            Pointer<Pointer<COMObject>> ppiCoreFragments,
            Pointer<Uint32> pFetchedCount,
          )>()(
        ptr.ref.lpVtbl,
        requestedCount,
        ppiCoreFragments,
        pFetchedCount,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

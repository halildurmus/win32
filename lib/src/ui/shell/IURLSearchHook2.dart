// IURLSearchHook2.dart

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

import '../../ui/shell/IURLSearchHook.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/ISearchContext.dart';

/// @nodoc
const IID_IURLSearchHook2 = '{5EE44DA4-6D32-46E3-86BC-07540DEDD0E0}';

/// {@category Interface}
/// {@category com}
class IURLSearchHook2 extends IURLSearchHook {
  // vtable begins at 4, is 1 entries long.
  IURLSearchHook2(Pointer<COMObject> ptr) : super(ptr);

  int TranslateWithSearchContext(
    Pointer<Utf16> pwszSearchURL,
    int cchBufferSize,
    Pointer<COMObject> pSearchContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszSearchURL,
            Uint32 cchBufferSize,
            Pointer<COMObject> pSearchContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszSearchURL,
            int cchBufferSize,
            Pointer<COMObject> pSearchContext,
          )>()(
        ptr.ref.lpVtbl,
        pwszSearchURL,
        cchBufferSize,
        pSearchContext,
      );
}

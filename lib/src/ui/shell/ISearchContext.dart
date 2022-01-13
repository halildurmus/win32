// ISearchContext.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISearchContext = '{09F656A2-41AF-480C-88F7-16CC0D164615}';

/// {@category Interface}
/// {@category com}
class ISearchContext extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISearchContext(Pointer<COMObject> ptr) : super(ptr);

  int GetSearchUrl(
    Pointer<Pointer<Utf16>> pbstrSearchUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSearchUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSearchUrl,
          )>()(
        ptr.ref.lpVtbl,
        pbstrSearchUrl,
      );

  int GetSearchText(
    Pointer<Pointer<Utf16>> pbstrSearchText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSearchText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSearchText,
          )>()(
        ptr.ref.lpVtbl,
        pbstrSearchText,
      );

  int GetSearchStyle(
    Pointer<Uint32> pdwSearchStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSearchStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSearchStyle,
          )>()(
        ptr.ref.lpVtbl,
        pdwSearchStyle,
      );
}

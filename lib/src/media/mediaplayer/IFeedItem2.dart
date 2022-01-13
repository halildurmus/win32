// IFeedItem2.dart

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

import '../../media/mediaplayer/IFeedItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFeedItem2 = '{79AC9EF4-F9C1-4D2B-A50B-A7FFBA4DCF37}';

/// {@category Interface}
/// {@category com}
class IFeedItem2 extends IFeedItem {
  // vtable begins at 24, is 1 entries long.
  IFeedItem2(Pointer<COMObject> ptr) : super(ptr);

  int get EffectiveId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> effectiveId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> effectiveId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

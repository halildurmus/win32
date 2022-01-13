// IWMPDownloadItem2.dart

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

import '../../media/mediaplayer/IWMPDownloadItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPDownloadItem2 = '{9FBB3336-6DA3-479D-B8FF-67D46E20A987}';

/// {@category Interface}
/// {@category com}
class IWMPDownloadItem2 extends IWMPDownloadItem {
  // vtable begins at 15, is 1 entries long.
  IWMPDownloadItem2(Pointer<COMObject> ptr) : super(ptr);

  int getItemInfo(
    Pointer<Utf16> bstrItemName,
    Pointer<Pointer<Utf16>> pbstrVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
        pbstrVal,
      );
}

// IMFHttpDownloadSessionProvider.dart

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
import '../../media/mediafoundation/IMFHttpDownloadSession.dart';

/// @nodoc
const IID_IMFHttpDownloadSessionProvider =
    '{1B4CF4B9-3A16-4115-839D-03CC5C99DF01}';

/// {@category Interface}
/// {@category com}
class IMFHttpDownloadSessionProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFHttpDownloadSessionProvider(Pointer<COMObject> ptr) : super(ptr);

  int CreateHttpDownloadSession(
    Pointer<Utf16> wszScheme,
    Pointer<Pointer<COMObject>> ppDownloadSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszScheme,
            Pointer<Pointer<COMObject>> ppDownloadSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszScheme,
            Pointer<Pointer<COMObject>> ppDownloadSession,
          )>()(
        ptr.ref.lpVtbl,
        wszScheme,
        ppDownloadSession,
      );
}

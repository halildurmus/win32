// IOfflineFilesEvents3.dart

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

import '../../storage/offlinefiles/IOfflineFilesEvents2.dart';
import '../../foundation/structs.g.dart';
import '../../storage/offlinefiles/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesEvents3 = '{9BA04A45-EE69-42F0-9AB1-7DB5C8805808}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesEvents3 extends IOfflineFilesEvents2 {
  // vtable begins at 37, is 3 entries long.
  IOfflineFilesEvents3(Pointer<COMObject> ptr) : super(ptr);

  int TransparentCacheItemNotify(
    Pointer<Utf16> pszPath,
    int EventType,
    int ItemType,
    int bModifiedData,
    int bModifiedAttributes,
    Pointer<Utf16> pzsOldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 EventType,
            Int32 ItemType,
            Int32 bModifiedData,
            Int32 bModifiedAttributes,
            Pointer<Utf16> pzsOldPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int EventType,
            int ItemType,
            int bModifiedData,
            int bModifiedAttributes,
            Pointer<Utf16> pzsOldPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        EventType,
        ItemType,
        bModifiedData,
        bModifiedAttributes,
        pzsOldPath,
      );

  int PrefetchFileBegin(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  int PrefetchFileEnd(
    Pointer<Utf16> pszPath,
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        hrResult,
      );
}

// IOfflineFilesShareInfo.dart

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
import '../../storage/offlinefiles/IOfflineFilesShareItem.dart';
import '../../foundation/structs.g.dart';
import '../../storage/offlinefiles/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesShareInfo = '{7BCC43E7-31CE-4CA4-8CCD-1CFF2DC494DA}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesShareInfo extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOfflineFilesShareInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetShareItem(
    Pointer<Pointer<COMObject>> ppShareItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppShareItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppShareItem,
          )>()(
        ptr.ref.lpVtbl,
        ppShareItem,
      );

  int GetShareCachingMode(
    Pointer<Int32> pCachingMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCachingMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCachingMode,
          )>()(
        ptr.ref.lpVtbl,
        pCachingMode,
      );

  int IsShareDfsJunction(
    Pointer<Int32> pbIsDfsJunction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIsDfsJunction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIsDfsJunction,
          )>()(
        ptr.ref.lpVtbl,
        pbIsDfsJunction,
      );
}

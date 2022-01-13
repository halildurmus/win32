// IBitsPeerCacheRecord.dart

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
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';

/// @nodoc
const IID_IBitsPeerCacheRecord = '{659CDEAF-489E-11D9-A9CD-000D56965251}';

/// {@category Interface}
/// {@category com}
class IBitsPeerCacheRecord extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IBitsPeerCacheRecord(Pointer<COMObject> ptr) : super(ptr);

  int GetId(
    Pointer<GUID> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetOriginUrl(
    Pointer<Pointer<Utf16>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetFileSize(
    Pointer<Uint64> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetFileModificationTime(
    Pointer<FILETIME> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetLastAccessTime(
    Pointer<FILETIME> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int IsFileValidated() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetFileRanges(
    Pointer<Uint32> pRangeCount,
    Pointer<Pointer<BG_FILE_RANGE>> ppRanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRangeCount,
            Pointer<Pointer<BG_FILE_RANGE>> ppRanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRangeCount,
            Pointer<Pointer<BG_FILE_RANGE>> ppRanges,
          )>()(
        ptr.ref.lpVtbl,
        pRangeCount,
        ppRanges,
      );
}

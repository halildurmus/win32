// IOfflineFilesItemFilter.dart

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
import '../../storage/offlinefiles/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesItemFilter = '{F4B5A26C-DC05-4F20-ADA4-551F1077BE5C}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesItemFilter extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOfflineFilesItemFilter(Pointer<COMObject> ptr) : super(ptr);

  int GetFilterFlags(
    Pointer<Uint64> pullFlags,
    Pointer<Uint64> pullMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullFlags,
            Pointer<Uint64> pullMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullFlags,
            Pointer<Uint64> pullMask,
          )>()(
        ptr.ref.lpVtbl,
        pullFlags,
        pullMask,
      );

  int GetTimeFilter(
    Pointer<FILETIME> pftTime,
    Pointer<Int32> pbEvalTimeOfDay,
    Pointer<Int32> pTimeType,
    Pointer<Int32> pCompare,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pftTime,
            Pointer<Int32> pbEvalTimeOfDay,
            Pointer<Int32> pTimeType,
            Pointer<Int32> pCompare,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pftTime,
            Pointer<Int32> pbEvalTimeOfDay,
            Pointer<Int32> pTimeType,
            Pointer<Int32> pCompare,
          )>()(
        ptr.ref.lpVtbl,
        pftTime,
        pbEvalTimeOfDay,
        pTimeType,
        pCompare,
      );

  int GetPatternFilter(
    Pointer<Utf16> pszPattern,
    int cchPattern,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPattern,
            Uint32 cchPattern,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPattern,
            int cchPattern,
          )>()(
        ptr.ref.lpVtbl,
        pszPattern,
        cchPattern,
      );
}

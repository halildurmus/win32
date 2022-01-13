// ICombinedFilterInfo.dart

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

import '../../system/windowssync/ISyncFilterInfo.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/structs.g.dart';

/// @nodoc
const IID_ICombinedFilterInfo = '{11F9DE71-2818-4779-B2AC-42D450565F45}';

/// {@category Interface}
/// {@category com}
class ICombinedFilterInfo extends ISyncFilterInfo {
  // vtable begins at 4, is 3 entries long.
  ICombinedFilterInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetFilterCount(
    Pointer<Uint32> pdwFilterCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFilterCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFilterCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwFilterCount,
      );

  int GetFilterInfo(
    int dwFilterIndex,
    Pointer<Pointer<COMObject>> ppIFilterInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFilterIndex,
            Pointer<Pointer<COMObject>> ppIFilterInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFilterIndex,
            Pointer<Pointer<COMObject>> ppIFilterInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwFilterIndex,
        ppIFilterInfo,
      );

  int GetFilterCombinationType(
    Pointer<Int32> pFilterCombinationType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFilterCombinationType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFilterCombinationType,
          )>()(
        ptr.ref.lpVtbl,
        pFilterCombinationType,
      );
}

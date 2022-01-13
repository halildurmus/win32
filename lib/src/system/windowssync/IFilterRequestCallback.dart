// IFilterRequestCallback.dart

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
import '../../specialTypes.dart';
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFilterRequestCallback = '{82DF8873-6360-463A-A8A1-EDE5E1A1594D}';

/// {@category Interface}
/// {@category com}
class IFilterRequestCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IFilterRequestCallback(Pointer<COMObject> ptr) : super(ptr);

  int RequestFilter(
    Pointer<COMObject> pFilter,
    int filteringType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
            Int32 filteringType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
            int filteringType,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
        filteringType,
      );
}

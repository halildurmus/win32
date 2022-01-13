// IVisualTreeServiceCallback.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../ui/xaml/diagnostics/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IVisualTreeServiceCallback = '{AA7A8931-80E4-4FEC-8F3B-553F87B4966E}';

/// {@category Interface}
/// {@category com}
class IVisualTreeServiceCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVisualTreeServiceCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnVisualTreeChange(
    ParentChildRelation relation,
    VisualElement element,
    int mutationType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            ParentChildRelation relation,
            VisualElement element,
            Int32 mutationType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            ParentChildRelation relation,
            VisualElement element,
            int mutationType,
          )>()(
        ptr.ref.lpVtbl,
        relation,
        element,
        mutationType,
      );
}

// IUIAutomationTableItemPattern.dart

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
import '../../ui/accessibility/IUIAutomationElementArray.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationTableItemPattern =
    '{0B964EB3-EF2E-4464-9C79-61D61737A27E}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTableItemPattern extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IUIAutomationTableItemPattern(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentRowHeaderItems(
    Pointer<Pointer<COMObject>> retVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>()(
        ptr.ref.lpVtbl,
        retVal,
      );

  int GetCurrentColumnHeaderItems(
    Pointer<Pointer<COMObject>> retVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>()(
        ptr.ref.lpVtbl,
        retVal,
      );

  int GetCachedRowHeaderItems(
    Pointer<Pointer<COMObject>> retVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>()(
        ptr.ref.lpVtbl,
        retVal,
      );

  int GetCachedColumnHeaderItems(
    Pointer<Pointer<COMObject>> retVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>()(
        ptr.ref.lpVtbl,
        retVal,
      );
}

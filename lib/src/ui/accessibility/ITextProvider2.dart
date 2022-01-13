// ITextProvider2.dart

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

import '../../ui/accessibility/ITextProvider.dart';
import '../../ui/accessibility/IRawElementProviderSimple.dart';
import '../../ui/accessibility/ITextRangeProvider.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITextProvider2 = '{0DC5E6ED-3E16-4BF1-8F9A-A979878BC195}';

/// {@category Interface}
/// {@category com}
class ITextProvider2 extends ITextProvider {
  // vtable begins at 9, is 2 entries long.
  ITextProvider2(Pointer<COMObject> ptr) : super(ptr);

  int RangeFromAnnotation(
    Pointer<COMObject> annotationElement,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> annotationElement,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> annotationElement,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        annotationElement,
        pRetVal,
      );

  int GetCaretRange(
    Pointer<Int32> isActive,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isActive,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isActive,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        isActive,
        pRetVal,
      );
}

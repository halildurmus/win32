// ITextRangeProvider.dart

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
import '../../ui/accessibility/ITextRangeProvider.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/structs.g.dart';
import '../../ui/accessibility/IRawElementProviderSimple.dart';

/// @nodoc
const IID_ITextRangeProvider = '{5347AD7B-C355-46F8-AFF5-909033582F63}';

/// {@category Interface}
/// {@category com}
class ITextRangeProvider extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  ITextRangeProvider(Pointer<COMObject> ptr) : super(ptr);

  int Clone(
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int Compare(
    Pointer<COMObject> range,
    Pointer<Int32> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> range,
            Pointer<Int32> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> range,
            Pointer<Int32> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        range,
        pRetVal,
      );

  int CompareEndpoints(
    int endpoint,
    Pointer<COMObject> targetRange,
    int targetEndpoint,
    Pointer<Int32> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 endpoint,
            Pointer<COMObject> targetRange,
            Int32 targetEndpoint,
            Pointer<Int32> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int endpoint,
            Pointer<COMObject> targetRange,
            int targetEndpoint,
            Pointer<Int32> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        endpoint,
        targetRange,
        targetEndpoint,
        pRetVal,
      );

  int ExpandToEnclosingUnit(
    int unit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 unit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unit,
          )>()(
        ptr.ref.lpVtbl,
        unit,
      );

  int FindAttribute(
    int attributeId,
    VARIANT val,
    int backward,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 attributeId,
            VARIANT val,
            Int32 backward,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int attributeId,
            VARIANT val,
            int backward,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        attributeId,
        val,
        backward,
        pRetVal,
      );

  int FindText(
    Pointer<Utf16> text,
    int backward,
    int ignoreCase,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> text,
            Int32 backward,
            Int32 ignoreCase,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> text,
            int backward,
            int ignoreCase,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        text,
        backward,
        ignoreCase,
        pRetVal,
      );

  int GetAttributeValue(
    int attributeId,
    Pointer<VARIANT> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 attributeId,
            Pointer<VARIANT> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int attributeId,
            Pointer<VARIANT> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        attributeId,
        pRetVal,
      );

  int GetBoundingRectangles(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int GetEnclosingElement(
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int GetText(
    int maxLength,
    Pointer<Pointer<Utf16>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 maxLength,
            Pointer<Pointer<Utf16>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxLength,
            Pointer<Pointer<Utf16>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        maxLength,
        pRetVal,
      );

  int Move(
    int unit,
    int count,
    Pointer<Int32> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 unit,
            Int32 count,
            Pointer<Int32> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unit,
            int count,
            Pointer<Int32> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        unit,
        count,
        pRetVal,
      );

  int MoveEndpointByUnit(
    int endpoint,
    int unit,
    int count,
    Pointer<Int32> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 endpoint,
            Int32 unit,
            Int32 count,
            Pointer<Int32> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int endpoint,
            int unit,
            int count,
            Pointer<Int32> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        endpoint,
        unit,
        count,
        pRetVal,
      );

  int MoveEndpointByRange(
    int endpoint,
    Pointer<COMObject> targetRange,
    int targetEndpoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 endpoint,
            Pointer<COMObject> targetRange,
            Int32 targetEndpoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int endpoint,
            Pointer<COMObject> targetRange,
            int targetEndpoint,
          )>()(
        ptr.ref.lpVtbl,
        endpoint,
        targetRange,
        targetEndpoint,
      );

  int Select() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int AddToSelection() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int RemoveFromSelection() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int ScrollIntoView(
    int alignToTop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 alignToTop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int alignToTop,
          )>()(
        ptr.ref.lpVtbl,
        alignToTop,
      );

  int GetChildren(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );
}

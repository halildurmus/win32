// IXTLRuntime.dart

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

import '../../../data/xml/msxml/IXMLDOMNode.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IXTLRuntime = '{3EFAA425-272F-11D2-836F-0000F87A7782}';

/// {@category Interface}
/// {@category com}
class IXTLRuntime extends IXMLDOMNode {
  // vtable begins at 43, is 9 entries long.
  IXTLRuntime(Pointer<COMObject> ptr) : super(ptr);

  int uniqueID(
    Pointer<COMObject> pNode,
    Pointer<Int32> pID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNode,
            Pointer<Int32> pID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNode,
            Pointer<Int32> pID,
          )>()(
        ptr.ref.lpVtbl,
        pNode,
        pID,
      );

  int depth(
    Pointer<COMObject> pNode,
    Pointer<Int32> pDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNode,
            Pointer<Int32> pDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNode,
            Pointer<Int32> pDepth,
          )>()(
        ptr.ref.lpVtbl,
        pNode,
        pDepth,
      );

  int childNumber(
    Pointer<COMObject> pNode,
    Pointer<Int32> pNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNode,
            Pointer<Int32> pNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNode,
            Pointer<Int32> pNumber,
          )>()(
        ptr.ref.lpVtbl,
        pNode,
        pNumber,
      );

  int ancestorChildNumber(
    Pointer<Utf16> bstrNodeName,
    Pointer<COMObject> pNode,
    Pointer<Int32> pNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrNodeName,
            Pointer<COMObject> pNode,
            Pointer<Int32> pNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrNodeName,
            Pointer<COMObject> pNode,
            Pointer<Int32> pNumber,
          )>()(
        ptr.ref.lpVtbl,
        bstrNodeName,
        pNode,
        pNumber,
      );

  int absoluteChildNumber(
    Pointer<COMObject> pNode,
    Pointer<Int32> pNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNode,
            Pointer<Int32> pNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNode,
            Pointer<Int32> pNumber,
          )>()(
        ptr.ref.lpVtbl,
        pNode,
        pNumber,
      );

  int formatIndex(
    int lIndex,
    Pointer<Utf16> bstrFormat,
    Pointer<Pointer<Utf16>> pbstrFormattedString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Utf16> bstrFormat,
            Pointer<Pointer<Utf16>> pbstrFormattedString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Utf16> bstrFormat,
            Pointer<Pointer<Utf16>> pbstrFormattedString,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        bstrFormat,
        pbstrFormattedString,
      );

  int formatNumber(
    double dblNumber,
    Pointer<Utf16> bstrFormat,
    Pointer<Pointer<Utf16>> pbstrFormattedString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dblNumber,
            Pointer<Utf16> bstrFormat,
            Pointer<Pointer<Utf16>> pbstrFormattedString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dblNumber,
            Pointer<Utf16> bstrFormat,
            Pointer<Pointer<Utf16>> pbstrFormattedString,
          )>()(
        ptr.ref.lpVtbl,
        dblNumber,
        bstrFormat,
        pbstrFormattedString,
      );

  int formatDate(
    VARIANT varDate,
    Pointer<Utf16> bstrFormat,
    VARIANT varDestLocale,
    Pointer<Pointer<Utf16>> pbstrFormattedString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varDate,
            Pointer<Utf16> bstrFormat,
            VARIANT varDestLocale,
            Pointer<Pointer<Utf16>> pbstrFormattedString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varDate,
            Pointer<Utf16> bstrFormat,
            VARIANT varDestLocale,
            Pointer<Pointer<Utf16>> pbstrFormattedString,
          )>()(
        ptr.ref.lpVtbl,
        varDate,
        bstrFormat,
        varDestLocale,
        pbstrFormattedString,
      );

  int formatTime(
    VARIANT varTime,
    Pointer<Utf16> bstrFormat,
    VARIANT varDestLocale,
    Pointer<Pointer<Utf16>> pbstrFormattedString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varTime,
            Pointer<Utf16> bstrFormat,
            VARIANT varDestLocale,
            Pointer<Pointer<Utf16>> pbstrFormattedString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varTime,
            Pointer<Utf16> bstrFormat,
            VARIANT varDestLocale,
            Pointer<Pointer<Utf16>> pbstrFormattedString,
          )>()(
        ptr.ref.lpVtbl,
        varTime,
        bstrFormat,
        varDestLocale,
        pbstrFormattedString,
      );
}

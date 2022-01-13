// IQueryRecentWinSATAssessment.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../data/xml/msxml/IXMLDOMNodeList.dart';
import '../../system/assessmenttool/IProvideWinSATResultsInfo.dart';

/// @nodoc
const IID_IQueryRecentWinSATAssessment =
    '{F8AD5D1F-3B47-4BDC-9375-7C6B1DA4ECA7}';

/// {@category Interface}
/// {@category com}
class IQueryRecentWinSATAssessment extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IQueryRecentWinSATAssessment(Pointer<COMObject> ptr) : super(ptr);

  int get_XML(
    Pointer<Utf16> xPath,
    Pointer<Utf16> namespaces,
    Pointer<Pointer<COMObject>> ppDomNodeList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> xPath,
            Pointer<Utf16> namespaces,
            Pointer<Pointer<COMObject>> ppDomNodeList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> xPath,
            Pointer<Utf16> namespaces,
            Pointer<Pointer<COMObject>> ppDomNodeList,
          )>()(
        ptr.ref.lpVtbl,
        xPath,
        namespaces,
        ppDomNodeList,
      );

  Pointer<COMObject> get Info {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWinSATAssessmentInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWinSATAssessmentInfo,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

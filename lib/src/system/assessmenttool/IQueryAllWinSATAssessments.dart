// IQueryAllWinSATAssessments.dart

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

/// @nodoc
const IID_IQueryAllWinSATAssessments = '{0B89ED1D-6398-4FEA-87FC-567D8D19176F}';

/// {@category Interface}
/// {@category com}
class IQueryAllWinSATAssessments extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IQueryAllWinSATAssessments(Pointer<COMObject> ptr) : super(ptr);

  int get_AllXML(
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
}

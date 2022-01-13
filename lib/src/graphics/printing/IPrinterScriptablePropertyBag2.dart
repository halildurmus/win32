// IPrinterScriptablePropertyBag2.dart

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

import '../../graphics/printing/IPrinterScriptablePropertyBag.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IPrinterScriptablePropertyBag2 =
    '{2A1C53C4-8638-4B3E-B518-2773C94556A3}';

/// {@category Interface}
/// {@category com}
class IPrinterScriptablePropertyBag2 extends IPrinterScriptablePropertyBag {
  // vtable begins at 17, is 1 entries long.
  IPrinterScriptablePropertyBag2(Pointer<COMObject> ptr) : super(ptr);

  int GetReadStreamAsXML(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<COMObject>> ppXmlNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppXmlNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppXmlNode,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        ppXmlNode,
      );
}

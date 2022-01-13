// ISAXXMLFilter.dart

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

import '../../../data/xml/msxml/ISAXXMLReader.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISAXXMLFilter = '{70409222-CA09-4475-ACB8-40312FE8D145}';

/// {@category Interface}
/// {@category com}
class ISAXXMLFilter extends ISAXXMLReader {
  // vtable begins at 21, is 2 entries long.
  ISAXXMLFilter(Pointer<COMObject> ptr) : super(ptr);

  int getParent(
    Pointer<Pointer<COMObject>> ppReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppReader,
          )>()(
        ptr.ref.lpVtbl,
        ppReader,
      );

  int putParent(
    Pointer<COMObject> pReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pReader,
          )>()(
        ptr.ref.lpVtbl,
        pReader,
      );
}

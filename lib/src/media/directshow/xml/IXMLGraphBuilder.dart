// IXMLGraphBuilder.dart

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
import '../../../media/directshow/IGraphBuilder.dart';
import '../../../data/xml/msxml/IXMLElement.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXMLGraphBuilder = '{1BB05960-5FBF-11D2-A521-44DF07C10000}';

/// {@category Interface}
/// {@category com}
class IXMLGraphBuilder extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IXMLGraphBuilder(Pointer<COMObject> ptr) : super(ptr);

  int BuildFromXML(
    Pointer<COMObject> pGraph,
    Pointer<COMObject> pxml,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGraph,
            Pointer<COMObject> pxml,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGraph,
            Pointer<COMObject> pxml,
          )>()(
        ptr.ref.lpVtbl,
        pGraph,
        pxml,
      );

  int SaveToXML(
    Pointer<COMObject> pGraph,
    Pointer<Pointer<Utf16>> pbstrxml,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGraph,
            Pointer<Pointer<Utf16>> pbstrxml,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGraph,
            Pointer<Pointer<Utf16>> pbstrxml,
          )>()(
        ptr.ref.lpVtbl,
        pGraph,
        pbstrxml,
      );

  int BuildFromXMLFile(
    Pointer<COMObject> pGraph,
    Pointer<Utf16> wszFileName,
    Pointer<Utf16> wszBaseURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGraph,
            Pointer<Utf16> wszFileName,
            Pointer<Utf16> wszBaseURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGraph,
            Pointer<Utf16> wszFileName,
            Pointer<Utf16> wszBaseURL,
          )>()(
        ptr.ref.lpVtbl,
        pGraph,
        wszFileName,
        wszBaseURL,
      );
}

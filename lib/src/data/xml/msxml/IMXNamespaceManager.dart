// IMXNamespaceManager.dart

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
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/IXMLDOMNode.dart';

/// @nodoc
const IID_IMXNamespaceManager = '{C90352F6-643C-4FBC-BB23-E996EB2D51FD}';

/// {@category Interface}
/// {@category com}
class IMXNamespaceManager extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IMXNamespaceManager(Pointer<COMObject> ptr) : super(ptr);

  int putAllowOverride(
    int fOverride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fOverride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fOverride,
          )>()(
        ptr.ref.lpVtbl,
        fOverride,
      );

  int getAllowOverride(
    Pointer<Int16> fOverride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> fOverride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> fOverride,
          )>()(
        ptr.ref.lpVtbl,
        fOverride,
      );

  int reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int pushContext() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int pushNodeContext(
    Pointer<COMObject> contextNode,
    int fDeep,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextNode,
            Int16 fDeep,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextNode,
            int fDeep,
          )>()(
        ptr.ref.lpVtbl,
        contextNode,
        fDeep,
      );

  int popContext() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int declarePrefix(
    Pointer<Utf16> prefix,
    Pointer<Utf16> namespaceURI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> prefix,
            Pointer<Utf16> namespaceURI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> prefix,
            Pointer<Utf16> namespaceURI,
          )>()(
        ptr.ref.lpVtbl,
        prefix,
        namespaceURI,
      );

  int getDeclaredPrefix(
    int nIndex,
    Pointer<Utf16> pwchPrefix,
    Pointer<Int32> pcchPrefix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Utf16> pwchPrefix,
            Pointer<Int32> pcchPrefix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Utf16> pwchPrefix,
            Pointer<Int32> pcchPrefix,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        pwchPrefix,
        pcchPrefix,
      );

  int getPrefix(
    Pointer<Utf16> pwszNamespaceURI,
    int nIndex,
    Pointer<Utf16> pwchPrefix,
    Pointer<Int32> pcchPrefix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszNamespaceURI,
            Int32 nIndex,
            Pointer<Utf16> pwchPrefix,
            Pointer<Int32> pcchPrefix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszNamespaceURI,
            int nIndex,
            Pointer<Utf16> pwchPrefix,
            Pointer<Int32> pcchPrefix,
          )>()(
        ptr.ref.lpVtbl,
        pwszNamespaceURI,
        nIndex,
        pwchPrefix,
        pcchPrefix,
      );

  int getURI(
    Pointer<Utf16> pwchPrefix,
    Pointer<COMObject> pContextNode,
    Pointer<Utf16> pwchUri,
    Pointer<Int32> pcchUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchPrefix,
            Pointer<COMObject> pContextNode,
            Pointer<Utf16> pwchUri,
            Pointer<Int32> pcchUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchPrefix,
            Pointer<COMObject> pContextNode,
            Pointer<Utf16> pwchUri,
            Pointer<Int32> pcchUri,
          )>()(
        ptr.ref.lpVtbl,
        pwchPrefix,
        pContextNode,
        pwchUri,
        pcchUri,
      );
}

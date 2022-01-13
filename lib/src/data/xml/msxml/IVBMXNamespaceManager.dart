// IVBMXNamespaceManager.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/IXMLDOMNode.dart';
import '../../../data/xml/msxml/IMXNamespacePrefixes.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IVBMXNamespaceManager = '{C90352F5-643C-4FBC-BB23-E996EB2D51FD}';

/// {@category Interface}
/// {@category com}
class IVBMXNamespaceManager extends IDispatch {
  // vtable begins at 7, is 11 entries long.
  IVBMXNamespaceManager(Pointer<COMObject> ptr) : super(ptr);

  set allowOverride(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
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
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get allowOverride {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
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
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int reset() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
          .elementAt(10)
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
          .elementAt(11)
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
          .elementAt(12)
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
          .elementAt(13)
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

  int getDeclaredPrefixes(
    Pointer<Pointer<COMObject>> prefixes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> prefixes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> prefixes,
          )>()(
        ptr.ref.lpVtbl,
        prefixes,
      );

  int getPrefixes(
    Pointer<Utf16> namespaceURI,
    Pointer<Pointer<COMObject>> prefixes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> prefixes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> prefixes,
          )>()(
        ptr.ref.lpVtbl,
        namespaceURI,
        prefixes,
      );

  int getURI(
    Pointer<Utf16> prefix,
    Pointer<VARIANT> uri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> prefix,
            Pointer<VARIANT> uri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> prefix,
            Pointer<VARIANT> uri,
          )>()(
        ptr.ref.lpVtbl,
        prefix,
        uri,
      );

  int getURIFromNode(
    Pointer<Utf16> strPrefix,
    Pointer<COMObject> contextNode,
    Pointer<VARIANT> uri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strPrefix,
            Pointer<COMObject> contextNode,
            Pointer<VARIANT> uri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strPrefix,
            Pointer<COMObject> contextNode,
            Pointer<VARIANT> uri,
          )>()(
        ptr.ref.lpVtbl,
        strPrefix,
        contextNode,
        uri,
      );
}

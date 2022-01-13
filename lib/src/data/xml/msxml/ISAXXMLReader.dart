// ISAXXMLReader.dart

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
import '../../../specialTypes.dart';
import '../../../data/xml/msxml/ISAXEntityResolver.dart';
import '../../../data/xml/msxml/ISAXContentHandler.dart';
import '../../../data/xml/msxml/ISAXDTDHandler.dart';
import '../../../data/xml/msxml/ISAXErrorHandler.dart';

/// @nodoc
const IID_ISAXXMLReader = '{A4F96ED0-F829-476E-81C0-CDC7BD2A0802}';

/// {@category Interface}
/// {@category com}
class ISAXXMLReader extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  ISAXXMLReader(Pointer<COMObject> ptr) : super(ptr);

  int getFeature(
    Pointer<Utf16> pwchName,
    Pointer<Int16> pvfValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Pointer<Int16> pvfValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Pointer<Int16> pvfValue,
          )>()(
        ptr.ref.lpVtbl,
        pwchName,
        pvfValue,
      );

  int putFeature(
    Pointer<Utf16> pwchName,
    int vfValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Int16 vfValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchName,
            int vfValue,
          )>()(
        ptr.ref.lpVtbl,
        pwchName,
        vfValue,
      );

  int getProperty(
    Pointer<Utf16> pwchName,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        pwchName,
        pvarValue,
      );

  int putProperty(
    Pointer<Utf16> pwchName,
    VARIANT varValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchName,
            VARIANT varValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchName,
            VARIANT varValue,
          )>()(
        ptr.ref.lpVtbl,
        pwchName,
        varValue,
      );

  int getEntityResolver(
    Pointer<Pointer<COMObject>> ppResolver,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResolver,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResolver,
          )>()(
        ptr.ref.lpVtbl,
        ppResolver,
      );

  int putEntityResolver(
    Pointer<COMObject> pResolver,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResolver,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResolver,
          )>()(
        ptr.ref.lpVtbl,
        pResolver,
      );

  int getContentHandler(
    Pointer<Pointer<COMObject>> ppHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandler,
          )>()(
        ptr.ref.lpVtbl,
        ppHandler,
      );

  int putContentHandler(
    Pointer<COMObject> pHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pHandler,
          )>()(
        ptr.ref.lpVtbl,
        pHandler,
      );

  int getDTDHandler(
    Pointer<Pointer<COMObject>> ppHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandler,
          )>()(
        ptr.ref.lpVtbl,
        ppHandler,
      );

  int putDTDHandler(
    Pointer<COMObject> pHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pHandler,
          )>()(
        ptr.ref.lpVtbl,
        pHandler,
      );

  int getErrorHandler(
    Pointer<Pointer<COMObject>> ppHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandler,
          )>()(
        ptr.ref.lpVtbl,
        ppHandler,
      );

  int putErrorHandler(
    Pointer<COMObject> pHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pHandler,
          )>()(
        ptr.ref.lpVtbl,
        pHandler,
      );

  int getBaseURL(
    Pointer<Pointer<Uint16>> ppwchBaseUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwchBaseUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwchBaseUrl,
          )>()(
        ptr.ref.lpVtbl,
        ppwchBaseUrl,
      );

  int putBaseURL(
    Pointer<Utf16> pwchBaseUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchBaseUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchBaseUrl,
          )>()(
        ptr.ref.lpVtbl,
        pwchBaseUrl,
      );

  int getSecureBaseURL(
    Pointer<Pointer<Uint16>> ppwchSecureBaseUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwchSecureBaseUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppwchSecureBaseUrl,
          )>()(
        ptr.ref.lpVtbl,
        ppwchSecureBaseUrl,
      );

  int putSecureBaseURL(
    Pointer<Utf16> pwchSecureBaseUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchSecureBaseUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchSecureBaseUrl,
          )>()(
        ptr.ref.lpVtbl,
        pwchSecureBaseUrl,
      );

  int parse(
    VARIANT varInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varInput,
          )>()(
        ptr.ref.lpVtbl,
        varInput,
      );

  int parseURL(
    Pointer<Utf16> pwchUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchUrl,
          )>()(
        ptr.ref.lpVtbl,
        pwchUrl,
      );
}

// IWSDHttpMessageParameters.dart

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

import '../../devices/webservicesondevices/IWSDMessageParameters.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWSDHttpMessageParameters = '{540BD122-5C83-4DEC-B396-EA62A2697FDF}';

/// {@category Interface}
/// {@category com}
class IWSDHttpMessageParameters extends IWSDMessageParameters {
  // vtable begins at 8, is 9 entries long.
  IWSDHttpMessageParameters(Pointer<COMObject> ptr) : super(ptr);

  int SetInboundHttpHeaders(
    Pointer<Utf16> pszHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHeaders,
          )>()(
        ptr.ref.lpVtbl,
        pszHeaders,
      );

  int GetInboundHttpHeaders(
    Pointer<Pointer<Utf16>> ppszHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszHeaders,
          )>()(
        ptr.ref.lpVtbl,
        ppszHeaders,
      );

  int SetOutboundHttpHeaders(
    Pointer<Utf16> pszHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHeaders,
          )>()(
        ptr.ref.lpVtbl,
        pszHeaders,
      );

  int GetOutboundHttpHeaders(
    Pointer<Pointer<Utf16>> ppszHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszHeaders,
          )>()(
        ptr.ref.lpVtbl,
        ppszHeaders,
      );

  int SetID(
    Pointer<Utf16> pszId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszId,
          )>()(
        ptr.ref.lpVtbl,
        pszId,
      );

  int GetID(
    Pointer<Pointer<Utf16>> ppszId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszId,
          )>()(
        ptr.ref.lpVtbl,
        ppszId,
      );

  int SetContext(
    Pointer<COMObject> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
      );

  int GetContext(
    Pointer<Pointer<COMObject>> ppContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>()(
        ptr.ref.lpVtbl,
        ppContext,
      );

  int Clear() => ptr.ref.lpVtbl.value
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
}

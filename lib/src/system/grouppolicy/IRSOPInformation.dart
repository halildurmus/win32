// IRSOPInformation.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRSOPInformation = '{9A5A81B5-D9C7-49EF-9D11-DDF50968C48D}';

/// {@category Interface}
/// {@category com}
class IRSOPInformation extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRSOPInformation(Pointer<COMObject> ptr) : super(ptr);

  int GetNamespace(
    int dwSection,
    Pointer<Utf16> pszName,
    int cchMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSection,
            Pointer<Utf16> pszName,
            Int32 cchMaxLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSection,
            Pointer<Utf16> pszName,
            int cchMaxLength,
          )>()(
        ptr.ref.lpVtbl,
        dwSection,
        pszName,
        cchMaxLength,
      );

  int GetFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int GetEventLogEntryText(
    Pointer<Utf16> pszEventSource,
    Pointer<Utf16> pszEventLogName,
    Pointer<Utf16> pszEventTime,
    int dwEventID,
    Pointer<Pointer<Utf16>> ppszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszEventSource,
            Pointer<Utf16> pszEventLogName,
            Pointer<Utf16> pszEventTime,
            Uint32 dwEventID,
            Pointer<Pointer<Utf16>> ppszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszEventSource,
            Pointer<Utf16> pszEventLogName,
            Pointer<Utf16> pszEventTime,
            int dwEventID,
            Pointer<Pointer<Utf16>> ppszText,
          )>()(
        ptr.ref.lpVtbl,
        pszEventSource,
        pszEventLogName,
        pszEventTime,
        dwEventID,
        ppszText,
      );
}

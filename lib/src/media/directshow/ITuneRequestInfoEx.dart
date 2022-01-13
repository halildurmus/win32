// ITuneRequestInfoEx.dart

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

import '../../media/directshow/ITuneRequestInfo.dart';
import '../../media/directshow/ITuneRequest.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITuneRequestInfoEx = '{EE957C52-B0D0-4E78-8DD1-B87A08BFD893}';

/// {@category Interface}
/// {@category com}
class ITuneRequestInfoEx extends ITuneRequestInfo {
  // vtable begins at 10, is 1 entries long.
  ITuneRequestInfoEx(Pointer<COMObject> ptr) : super(ptr);

  int CreateComponentListEx(
    Pointer<COMObject> CurrentRequest,
    Pointer<Pointer<COMObject>> ppCurPMT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> ppCurPMT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CurrentRequest,
            Pointer<Pointer<COMObject>> ppCurPMT,
          )>()(
        ptr.ref.lpVtbl,
        CurrentRequest,
        ppCurPMT,
      );
}

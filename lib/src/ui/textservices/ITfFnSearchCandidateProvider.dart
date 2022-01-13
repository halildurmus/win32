// ITfFnSearchCandidateProvider.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfCandidateList.dart';

/// @nodoc
const IID_ITfFnSearchCandidateProvider =
    '{87A2AD8F-F27B-4920-8501-67602280175D}';

/// {@category Interface}
/// {@category com}
class ITfFnSearchCandidateProvider extends ITfFunction {
  // vtable begins at 4, is 2 entries long.
  ITfFnSearchCandidateProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetSearchCandidates(
    Pointer<Utf16> bstrQuery,
    Pointer<Utf16> bstrApplicationId,
    Pointer<Pointer<COMObject>> pplist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrQuery,
            Pointer<Utf16> bstrApplicationId,
            Pointer<Pointer<COMObject>> pplist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrQuery,
            Pointer<Utf16> bstrApplicationId,
            Pointer<Pointer<COMObject>> pplist,
          )>()(
        ptr.ref.lpVtbl,
        bstrQuery,
        bstrApplicationId,
        pplist,
      );

  int SetResult(
    Pointer<Utf16> bstrQuery,
    Pointer<Utf16> bstrApplicationID,
    Pointer<Utf16> bstrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrQuery,
            Pointer<Utf16> bstrApplicationID,
            Pointer<Utf16> bstrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrQuery,
            Pointer<Utf16> bstrApplicationID,
            Pointer<Utf16> bstrResult,
          )>()(
        ptr.ref.lpVtbl,
        bstrQuery,
        bstrApplicationID,
        bstrResult,
      );
}

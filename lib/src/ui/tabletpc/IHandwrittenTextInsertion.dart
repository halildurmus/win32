// IHandwrittenTextInsertion.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/IInkRecognitionResult.dart';

/// @nodoc
const IID_IHandwrittenTextInsertion = '{56FDEA97-ECD6-43E7-AA3A-816BE7785860}';

/// {@category Interface}
/// {@category com}
class IHandwrittenTextInsertion extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IHandwrittenTextInsertion(Pointer<COMObject> ptr) : super(ptr);

  int InsertRecognitionResultsArray(
    Pointer<SAFEARRAY> psaAlternates,
    int locale,
    int fAlternateContainsAutoSpacingInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> psaAlternates,
            Uint32 locale,
            Int32 fAlternateContainsAutoSpacingInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> psaAlternates,
            int locale,
            int fAlternateContainsAutoSpacingInformation,
          )>()(
        ptr.ref.lpVtbl,
        psaAlternates,
        locale,
        fAlternateContainsAutoSpacingInformation,
      );

  int InsertInkRecognitionResult(
    Pointer<COMObject> pIInkRecoResult,
    int locale,
    int fAlternateContainsAutoSpacingInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIInkRecoResult,
            Uint32 locale,
            Int32 fAlternateContainsAutoSpacingInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIInkRecoResult,
            int locale,
            int fAlternateContainsAutoSpacingInformation,
          )>()(
        ptr.ref.lpVtbl,
        pIInkRecoResult,
        locale,
        fAlternateContainsAutoSpacingInformation,
      );
}

/// @nodoc
const CLSID_HandwrittenTextInsertion = '{9F074EE2-E6E9-4D8A-A047-EB5B5C3C55DA}';

/// {@category com}
class HandwrittenTextInsertion extends IHandwrittenTextInsertion {
  HandwrittenTextInsertion(Pointer<COMObject> ptr) : super(ptr);

  factory HandwrittenTextInsertion.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_HandwrittenTextInsertion);
    final iid = calloc<GUID>()..ref.setGUID(IID_IHandwrittenTextInsertion);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return HandwrittenTextInsertion(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

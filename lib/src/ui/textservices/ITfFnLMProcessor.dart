// ITfFnLMProcessor.dart

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
import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfCandidateList.dart';
import '../../ui/textservices/ITfContext.dart';

/// @nodoc
const IID_ITfFnLMProcessor = '{7AFBF8E7-AC4B-4082-B058-890899D3A010}';

/// {@category Interface}
/// {@category com}
class ITfFnLMProcessor extends ITfFunction {
  // vtable begins at 4, is 7 entries long.
  ITfFnLMProcessor(Pointer<COMObject> ptr) : super(ptr);

  int QueryRange(
    Pointer<COMObject> pRange,
    Pointer<Pointer<COMObject>> ppNewRange,
    Pointer<Int32> pfAccepted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppNewRange,
            Pointer<Int32> pfAccepted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppNewRange,
            Pointer<Int32> pfAccepted,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        ppNewRange,
        pfAccepted,
      );

  int QueryLangID(
    int langid,
    Pointer<Int32> pfAccepted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
            Pointer<Int32> pfAccepted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
            Pointer<Int32> pfAccepted,
          )>()(
        ptr.ref.lpVtbl,
        langid,
        pfAccepted,
      );

  int GetReconversion(
    Pointer<COMObject> pRange,
    Pointer<Pointer<COMObject>> ppCandList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppCandList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppCandList,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        ppCandList,
      );

  int Reconvert(
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
      );

  int QueryKey(
    int fUp,
    int vKey,
    int lparamKeydata,
    Pointer<Int32> pfInterested,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fUp,
            IntPtr vKey,
            IntPtr lparamKeydata,
            Pointer<Int32> pfInterested,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fUp,
            int vKey,
            int lparamKeydata,
            Pointer<Int32> pfInterested,
          )>()(
        ptr.ref.lpVtbl,
        fUp,
        vKey,
        lparamKeydata,
        pfInterested,
      );

  int InvokeKey(
    int fUp,
    int vKey,
    int lparamKeyData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fUp,
            IntPtr vKey,
            IntPtr lparamKeyData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fUp,
            int vKey,
            int lparamKeyData,
          )>()(
        ptr.ref.lpVtbl,
        fUp,
        vKey,
        lparamKeyData,
      );

  int InvokeFunc(
    Pointer<COMObject> pic,
    Pointer<GUID> refguidFunc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            Pointer<GUID> refguidFunc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            Pointer<GUID> refguidFunc,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        refguidFunc,
      );
}

// IInkLineInfo.dart

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
import '../../ui/tabletpc/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInkLineInfo = '{9C1C5AD6-F22F-4DE4-B453-A2CC482E7C33}';

/// {@category Interface}
/// {@category com}
class IInkLineInfo extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IInkLineInfo(Pointer<COMObject> ptr) : super(ptr);

  int SetFormat(
    Pointer<INKMETRIC> pim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<INKMETRIC> pim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<INKMETRIC> pim,
          )>()(
        ptr.ref.lpVtbl,
        pim,
      );

  int GetFormat(
    Pointer<INKMETRIC> pim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<INKMETRIC> pim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<INKMETRIC> pim,
          )>()(
        ptr.ref.lpVtbl,
        pim,
      );

  int GetInkExtent(
    Pointer<INKMETRIC> pim,
    Pointer<Uint32> pnWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<INKMETRIC> pim,
            Pointer<Uint32> pnWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<INKMETRIC> pim,
            Pointer<Uint32> pnWidth,
          )>()(
        ptr.ref.lpVtbl,
        pim,
        pnWidth,
      );

  int GetCandidate(
    int nCandidateNum,
    Pointer<Utf16> pwcRecogWord,
    Pointer<Uint32> pcwcRecogWord,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nCandidateNum,
            Pointer<Utf16> pwcRecogWord,
            Pointer<Uint32> pcwcRecogWord,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCandidateNum,
            Pointer<Utf16> pwcRecogWord,
            Pointer<Uint32> pcwcRecogWord,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        nCandidateNum,
        pwcRecogWord,
        pcwcRecogWord,
        dwFlags,
      );

  int SetCandidate(
    int nCandidateNum,
    Pointer<Utf16> strRecogWord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nCandidateNum,
            Pointer<Utf16> strRecogWord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCandidateNum,
            Pointer<Utf16> strRecogWord,
          )>()(
        ptr.ref.lpVtbl,
        nCandidateNum,
        strRecogWord,
      );

  int Recognize() => ptr.ref.lpVtbl.value
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
}

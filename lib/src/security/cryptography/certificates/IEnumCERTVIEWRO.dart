// IEnumCERTVIEWROW.dart

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
import '../../../security/cryptography/certificates/IEnumCERTVIEWCOLUMN.dart';
import '../../../security/cryptography/certificates/IEnumCERTVIEWATTRIBUTE.dart';
import '../../../security/cryptography/certificates/IEnumCERTVIEWEXTENSION.dart';
import '../../../security/cryptography/certificates/IEnumCERTVIEWRO.dart';

/// @nodoc
const IID_IEnumCERTVIEWROW = '{D1157F4C-5AF2-11D1-9BDC-00C04FB683FA}';

/// {@category Interface}
/// {@category com}
class IEnumCERTVIEWROW extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  IEnumCERTVIEWROW(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    Pointer<Int32> pIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIndex,
          )>()(
        ptr.ref.lpVtbl,
        pIndex,
      );

  int EnumCertViewColumn(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );

  int EnumCertViewAttribute(
    int Flags,
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        ppenum,
      );

  int EnumCertViewExtension(
    int Flags,
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        ppenum,
      );

  int Skip(
    int celt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 celt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
          )>()(
        ptr.ref.lpVtbl,
        celt,
      );

  int Reset() => ptr.ref.lpVtbl.value
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

  int Clone(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );

  int GetMaxIndex(
    Pointer<Int32> pIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIndex,
          )>()(
        ptr.ref.lpVtbl,
        pIndex,
      );
}

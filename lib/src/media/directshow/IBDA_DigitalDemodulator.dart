// IBDA_DigitalDemodulator.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_DigitalDemodulator = '{EF30F379-985B-4D10-B640-A79D5E04E1E0}';

/// {@category Interface}
/// {@category com}
class IBDA_DigitalDemodulator extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IBDA_DigitalDemodulator(Pointer<COMObject> ptr) : super(ptr);

  int put_ModulationType(
    Pointer<Int32> pModulationType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pModulationType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pModulationType,
          )>()(
        ptr.ref.lpVtbl,
        pModulationType,
      );

  int get_ModulationType(
    Pointer<Int32> pModulationType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pModulationType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pModulationType,
          )>()(
        ptr.ref.lpVtbl,
        pModulationType,
      );

  int put_InnerFECMethod(
    Pointer<Int32> pFECMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFECMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFECMethod,
          )>()(
        ptr.ref.lpVtbl,
        pFECMethod,
      );

  int get_InnerFECMethod(
    Pointer<Int32> pFECMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFECMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFECMethod,
          )>()(
        ptr.ref.lpVtbl,
        pFECMethod,
      );

  int put_InnerFECRate(
    Pointer<Int32> pFECRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFECRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFECRate,
          )>()(
        ptr.ref.lpVtbl,
        pFECRate,
      );

  int get_InnerFECRate(
    Pointer<Int32> pFECRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFECRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFECRate,
          )>()(
        ptr.ref.lpVtbl,
        pFECRate,
      );

  int put_OuterFECMethod(
    Pointer<Int32> pFECMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFECMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFECMethod,
          )>()(
        ptr.ref.lpVtbl,
        pFECMethod,
      );

  int get_OuterFECMethod(
    Pointer<Int32> pFECMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFECMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFECMethod,
          )>()(
        ptr.ref.lpVtbl,
        pFECMethod,
      );

  int put_OuterFECRate(
    Pointer<Int32> pFECRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFECRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFECRate,
          )>()(
        ptr.ref.lpVtbl,
        pFECRate,
      );

  int get_OuterFECRate(
    Pointer<Int32> pFECRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFECRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFECRate,
          )>()(
        ptr.ref.lpVtbl,
        pFECRate,
      );

  int put_SymbolRate(
    Pointer<Uint32> pSymbolRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pSymbolRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pSymbolRate,
          )>()(
        ptr.ref.lpVtbl,
        pSymbolRate,
      );

  int get_SymbolRate(
    Pointer<Uint32> pSymbolRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pSymbolRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pSymbolRate,
          )>()(
        ptr.ref.lpVtbl,
        pSymbolRate,
      );

  int put_SpectralInversion(
    Pointer<Int32> pSpectralInversion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSpectralInversion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSpectralInversion,
          )>()(
        ptr.ref.lpVtbl,
        pSpectralInversion,
      );

  int get_SpectralInversion(
    Pointer<Int32> pSpectralInversion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSpectralInversion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSpectralInversion,
          )>()(
        ptr.ref.lpVtbl,
        pSpectralInversion,
      );
}

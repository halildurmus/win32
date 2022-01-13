// IPrintCoreUI2.dart

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

import '../../graphics/printing/IPrintOemDriverUI.dart';
import '../../graphics/printing/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintCoreUI2 = '{085CCFCA-3ADF-4C9E-B491-D851A6EDC997}';

/// {@category Interface}
/// {@category com}
class IPrintCoreUI2 extends IPrintOemDriverUI {
  // vtable begins at 6, is 10 entries long.
  IPrintCoreUI2(Pointer<COMObject> ptr) : super(ptr);

  int GetOptions(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Int8> pmszFeaturesRequested,
    int cbIn,
    Pointer<Utf8> pmszFeatureOptionBuf,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Int8> pmszFeaturesRequested,
            Uint32 cbIn,
            Pointer<Utf8> pmszFeatureOptionBuf,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Int8> pmszFeaturesRequested,
            int cbIn,
            Pointer<Utf8> pmszFeatureOptionBuf,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pmszFeaturesRequested,
        cbIn,
        pmszFeatureOptionBuf,
        cbSize,
        pcbNeeded,
      );

  int SetOptions(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Int8> pmszFeatureOptionBuf,
    int cbIn,
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Int8> pmszFeatureOptionBuf,
            Uint32 cbIn,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Int8> pmszFeatureOptionBuf,
            int cbIn,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pmszFeatureOptionBuf,
        cbIn,
        pdwResult,
      );

  int EnumConstrainedOptions(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Utf8> pmszConstrainedOptionList,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pmszConstrainedOptionList,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pmszConstrainedOptionList,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pszFeatureKeyword,
        pmszConstrainedOptionList,
        cbSize,
        pcbNeeded,
      );

  int WhyConstrained(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Utf8> pszOptionKeyword,
    Pointer<Utf8> pmszReasonList,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszOptionKeyword,
            Pointer<Utf8> pmszReasonList,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszOptionKeyword,
            Pointer<Utf8> pmszReasonList,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pszFeatureKeyword,
        pszOptionKeyword,
        pmszReasonList,
        cbSize,
        pcbNeeded,
      );

  int GetGlobalAttribute(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Utf8> pszAttribute,
    Pointer<Uint32> pdwDataType,
    Pointer<Uint8> pbData,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Uint8> pbData,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Uint8> pbData,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pszAttribute,
        pdwDataType,
        pbData,
        cbSize,
        pcbNeeded,
      );

  int GetFeatureAttribute(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Utf8> pszAttribute,
    Pointer<Uint32> pdwDataType,
    Pointer<Uint8> pbData,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Uint8> pbData,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Uint8> pbData,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pszFeatureKeyword,
        pszAttribute,
        pdwDataType,
        pbData,
        cbSize,
        pcbNeeded,
      );

  int GetOptionAttribute(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Utf8> pszOptionKeyword,
    Pointer<Utf8> pszAttribute,
    Pointer<Uint32> pdwDataType,
    Pointer<Uint8> pbData,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszOptionKeyword,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Uint8> pbData,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszOptionKeyword,
            Pointer<Utf8> pszAttribute,
            Pointer<Uint32> pdwDataType,
            Pointer<Uint8> pbData,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pszFeatureKeyword,
        pszOptionKeyword,
        pszAttribute,
        pdwDataType,
        pbData,
        cbSize,
        pcbNeeded,
      );

  int EnumFeatures(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Utf8> pmszFeatureList,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Utf8> pmszFeatureList,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Utf8> pmszFeatureList,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pmszFeatureList,
        cbSize,
        pcbNeeded,
      );

  int EnumOptions(
    Pointer<OEMUIOBJ> poemuiobj,
    int dwFlags,
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Utf8> pmszOptionList,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            Uint32 dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pmszOptionList,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<OEMUIOBJ> poemuiobj,
            int dwFlags,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pmszOptionList,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        poemuiobj,
        dwFlags,
        pszFeatureKeyword,
        pmszOptionList,
        cbSize,
        pcbNeeded,
      );

  int QuerySimulationSupport(
    int hPrinter,
    int dwLevel,
    Pointer<Uint8> pCaps,
    int cbSize,
    Pointer<Uint32> pcbNeeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Uint32 dwLevel,
            Pointer<Uint8> pCaps,
            Uint32 cbSize,
            Pointer<Uint32> pcbNeeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            int dwLevel,
            Pointer<Uint8> pCaps,
            int cbSize,
            Pointer<Uint32> pcbNeeded,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        dwLevel,
        pCaps,
        cbSize,
        pcbNeeded,
      );
}

// IPrintCoreHelper.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IPrintCoreHelper = '{A89EC53E-3905-49C6-9C1A-C0A88117FDB6}';

/// {@category Interface}
/// {@category com}
class IPrintCoreHelper extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IPrintCoreHelper(Pointer<COMObject> ptr) : super(ptr);

  int GetOption(
    Pointer<DEVMODE> pDevmode,
    int cbSize,
    Pointer<Utf8> pszFeatureRequested,
    Pointer<Pointer<Utf8>> ppszOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            Uint32 cbSize,
            Pointer<Utf8> pszFeatureRequested,
            Pointer<Pointer<Utf8>> ppszOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            int cbSize,
            Pointer<Utf8> pszFeatureRequested,
            Pointer<Pointer<Utf8>> ppszOption,
          )>()(
        ptr.ref.lpVtbl,
        pDevmode,
        cbSize,
        pszFeatureRequested,
        ppszOption,
      );

  int SetOptions(
    Pointer<DEVMODE> pDevmode,
    int cbSize,
    int bResolveConflicts,
    Pointer<PRINT_FEATURE_OPTION> pFOPairs,
    int cPairs,
    Pointer<Uint32> pcPairsWritten,
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            Uint32 cbSize,
            Int32 bResolveConflicts,
            Pointer<PRINT_FEATURE_OPTION> pFOPairs,
            Uint32 cPairs,
            Pointer<Uint32> pcPairsWritten,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            int cbSize,
            int bResolveConflicts,
            Pointer<PRINT_FEATURE_OPTION> pFOPairs,
            int cPairs,
            Pointer<Uint32> pcPairsWritten,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        pDevmode,
        cbSize,
        bResolveConflicts,
        pFOPairs,
        cPairs,
        pcPairsWritten,
        pdwResult,
      );

  int EnumConstrainedOptions(
    Pointer<DEVMODE> pDevmode,
    int cbSize,
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Pointer<Pointer<Pointer<Utf8>>>> pConstrainedOptionList,
    Pointer<Uint32> pdwNumOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            Uint32 cbSize,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Pointer<Pointer<Pointer<Utf8>>>> pConstrainedOptionList,
            Pointer<Uint32> pdwNumOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            int cbSize,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Pointer<Pointer<Pointer<Utf8>>>> pConstrainedOptionList,
            Pointer<Uint32> pdwNumOptions,
          )>()(
        ptr.ref.lpVtbl,
        pDevmode,
        cbSize,
        pszFeatureKeyword,
        pConstrainedOptionList,
        pdwNumOptions,
      );

  int WhyConstrained(
    Pointer<DEVMODE> pDevmode,
    int cbSize,
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Utf8> pszOptionKeyword,
    Pointer<Pointer<PRINT_FEATURE_OPTION>> ppFOConstraints,
    Pointer<Uint32> pdwNumOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            Uint32 cbSize,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszOptionKeyword,
            Pointer<Pointer<PRINT_FEATURE_OPTION>> ppFOConstraints,
            Pointer<Uint32> pdwNumOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            int cbSize,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Utf8> pszOptionKeyword,
            Pointer<Pointer<PRINT_FEATURE_OPTION>> ppFOConstraints,
            Pointer<Uint32> pdwNumOptions,
          )>()(
        ptr.ref.lpVtbl,
        pDevmode,
        cbSize,
        pszFeatureKeyword,
        pszOptionKeyword,
        ppFOConstraints,
        pdwNumOptions,
      );

  int EnumFeatures(
    Pointer<Pointer<Pointer<Pointer<Utf8>>>> pFeatureList,
    Pointer<Uint32> pdwNumFeatures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<Pointer<Utf8>>>> pFeatureList,
            Pointer<Uint32> pdwNumFeatures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<Pointer<Utf8>>>> pFeatureList,
            Pointer<Uint32> pdwNumFeatures,
          )>()(
        ptr.ref.lpVtbl,
        pFeatureList,
        pdwNumFeatures,
      );

  int EnumOptions(
    Pointer<Utf8> pszFeatureKeyword,
    Pointer<Pointer<Pointer<Pointer<Utf8>>>> pOptionList,
    Pointer<Uint32> pdwNumOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Pointer<Pointer<Pointer<Utf8>>>> pOptionList,
            Pointer<Uint32> pdwNumOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszFeatureKeyword,
            Pointer<Pointer<Pointer<Pointer<Utf8>>>> pOptionList,
            Pointer<Uint32> pdwNumOptions,
          )>()(
        ptr.ref.lpVtbl,
        pszFeatureKeyword,
        pOptionList,
        pdwNumOptions,
      );

  int GetFontSubstitution(
    Pointer<Utf16> pszTrueTypeFontName,
    Pointer<Pointer<Utf16>> ppszDevFontName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTrueTypeFontName,
            Pointer<Pointer<Utf16>> ppszDevFontName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTrueTypeFontName,
            Pointer<Pointer<Utf16>> ppszDevFontName,
          )>()(
        ptr.ref.lpVtbl,
        pszTrueTypeFontName,
        ppszDevFontName,
      );

  int SetFontSubstitution(
    Pointer<Utf16> pszTrueTypeFontName,
    Pointer<Utf16> pszDevFontName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTrueTypeFontName,
            Pointer<Utf16> pszDevFontName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTrueTypeFontName,
            Pointer<Utf16> pszDevFontName,
          )>()(
        ptr.ref.lpVtbl,
        pszTrueTypeFontName,
        pszDevFontName,
      );

  int CreateInstanceOfMSXMLObject(
    Pointer<GUID> rclsid,
    Pointer<COMObject> pUnkOuter,
    int dwClsContext,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<COMObject> pUnkOuter,
            Uint32 dwClsContext,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<COMObject> pUnkOuter,
            int dwClsContext,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        pUnkOuter,
        dwClsContext,
        riid,
        ppv,
      );
}

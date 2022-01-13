// ISpRecoGrammar2.dart

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
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpeechResourceLoader.dart';
import '../../system/com/urlmon/IInternetSecurityManager.dart';

/// @nodoc
const IID_ISpRecoGrammar2 = '{4B37BC9E-9ED6-44A3-93D3-18F022B79EC3}';

/// {@category Interface}
/// {@category com}
class ISpRecoGrammar2 extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ISpRecoGrammar2(Pointer<COMObject> ptr) : super(ptr);

  int GetRules(
    Pointer<Pointer<SPRULE>> ppCoMemRules,
    Pointer<Uint32> puNumRules,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SPRULE>> ppCoMemRules,
            Pointer<Uint32> puNumRules,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SPRULE>> ppCoMemRules,
            Pointer<Uint32> puNumRules,
          )>()(
        ptr.ref.lpVtbl,
        ppCoMemRules,
        puNumRules,
      );

  int LoadCmdFromFile2(
    Pointer<Utf16> pszFileName,
    int Options,
    Pointer<Utf16> pszSharingUri,
    Pointer<Utf16> pszBaseUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            Int32 Options,
            Pointer<Utf16> pszSharingUri,
            Pointer<Utf16> pszBaseUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            int Options,
            Pointer<Utf16> pszSharingUri,
            Pointer<Utf16> pszBaseUri,
          )>()(
        ptr.ref.lpVtbl,
        pszFileName,
        Options,
        pszSharingUri,
        pszBaseUri,
      );

  int LoadCmdFromMemory2(
    Pointer<SPBINARYGRAMMAR> pGrammar,
    int Options,
    Pointer<Utf16> pszSharingUri,
    Pointer<Utf16> pszBaseUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPBINARYGRAMMAR> pGrammar,
            Int32 Options,
            Pointer<Utf16> pszSharingUri,
            Pointer<Utf16> pszBaseUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPBINARYGRAMMAR> pGrammar,
            int Options,
            Pointer<Utf16> pszSharingUri,
            Pointer<Utf16> pszBaseUri,
          )>()(
        ptr.ref.lpVtbl,
        pGrammar,
        Options,
        pszSharingUri,
        pszBaseUri,
      );

  int SetRulePriority(
    Pointer<Utf16> pszRuleName,
    int ulRuleId,
    int nRulePriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszRuleName,
            Uint32 ulRuleId,
            Int32 nRulePriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszRuleName,
            int ulRuleId,
            int nRulePriority,
          )>()(
        ptr.ref.lpVtbl,
        pszRuleName,
        ulRuleId,
        nRulePriority,
      );

  int SetRuleWeight(
    Pointer<Utf16> pszRuleName,
    int ulRuleId,
    double flWeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszRuleName,
            Uint32 ulRuleId,
            Float flWeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszRuleName,
            int ulRuleId,
            double flWeight,
          )>()(
        ptr.ref.lpVtbl,
        pszRuleName,
        ulRuleId,
        flWeight,
      );

  int SetDictationWeight(
    double flWeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flWeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flWeight,
          )>()(
        ptr.ref.lpVtbl,
        flWeight,
      );

  int SetGrammarLoader(
    Pointer<COMObject> pLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLoader,
          )>()(
        ptr.ref.lpVtbl,
        pLoader,
      );

  int SetSMLSecurityManager(
    Pointer<COMObject> pSMLSecurityManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSMLSecurityManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSMLSecurityManager,
          )>()(
        ptr.ref.lpVtbl,
        pSMLSecurityManager,
      );
}

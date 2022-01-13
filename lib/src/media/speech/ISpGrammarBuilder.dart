// ISpGrammarBuilder.dart

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
import '../../foundation/structs.g.dart';
import '../../media/speech/structs.g.dart';

/// @nodoc
const IID_ISpGrammarBuilder = '{8137828F-591A-4A42-BE58-49EA7EBAAC68}';

/// {@category Interface}
/// {@category com}
class ISpGrammarBuilder extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ISpGrammarBuilder(Pointer<COMObject> ptr) : super(ptr);

  int ResetGrammar(
    int NewLanguage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 NewLanguage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NewLanguage,
          )>()(
        ptr.ref.lpVtbl,
        NewLanguage,
      );

  int GetRule(
    Pointer<Utf16> pszRuleName,
    int dwRuleId,
    int dwAttributes,
    int fCreateIfNotExist,
    Pointer<Pointer<SPSTATEHANDLE__>> phInitialState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszRuleName,
            Uint32 dwRuleId,
            Uint32 dwAttributes,
            Int32 fCreateIfNotExist,
            Pointer<Pointer<SPSTATEHANDLE__>> phInitialState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszRuleName,
            int dwRuleId,
            int dwAttributes,
            int fCreateIfNotExist,
            Pointer<Pointer<SPSTATEHANDLE__>> phInitialState,
          )>()(
        ptr.ref.lpVtbl,
        pszRuleName,
        dwRuleId,
        dwAttributes,
        fCreateIfNotExist,
        phInitialState,
      );

  int ClearRule(
    Pointer<SPSTATEHANDLE__> hState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hState,
          )>()(
        ptr.ref.lpVtbl,
        hState,
      );

  int CreateNewState(
    Pointer<SPSTATEHANDLE__> hState,
    Pointer<Pointer<SPSTATEHANDLE__>> phState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hState,
            Pointer<Pointer<SPSTATEHANDLE__>> phState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hState,
            Pointer<Pointer<SPSTATEHANDLE__>> phState,
          )>()(
        ptr.ref.lpVtbl,
        hState,
        phState,
      );

  int AddWordTransition(
    Pointer<SPSTATEHANDLE__> hFromState,
    Pointer<SPSTATEHANDLE__> hToState,
    Pointer<Utf16> psz,
    Pointer<Utf16> pszSeparators,
    int eWordType,
    double Weight,
    Pointer<SPPROPERTYINFO> pPropInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hFromState,
            Pointer<SPSTATEHANDLE__> hToState,
            Pointer<Utf16> psz,
            Pointer<Utf16> pszSeparators,
            Int32 eWordType,
            Float Weight,
            Pointer<SPPROPERTYINFO> pPropInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hFromState,
            Pointer<SPSTATEHANDLE__> hToState,
            Pointer<Utf16> psz,
            Pointer<Utf16> pszSeparators,
            int eWordType,
            double Weight,
            Pointer<SPPROPERTYINFO> pPropInfo,
          )>()(
        ptr.ref.lpVtbl,
        hFromState,
        hToState,
        psz,
        pszSeparators,
        eWordType,
        Weight,
        pPropInfo,
      );

  int AddRuleTransition(
    Pointer<SPSTATEHANDLE__> hFromState,
    Pointer<SPSTATEHANDLE__> hToState,
    Pointer<SPSTATEHANDLE__> hRule,
    double Weight,
    Pointer<SPPROPERTYINFO> pPropInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hFromState,
            Pointer<SPSTATEHANDLE__> hToState,
            Pointer<SPSTATEHANDLE__> hRule,
            Float Weight,
            Pointer<SPPROPERTYINFO> pPropInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hFromState,
            Pointer<SPSTATEHANDLE__> hToState,
            Pointer<SPSTATEHANDLE__> hRule,
            double Weight,
            Pointer<SPPROPERTYINFO> pPropInfo,
          )>()(
        ptr.ref.lpVtbl,
        hFromState,
        hToState,
        hRule,
        Weight,
        pPropInfo,
      );

  int AddResource(
    Pointer<SPSTATEHANDLE__> hRuleState,
    Pointer<Utf16> pszResourceName,
    Pointer<Utf16> pszResourceValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hRuleState,
            Pointer<Utf16> pszResourceName,
            Pointer<Utf16> pszResourceValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPSTATEHANDLE__> hRuleState,
            Pointer<Utf16> pszResourceName,
            Pointer<Utf16> pszResourceValue,
          )>()(
        ptr.ref.lpVtbl,
        hRuleState,
        pszResourceName,
        pszResourceValue,
      );

  int Commit(
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
      );
}

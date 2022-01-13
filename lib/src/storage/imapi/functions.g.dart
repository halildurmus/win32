// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../storage/imapi/structs.g.dart';
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/callbacks.g.dart';
import '../../system/com/IMalloc.dart';
import '../../system/com/structuredstorage/IStorage.dart';
import '../../storage/imapi/callbacks.g.dart';
import '../../system/addressbook/IMessage.dart'; // -----------------------------------------------------------------------

// mapi32.dll
// -----------------------------------------------------------------------
final _mapi32 = DynamicLibrary.open('mapi32.dll');

void CloseIMsgSession(
  Pointer<MSGSESS> lpMsgSess,
) =>
    _CloseIMsgSession(
      lpMsgSess,
    );

late final _CloseIMsgSession = _mapi32.lookupFunction<
    Void Function(
  Pointer<MSGSESS> lpMsgSess,
),
    void Function(
  Pointer<MSGSESS> lpMsgSess,
)>('CloseIMsgSession');

int GetAttribIMsgOnIStg(
  Pointer lpObject,
  Pointer<SPropTagArray> lpPropTagArray,
  Pointer<Pointer<SPropAttrArray>> lppPropAttrArray,
) =>
    _GetAttribIMsgOnIStg(
      lpObject,
      lpPropTagArray,
      lppPropAttrArray,
    );

late final _GetAttribIMsgOnIStg = _mapi32.lookupFunction<
    Int32 Function(
  Pointer lpObject,
  Pointer<SPropTagArray> lpPropTagArray,
  Pointer<Pointer<SPropAttrArray>> lppPropAttrArray,
),
    int Function(
  Pointer lpObject,
  Pointer<SPropTagArray> lpPropTagArray,
  Pointer<Pointer<SPropAttrArray>> lppPropAttrArray,
)>('GetAttribIMsgOnIStg');

int MapStorageSCode(
  int StgSCode,
) =>
    _MapStorageSCode(
      StgSCode,
    );

late final _MapStorageSCode = _mapi32.lookupFunction<
    Int32 Function(
  Int32 StgSCode,
),
    int Function(
  int StgSCode,
)>('MapStorageSCode');

int OpenIMsgOnIStg(
  Pointer<MSGSESS> lpMsgSess,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer<COMObject> lpMalloc,
  Pointer lpMapiSup,
  Pointer<COMObject> lpStg,
  Pointer<Pointer<NativeFunction<MSGCALLRELEASE>>> lpfMsgCallRelease,
  int ulCallerData,
  int ulFlags,
  Pointer<Pointer<COMObject>> lppMsg,
) =>
    _OpenIMsgOnIStg(
      lpMsgSess,
      lpAllocateBuffer,
      lpAllocateMore,
      lpFreeBuffer,
      lpMalloc,
      lpMapiSup,
      lpStg,
      lpfMsgCallRelease,
      ulCallerData,
      ulFlags,
      lppMsg,
    );

late final _OpenIMsgOnIStg = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<MSGSESS> lpMsgSess,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer<COMObject> lpMalloc,
  Pointer lpMapiSup,
  Pointer<COMObject> lpStg,
  Pointer<Pointer<NativeFunction<MSGCALLRELEASE>>> lpfMsgCallRelease,
  Uint32 ulCallerData,
  Uint32 ulFlags,
  Pointer<Pointer<COMObject>> lppMsg,
),
    int Function(
  Pointer<MSGSESS> lpMsgSess,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer<COMObject> lpMalloc,
  Pointer lpMapiSup,
  Pointer<COMObject> lpStg,
  Pointer<Pointer<NativeFunction<MSGCALLRELEASE>>> lpfMsgCallRelease,
  int ulCallerData,
  int ulFlags,
  Pointer<Pointer<COMObject>> lppMsg,
)>('OpenIMsgOnIStg');

int OpenIMsgSession(
  Pointer<COMObject> lpMalloc,
  int ulFlags,
  Pointer<Pointer<MSGSESS>> lppMsgSess,
) =>
    _OpenIMsgSession(
      lpMalloc,
      ulFlags,
      lppMsgSess,
    );

late final _OpenIMsgSession = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpMalloc,
  Uint32 ulFlags,
  Pointer<Pointer<MSGSESS>> lppMsgSess,
),
    int Function(
  Pointer<COMObject> lpMalloc,
  int ulFlags,
  Pointer<Pointer<MSGSESS>> lppMsgSess,
)>('OpenIMsgSession');

int SetAttribIMsgOnIStg(
  Pointer lpObject,
  Pointer<SPropTagArray> lpPropTags,
  Pointer<SPropAttrArray> lpPropAttrs,
  Pointer<Pointer<SPropProblemArray>> lppPropProblems,
) =>
    _SetAttribIMsgOnIStg(
      lpObject,
      lpPropTags,
      lpPropAttrs,
      lppPropProblems,
    );

late final _SetAttribIMsgOnIStg = _mapi32.lookupFunction<
    Int32 Function(
  Pointer lpObject,
  Pointer<SPropTagArray> lpPropTags,
  Pointer<SPropAttrArray> lpPropAttrs,
  Pointer<Pointer<SPropProblemArray>> lppPropProblems,
),
    int Function(
  Pointer lpObject,
  Pointer<SPropTagArray> lpPropTags,
  Pointer<SPropAttrArray> lpPropAttrs,
  Pointer<Pointer<SPropProblemArray>> lppPropProblems,
)>('SetAttribIMsgOnIStg');

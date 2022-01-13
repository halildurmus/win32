// IAzApplication.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../security/authorization/IAzScopes.dart';
import '../../security/authorization/IAzScope.dart';
import '../../security/authorization/IAzOperations.dart';
import '../../security/authorization/IAzOperation.dart';
import '../../security/authorization/IAzTasks.dart';
import '../../security/authorization/IAzTask.dart';
import '../../security/authorization/IAzApplicationGroups.dart';
import '../../security/authorization/IAzApplicationGroup.dart';
import '../../security/authorization/IAzRoles.dart';
import '../../security/authorization/IAzRole.dart';
import '../../security/authorization/IAzClientContext.dart';

/// @nodoc
const IID_IAzApplication = '{987BC7C7-B813-4D27-BEDE-6BA5AE867E95}';

/// {@category Interface}
/// {@category com}
class IAzApplication extends IDispatch {
  // vtable begins at 7, is 61 entries long.
  IAzApplication(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Name(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrName,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrName,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Description {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDescription,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Description(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrDescription,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrDescription,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get ApplicationData {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrApplicationData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrApplicationData,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ApplicationData(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrApplicationData,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrApplicationData,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get AuthzInterfaceClsid {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrProp,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AuthzInterfaceClsid(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrProp,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrProp,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Version {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrProp,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Version(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrProp,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrProp,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get GenerateAudits {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbProp,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set GenerateAudits(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 bProp,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bProp,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ApplyStoreSacl {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbProp,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ApplyStoreSacl(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 bProp,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bProp,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Writable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfProp,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetProperty(
    int lPropId,
    VARIANT varReserved,
    Pointer<VARIANT> pvarProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPropId,
            VARIANT varReserved,
            Pointer<VARIANT> pvarProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPropId,
            VARIANT varReserved,
            Pointer<VARIANT> pvarProp,
          )>()(
        ptr.ref.lpVtbl,
        lPropId,
        varReserved,
        pvarProp,
      );

  int SetProperty(
    int lPropId,
    VARIANT varProp,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPropId,
            VARIANT varProp,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPropId,
            VARIANT varProp,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        lPropId,
        varProp,
        varReserved,
      );

  VARIANT get PolicyAdministrators {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarAdmins,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarAdmins,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get PolicyReaders {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarReaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarReaders,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddPolicyAdministrator(
    Pointer<Utf16> bstrAdmin,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAdmin,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAdmin,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrAdmin,
        varReserved,
      );

  int DeletePolicyAdministrator(
    Pointer<Utf16> bstrAdmin,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAdmin,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAdmin,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrAdmin,
        varReserved,
      );

  int AddPolicyReader(
    Pointer<Utf16> bstrReader,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrReader,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrReader,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrReader,
        varReserved,
      );

  int DeletePolicyReader(
    Pointer<Utf16> bstrReader,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrReader,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrReader,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrReader,
        varReserved,
      );

  Pointer<COMObject> get Scopes {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppScopeCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppScopeCollection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int OpenScope(
    Pointer<Utf16> bstrScopeName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppScope,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        varReserved,
        ppScope,
      );

  int CreateScope(
    Pointer<Utf16> bstrScopeName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppScope,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        varReserved,
        ppScope,
      );

  int DeleteScope(
    Pointer<Utf16> bstrScopeName,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        varReserved,
      );

  Pointer<COMObject> get Operations {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOperationCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOperationCollection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int OpenOperation(
    Pointer<Utf16> bstrOperationName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrOperationName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrOperationName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppOperation,
          )>()(
        ptr.ref.lpVtbl,
        bstrOperationName,
        varReserved,
        ppOperation,
      );

  int CreateOperation(
    Pointer<Utf16> bstrOperationName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrOperationName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrOperationName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppOperation,
          )>()(
        ptr.ref.lpVtbl,
        bstrOperationName,
        varReserved,
        ppOperation,
      );

  int DeleteOperation(
    Pointer<Utf16> bstrOperationName,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrOperationName,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrOperationName,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrOperationName,
        varReserved,
      );

  Pointer<COMObject> get Tasks {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTaskCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTaskCollection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int OpenTask(
    Pointer<Utf16> bstrTaskName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTaskName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTaskName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppTask,
          )>()(
        ptr.ref.lpVtbl,
        bstrTaskName,
        varReserved,
        ppTask,
      );

  int CreateTask(
    Pointer<Utf16> bstrTaskName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTaskName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTaskName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppTask,
          )>()(
        ptr.ref.lpVtbl,
        bstrTaskName,
        varReserved,
        ppTask,
      );

  int DeleteTask(
    Pointer<Utf16> bstrTaskName,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTaskName,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTaskName,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrTaskName,
        varReserved,
      );

  Pointer<COMObject> get ApplicationGroups {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGroupCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGroupCollection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int OpenApplicationGroup(
    Pointer<Utf16> bstrGroupName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        bstrGroupName,
        varReserved,
        ppGroup,
      );

  int CreateApplicationGroup(
    Pointer<Utf16> bstrGroupName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        bstrGroupName,
        varReserved,
        ppGroup,
      );

  int DeleteApplicationGroup(
    Pointer<Utf16> bstrGroupName,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrGroupName,
        varReserved,
      );

  Pointer<COMObject> get Roles {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRoleCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRoleCollection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int OpenRole(
    Pointer<Utf16> bstrRoleName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppRole,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleName,
        varReserved,
        ppRole,
      );

  int CreateRole(
    Pointer<Utf16> bstrRoleName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppRole,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleName,
        varReserved,
        ppRole,
      );

  int DeleteRole(
    Pointer<Utf16> bstrRoleName,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleName,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleName,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleName,
        varReserved,
      );

  int InitializeClientContextFromToken(
    int ullTokenHandle,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppClientContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullTokenHandle,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullTokenHandle,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>()(
        ptr.ref.lpVtbl,
        ullTokenHandle,
        varReserved,
        ppClientContext,
      );

  int AddPropertyItem(
    int lPropId,
    VARIANT varProp,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPropId,
            VARIANT varProp,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPropId,
            VARIANT varProp,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        lPropId,
        varProp,
        varReserved,
      );

  int DeletePropertyItem(
    int lPropId,
    VARIANT varProp,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPropId,
            VARIANT varProp,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPropId,
            VARIANT varProp,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        lPropId,
        varProp,
        varReserved,
      );

  int Submit(
    int lFlags,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        varReserved,
      );

  int InitializeClientContextFromName(
    Pointer<Utf16> ClientName,
    Pointer<Utf16> DomainName,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppClientContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ClientName,
            Pointer<Utf16> DomainName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ClientName,
            Pointer<Utf16> DomainName,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>()(
        ptr.ref.lpVtbl,
        ClientName,
        DomainName,
        varReserved,
        ppClientContext,
      );

  VARIANT get DelegatedPolicyUsers {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarDelegatedPolicyUsers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarDelegatedPolicyUsers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddDelegatedPolicyUser(
    Pointer<Utf16> bstrDelegatedPolicyUser,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDelegatedPolicyUser,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDelegatedPolicyUser,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrDelegatedPolicyUser,
        varReserved,
      );

  int DeleteDelegatedPolicyUser(
    Pointer<Utf16> bstrDelegatedPolicyUser,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDelegatedPolicyUser,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDelegatedPolicyUser,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrDelegatedPolicyUser,
        varReserved,
      );

  int InitializeClientContextFromStringSid(
    Pointer<Utf16> SidString,
    int lOptions,
    VARIANT varReserved,
    Pointer<Pointer<COMObject>> ppClientContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SidString,
            Int32 lOptions,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SidString,
            int lOptions,
            VARIANT varReserved,
            Pointer<Pointer<COMObject>> ppClientContext,
          )>()(
        ptr.ref.lpVtbl,
        SidString,
        lOptions,
        varReserved,
        ppClientContext,
      );

  VARIANT get PolicyAdministratorsName {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarAdmins,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarAdmins,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get PolicyReadersName {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarReaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarReaders,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddPolicyAdministratorName(
    Pointer<Utf16> bstrAdmin,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAdmin,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAdmin,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrAdmin,
        varReserved,
      );

  int DeletePolicyAdministratorName(
    Pointer<Utf16> bstrAdmin,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAdmin,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAdmin,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrAdmin,
        varReserved,
      );

  int AddPolicyReaderName(
    Pointer<Utf16> bstrReader,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrReader,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrReader,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrReader,
        varReserved,
      );

  int DeletePolicyReaderName(
    Pointer<Utf16> bstrReader,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrReader,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrReader,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrReader,
        varReserved,
      );

  VARIANT get DelegatedPolicyUsersName {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarDelegatedPolicyUsers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarDelegatedPolicyUsers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddDelegatedPolicyUserName(
    Pointer<Utf16> bstrDelegatedPolicyUser,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDelegatedPolicyUser,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDelegatedPolicyUser,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrDelegatedPolicyUser,
        varReserved,
      );

  int DeleteDelegatedPolicyUserName(
    Pointer<Utf16> bstrDelegatedPolicyUser,
    VARIANT varReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDelegatedPolicyUser,
            VARIANT varReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDelegatedPolicyUser,
            VARIANT varReserved,
          )>()(
        ptr.ref.lpVtbl,
        bstrDelegatedPolicyUser,
        varReserved,
      );
}

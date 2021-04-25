import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/src/com/UserDataPaths.dart';
import 'package:win32/win32.dart';

typedef DWORD = Uint32;
typedef ULONG = Uint32;
typedef HANDLE = IntPtr;
typedef HSTRING = IntPtr;

bool isAppContainer() {
  final phToken = calloc<HANDLE>();
  final tokenInfo = calloc<DWORD>();
  final bytesReturned = calloc<DWORD>();

  try {
    final hProcess = GetCurrentProcess();
    if (OpenProcessToken(hProcess, TOKEN_READ, phToken) == FALSE) {
      OutputDebugString(
          "Error: Couldn\'t open the process token\n".toNativeUtf16());
    }

    if (GetTokenInformation(
            phToken.value,
            TOKEN_INFORMATION_CLASS.TokenIsAppContainer,
            tokenInfo,
            sizeOf<DWORD>(),
            bytesReturned) !=
        FALSE) {
      return (tokenInfo.value != 0);
    }
    return false;
  } finally {
    free(phToken);
    free(tokenInfo);
    free(bytesReturned);
  }
}

void main() {
  var hr = RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);
  OutputDebugString(
      '${!isAppContainer() ? '!' : ''}isAppContainer'.toNativeUtf16());

  const udpClassName = 'Windows.Storage.UserDataPaths';
  final hstr = convertToHString(udpClassName);
  final iudpStatics = calloc<GUID>()..ref.setGUID(IID_IUserDataPathsStatics);
  final factory = calloc<COMObject>();
  final defaults = calloc<COMObject>();

  try {
    hr = RoGetActivationFactory(hstr.value, iudpStatics, factory.cast());
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }
    final userDataStatics = IUserDataPathsStatics(factory);

    hr = userDataStatics.GetDefault(defaults.cast());
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    final userData = UserDataPaths(defaults);

    final hstr_RAD = userData.RoamingAppData;

    final pathPtr = WindowsGetStringRawBuffer(hstr_RAD, nullptr);

    print(pathPtr.toDartString());
  } finally {
    WindowsDeleteString(hstr.value);
    RoUninitialize();
  }
}

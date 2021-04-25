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

  final pIID_IUserDataPathsStatics = calloc<GUID>()
    ..ref.setGUID(IID_IUserDataPathsStatics);
  final activationFactory = calloc<COMObject>();
  final userDataDefaults = calloc<COMObject>();

  try {
    hr = RoGetActivationFactory(
        hstr.value, pIID_IUserDataPathsStatics, activationFactory.cast());
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }
    final userDataStatics = IUserDataPathsStatics(activationFactory);

    hr = userDataStatics.GetDefault(userDataDefaults.cast());
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    final userData = UserDataPaths(userDataDefaults);
    final hstrRoamingAppData = userData.RoamingAppData;

    final roamingAppData =
        WindowsGetStringRawBuffer(hstrRoamingAppData, nullptr).toDartString();

    print('RoamingAppData: $roamingAppData');
  } finally {
    WindowsDeleteString(hstr.value);
    free(pIID_IUserDataPathsStatics);
    free(activationFactory);
    free(userDataDefaults);
    RoUninitialize();
  }
}

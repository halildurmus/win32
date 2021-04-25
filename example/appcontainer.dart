import 'dart:ffi';

import 'package:ffi/ffi.dart';
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

int CreateHString(String dartString) {
  final ptr = dartString.toNativeUtf16();
  try {
    final hstr = calloc<HSTRING>();
    WindowsCreateString(ptr, dartString.length, hstr);
    return hstr.value;
  } finally {
    free(ptr);
  }
}

void main() {
  OutputDebugString(
      '${!isAppContainer() ? '!' : ''}isAppContainer'.toNativeUtf16());

  const udpClassName = 'Windows.Storage.UserDataPaths';
  final hstr = CreateHString(udpClassName);
  final iudpStatics = calloc<GUID>()..ref.setGUID(IID_IUserDataPathsStatics);
  final factory = calloc<COMObject>();
  final defaults = calloc<Pointer>();

  try {
    var hr = RoGetActivationFactory(hstr, iudpStatics, factory.cast());
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }
    final userDataPath = IUserDataPathsStatics(factory);

    hr = userDataPath.GetDefault(defaults);
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }
    print('yay!');
  } finally {
    WindowsDeleteString(hstr);
  }
}

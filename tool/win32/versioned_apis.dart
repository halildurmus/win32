// This file lists APIs that are not available in all releases of Windows

/// Lists minimum build number for newly-added APIs

const windowsBuilds = <String, int>{
  'WIN10_TH1': 10240,
  'WIN10_TH2': 10586,
  'WIN10_RS1': 14393,
  'WIN10_RS2': 15063,
  'WIN10_RS3': 16299,
  'WIN10_RS4': 17134,
  'WIN10_RS5': 17763,
  'WIN10_19H1': 18362,
  'WIN10_19H2': 18363,
  'WIN10_20H1': 19041,
  'WIN10_20H2': 19042,
};

final versionedAPIs = <String, int>{
  'GetIntegratedDisplaySize': windowsBuilds['WIN10_TH1']!,

  // The documentation says IsWow64Process2 is available in Windows Server 2016
  // (i.e. RS2 / build 10586), and the header files mark it as available on any
  // Windows 10 version, but this is not true, per:
  // https://www.rudyhuyn.com/blog/2017/12/13/how-to-detect-that-your-x86-application-runs-on-windows-on-arm/
  // and per inspection on a physical Windows Server 2016 machine.
  'IsWow64Process2': windowsBuilds['WIN10_RS3']!,

  'GetSystemDpiForProcess': windowsBuilds['WIN10_RS4']!,
  'ClosePseudoConsole': windowsBuilds['WIN10_RS5']!,
  'CreatePseudoConsole': windowsBuilds['WIN10_RS5']!,
  'ResizePseudoConsole': windowsBuilds['WIN10_RS5']!
};

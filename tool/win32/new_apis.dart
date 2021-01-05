// This file lists APIs that are not available in all releases of Windows

/// Lists minimum build number for newly-added APIs
const versionedAPIs = <String, int>{
  // The documentation says IsWow64Process2 is available in Windows Server 2016
  // (i.e. build 10586), but this is not true, per:
  // https://www.rudyhuyn.com/blog/2017/12/13/how-to-detect-that-your-x86-application-runs-on-windows-on-arm/
  // and per inspection on a physical Windows Server 2016 machine.
  'IsWow64Process2': 16299,

  'GetSystemDpiForProcess': 17134,
  'ClosePseudoConsole': 17763,
  'CreatePseudoConsole': 17763,
  'ResizePseudoConsole': 17763
};

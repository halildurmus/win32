// This file lists APIs that are not available in all releases of Windows

/// Lists minimum build number for newly-added APIs
const versionedAPIs = <String, int>{
  'IsWow64Process2': 10586,
  'GetSystemDpiForProcess': 17134,
  'ClosePseudoConsole': 17763,
  'CreatePseudoConsole': 17763,
  'ResizePseudoConsole': 17763
};

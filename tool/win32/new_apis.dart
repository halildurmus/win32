// This file lists APIs that are not available in all releases of Windows

/// Lists minimum build number for newly-added APIs

const WIN10_TH1 = 10240;
const WIN10_TH2 = 10586;
const WIN10_RS1 = 14393;
const WIN10_RS2 = 15063;
const WIN10_RS3 = 16299;
const WIN10_RS4 = 17134;
const WIN10_RS5 = 17763;
const WIN10_19H1 = 18362;
const WIN10_19H2 = 18363;
const WIN10_20H1 = 19041;
const WIN10_20H2 = 19042;

const versionedAPIs = <String, int>{
  'GetIntegratedDisplaySize': WIN10_TH1,

  // The documentation says IsWow64Process2 is available in Windows Server 2016
  // (i.e. RS2 / build 10586), and the header files mark it as available on any
  // Windows 10 version, but this is not true, per:
  // https://www.rudyhuyn.com/blog/2017/12/13/how-to-detect-that-your-x86-application-runs-on-windows-on-arm/
  // and per inspection on a physical Windows Server 2016 machine.
  'IsWow64Process2': WIN10_RS3,

  'GetSystemDpiForProcess': WIN10_RS4,
  'ClosePseudoConsole': WIN10_RS5,
  'CreatePseudoConsole': WIN10_RS5,
  'ResizePseudoConsole': WIN10_RS5
};

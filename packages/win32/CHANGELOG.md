# Changelog

All notable changes to this project will be documented in this file.

## [5.13.0] - 2025-05-09

### 🚀 Features

- Add support for GetCurrentDirectory by @brianquinlan in [#986](https://github.com/halildurmus/win32/pull/986)
- Add `SetLastError` function by @halildurmus in [#975](https://github.com/halildurmus/win32/pull/975)
- Add extension methods to convert `FILETIME` to `DateTime` by @halildurmus in [#974](https://github.com/halildurmus/win32/pull/974)
- Add the `WIN32_FILE_ATTRIBUTE_DATA` struct by @brianquinlan in [#973](https://github.com/halildurmus/win32/pull/973)

### ⚙️ Miscellaneous Tasks

- Tweak win32 workflow by @halildurmus in [#982](https://github.com/halildurmus/win32/pull/982)

[5.13.0]: https://github.com/halildurmus/win32/compare/v5.12.0..v5.13.0

## [5.12.0] - 2025-03-11

### 🚀 Features

- Add more Kernel32 APIs by @halildurmus in [#969](https://github.com/halildurmus/win32/pull/969)
- Add `MOVE_FILE_FLAGS` enum by @halildurmus in [#967](https://github.com/halildurmus/win32/pull/967)
- Add support for MoveFileEx by @brianquinlan in [#966](https://github.com/halildurmus/win32/pull/966)

### New Contributors ❤️

- @brianquinlan made their first contribution in [#966](https://github.com/halildurmus/win32/pull/966)

[5.12.0]: https://github.com/halildurmus/win32/compare/v5.11.0..v5.12.0

## [5.11.0] - 2025-02-19

### 🚀 Features

- Revert deprecation of top-level constants of enums by @halildurmus in [#960](https://github.com/halildurmus/win32/pull/960)
- Improve projection of flexible array members by @halildurmus in [#959](https://github.com/halildurmus/win32/pull/959)

### 🎨 Styling

- Format with tall-style by @halildurmus in [#957](https://github.com/halildurmus/win32/pull/957)

[5.11.0]: https://github.com/halildurmus/win32/compare/v5.10.1..v5.11.0

## [5.10.1] - 2025-01-27

### 🐛 Bug Fixes

- Fix `PRINTER_ENUM_*` constants by [@halildurmus](https://github.com/halildurmus) in [#954](https://github.com/halildurmus/win32/pull/954)
- `nodoc` deprecation fix by [@weasdown](https://github.com/weasdown) in [#949](https://github.com/halildurmus/win32/pull/949)

### ⚙️ Miscellaneous Tasks

- Add `.gitattributes` to normalize line endings by [@halildurmus](https://github.com/halildurmus)
- Tweak git-cliff configuration by [@halildurmus](https://github.com/halildurmus)

### New Contributors ❤️

- @weasdown made their first contribution in [#949](https://github.com/halildurmus/win32/pull/949)

[5.10.1]: https://github.com/halildurmus/win32/compare/v5.10.0..v5.10.1

## [5.10.0] - 2025-01-01

### 🚀 Features

- Add `IsWindows8OrGreater` and `GetCurrentPackageFullName` APIs ([#944](https://github.com/halildurmus/win32/issues/944)) - ([73e4c53](https://github.com/halildurmus/win32/commit/73e4c537da60f72c95f9a9457e3af1a771264f94))

[5.10.0]: https://github.com/halildurmus/win32/compare/v5.9.0..v5.10.0

## [5.9.0] - 2024-11-29

### 🚀 Features

- *(COM)* Add more Core Audio interfaces ([#937](https://github.com/halildurmus/win32/issues/937)) - ([2eaeef1](https://github.com/halildurmus/win32/commit/2eaeef1ac4d89a144eb7038d79ca37cbb7379ea9))
- Add `GetWindowCompositionAttribute`, `SetWindowCompositionAttribute` APIs ([#938](https://github.com/halildurmus/win32/issues/938)) - ([2081e94](https://github.com/halildurmus/win32/commit/2081e942e5ae2decfa1d51b745cb115fddf800c1))
- Deprecate `SCARD_SCOPE_SYSTEM` constant ([#930](https://github.com/halildurmus/win32/issues/930)) - ([c6c2c5c](https://github.com/halildurmus/win32/commit/c6c2c5c5107ac73da421428f098dbd5ca9deaa35))

### 🐛 Bug Fixes

- Revert deprecation of several constants ([#929](https://github.com/halildurmus/win32/issues/929)) - ([dd09757](https://github.com/halildurmus/win32/commit/dd09757fa92142dd6fc0a34c428f861d90b0ed1f))

### 🧹 Refactor

- *(tools)* Migrate scripts to Dart ([#931](https://github.com/halildurmus/win32/issues/931)) - ([ac51803](https://github.com/halildurmus/win32/commit/ac51803e69f601b9d174a255910222b49101d800))

### 📝 Documentation

- *(website)* Tweak commands - ([2f75003](https://github.com/halildurmus/win32/commit/2f75003bc513f96e740f245d693e8de618fea2dd))
- *(website)* Update contributing guide - ([865d9ec](https://github.com/halildurmus/win32/commit/865d9ecc3f993536ee239afd08cb5fc468b4b568))
- Update PUBLISHING.md - ([18420d6](https://github.com/halildurmus/win32/commit/18420d69dd2699b30bda0bedb8a5d4f7501c2fa9))

### ⚙️ Miscellaneous Tasks

- *(tools)* Remove `struct_sizes` - ([4b3b21c](https://github.com/halildurmus/win32/commit/4b3b21ce374e9392845f0637420b528dfa87143f))
- Tweak git-cliff configuration - ([7c2ce1a](https://github.com/halildurmus/win32/commit/7c2ce1a6452e29db9289b0b37539fbeb1a7ac4f2))
- Update workflows - ([25eb3f4](https://github.com/halildurmus/win32/commit/25eb3f4f4cd849823df2fd9e273c892e435d5c39))
- Update workflows ([#926](https://github.com/halildurmus/win32/issues/926)) - ([5c730c4](https://github.com/halildurmus/win32/commit/5c730c47190b0ed2683b408df8c1cb8390845763))

[5.9.0]: https://github.com/halildurmus/win32/compare/v5.8.0..v5.9.0

## [5.8.0] - 2024-11-02

- Add `DISP_E_*` constants
- Add `argError` optional parameter to the `Dispatcher.invoke` method, allowing
  retrieval of the index of the first parameter in `rgvarg` that encounters an
  error, if applicable
- Update `Dispatcher.set` to accept a `Pointer<VARIANT>` for the value
  parameter
- Add `byReference` optional named parameter to the `Dispatcher.set` method,
  enabling property assignment by reference instead of by value

## [5.7.2] - 2024-10-28

- Add `DROPFILES` struct
- Add `DragQueryFile` API

## [5.7.1] - 2024-10-22

- Add `Pointer<VARIANT>` optional parameter to `Dispatcher.invoke` method
- Add `Dispatcher.fromCLSID` constructor for creating a `Dispatcher` from a
  CLSID

## [5.7.0] - 2024-10-19

- Add `UnregisterDeviceNotification` API (#916)
- Add `DEV_BROADCAST_VOLUME` struct
- Add `DRIVE_UNKNOWN`, `DRIVE_NO_ROOT_DIR`, `DRIVE_REMOVABLE`, `DRIVE_FIXED`,
  `DRIVE_REMOTE`, `DRIVE_CDROM`, and `DRIVE_RAMDISK` constants
- Add `Dispatcher` class, a thin wrapper around the `IDispatch` interface, used
  for invoking methods and properties on COM automation objects

## [5.6.1] - 2024-10-18

- Add `RegisterDeviceNotification`, `WTSRegisterSessionNotification`, and
  `WTSUnRegisterSessionNotification` APIs (#913)
- Add `NOTIFY_FOR_THIS_SESSION` and `NOTIFY_FOR_ALL_SESSIONS` constants (#913)
- Add `DEV_BROADCAST_DEVICEINTERFACE_` and `DEV_BROADCAST_HDR` structures (#913)
- Add `DEV_BROADCAST_HDR_DEVICE_TYPE` enum (#913)
- Add `GUID_CONSOLE_DISPLAY_STATE`, `WM_WTSESSION_CHANGE`, and `WTS_SESSION_*`
  constants (#914)

## [5.6.0] - 2024-10-12

- Add `DISPLAY_DEVICE_STATE_FLAGS` enum (#901)
- Add `FILE_DEVICE_TYPE` enum (#901)
- Deprecate `SCARD_SCOPE_USER` constant in favor of
  `SCARD_SCOPE.SCARD_SCOPE_USER` (#901)
- Deprecate `SCARD_SCOPE_TERMINAL` constant in favor of
  `SCARD_SCOPE.SCARD_SCOPE_TERMINAL` (#901)
- Deprecate `SYMFLAG_VALUEPRESENT` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_VALUEPRESENT` (#901)
- Deprecate `SYMFLAG_REGISTER` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_REGISTER` (#901)
- Deprecate `SYMFLAG_REGREL` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_REGREL` (#901)
- Deprecate `SYMFLAG_FRAMEREL` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_FRAMEREL` (#901)
- Deprecate `SYMFLAG_PARAMETER` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_PARAMETER` (#901)
- Deprecate `SYMFLAG_LOCAL` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_LOCAL` (#901)
- Deprecate `SYMFLAG_CONSTANT` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_CONSTANT` (#901)
- Deprecate `SYMFLAG_EXPORT` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_EXPORT` (#901)
- Deprecate `SYMFLAG_FORWARDER` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_FORWARDER` (#901)
- Deprecate `SYMFLAG_FUNCTION` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_FUNCTION` (#901)
- Deprecate `SYMFLAG_VIRTUAL` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_VIRTUAL` (#901)
- Deprecate `SYMFLAG_THUNK` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_THUNK` (#901)
- Deprecate `SYMFLAG_TLSREL` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_TLSREL` (#901)
- Deprecate `SYMFLAG_SLOT` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_SLOT` (#901)
- Deprecate `SYMFLAG_ILREL` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_ILREL` (#901)
- Deprecate `SYMFLAG_METADATA` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_METADATA` (#901)
- Deprecate `SYMFLAG_CLR_TOKEN` constant in favor of
  `SYMBOL_INFO_FLAGS.SYMFLAG_CLR_TOKEN` (#901)
- Deprecate `SND_SYNC` constant in favor of `SND_FLAGS.SND_SYNC` (#901)
- Deprecate `SND_ASYNC` constant in favor of `SND_FLAGS.SND_ASYNC` (#901)
- Deprecate `SND_NODEFAULT` constant in favor of
  `SND_FLAGS.SND_NODEFAULT` (#901)
- Deprecate `SND_MEMORY` constant in favor of `SND_FLAGS.SND_MEMORY` (#901)
- Deprecate `SND_LOOP` constant in favor of `SND_FLAGS.SND_LOOP` (#901)
- Deprecate `SND_NOSTOP` constant in favor of `SND_FLAGS.SND_NOSTOP` (#901)
- Deprecate `SND_NOWAIT` constant in favor of `SND_FLAGS.SND_NOWAIT` (#901)
- Deprecate `SND_ALIAS` constant in favor of `SND_FLAGS.SND_ALIAS` (#901)
- Deprecate `SND_ALIAS_ID` constant in favor of `SND_FLAGS.SND_ALIAS_ID` (#901)
- Deprecate `SND_FILENAME` constant in favor of `SND_FLAGS.SND_FILENAME` (#901)
- Deprecate `SND_RESOURCE` constant in favor of `SND_FLAGS.SND_RESOURCE` (#901)
- Deprecate `SND_PURGE` constant in favor of `SND_FLAGS.SND_PURGE` (#901)
- Deprecate `SND_APPLICATION` constant in favor of
  `SND_FLAGS.SND_APPLICATION` (#901)
- Deprecate `SND_SENTRY` constant in favor of `SND_FLAGS.SND_SENTRY` (#901)
- Deprecate `SND_RING` constant in favor of `SND_FLAGS.SND_RING` (#901)
- Deprecate `SND_SYSTEM` constant in favor of `SND_FLAGS.SND_SYSTEM` (#901)
- Deprecate `DISPLAY_DEVICE_MIRRORING_DRIVER` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_MIRRORING_DRIVER` (#901)
- Deprecate `DISPLAY_DEVICE_VGA_COMPATIBLE` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_VGA_COMPATIBLE` (#901)
- Deprecate `DISPLAY_DEVICE_REMOVABLE` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_REMOVABLE` (#901)
- Deprecate `DISPLAY_DEVICE_MODESPRUNED` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_MODESPRUNED` (#901)
- Deprecate `DISPLAY_DEVICE_ACTIVE` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_ACTIVE` (#901)
- Deprecate `DISPLAY_DEVICE_PRIMARY_DEVICE` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_PRIMARY_DEVICE` (#901)
- Deprecate `WDA_NONE` constant in favor of
  `WINDOW_DISPLAY_AFFINITY.WDA_NONE` (#901)
- Deprecate `WDA_MONITOR` constant in favor of
  `WINDOW_DISPLAY_AFFINITY.WDA_MONITOR` (#901)
- Deprecate `WDA_EXCLUDEFROMCAPTURE` constant in favor of
  `WINDOW_DISPLAY_AFFINITY.WDA_EXCLUDEFROMCAPTURE` (#901)
- Deprecate `WAVE_FORMAT_QUERY` constant in favor of
  `MIDI_WAVE_OPEN_TYPE.WAVE_FORMAT_QUERY` (#901)
- Deprecate `WAVE_ALLOWSYNC` constant in favor of
  `MIDI_WAVE_OPEN_TYPE.WAVE_ALLOWSYNC` (#901)
- Deprecate `WAVE_MAPPED` constant in favor of
  `MIDI_WAVE_OPEN_TYPE.WAVE_MAPPED` (#901)
- Deprecate `WAVE_FORMAT_DIRECT` constant in favor of
  `MIDI_WAVE_OPEN_TYPE.WAVE_FORMAT_DIRECT` (#901)
- Deprecate `WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE` constant in favor of
  `MIDI_WAVE_OPEN_TYPE.WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE` (#901)
- Deprecate `VARIANT_NOVALUEPROP` constant in favor of
  `VAR_CHANGE_FLAGS.VARIANT_NOVALUEPROP` (#901)
- Deprecate `VARIANT_ALPHABOOL` constant in favor of
  `VAR_CHANGE_FLAGS.VARIANT_ALPHABOOL` (#901)
- Deprecate `VARIANT_NOUSEROVERRIDE` constant in favor of
  `VAR_CHANGE_FLAGS.VARIANT_NOUSEROVERRIDE` (#901)
- Deprecate `VARIANT_LOCALBOOL` constant in favor of
  `VAR_CHANGE_FLAGS.VARIANT_LOCALBOOL` (#901)
- Deprecate `NO_ERROR` constant in favor of `WIN32_ERROR.NO_ERROR` (#901)
- Deprecate `DISPLAY_DEVICE_ATTACHED_TO_DESKTOP` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_ATTACHED_TO_DESKTOP` (#901)
- Deprecate `DISPLAY_DEVICE_ATTACHED` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_ATTACHED` (#901)
- Deprecate `DISPLAY_DEVICE_MULTI_DRIVER` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_MULTI_DRIVER` (#901)
- Deprecate `DISPLAY_DEVICE_ACC_DRIVER` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_ACC_DRIVER` (#901)
- Deprecate `DISPLAY_DEVICE_UNSAFE_MODES_ON` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_UNSAFE_MODES_ON` (#901)
- Deprecate `DISPLAY_DEVICE_TS_COMPATIBLE` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_TS_COMPATIBLE` (#901)
- Deprecate `DISPLAY_DEVICE_RDPUDD` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_RDPUDD` (#901)
- Deprecate `DISPLAY_DEVICE_REMOTE` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_REMOTE` (#901)
- Deprecate `DISPLAY_DEVICE_DISCONNECT` constant in favor of
  `DISPLAY_DEVICE_STATE_FLAGS.DISPLAY_DEVICE_DISCONNECT` (#901)
- Deprecate `PRODUCT_UNDEFINED` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_UNDEFINED` (#901)
- Deprecate `PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT` (#901)
- Deprecate `PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL` (#901)
- Deprecate `PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC` (#901)
- Deprecate `PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC` (#901)
- Deprecate `PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE` (#901)
- Deprecate `PRODUCT_CLUSTER_SERVER_V` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_CLUSTER_SERVER_V` (#901)
- Deprecate `PRODUCT_STARTER_E` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_STARTER_E` (#901)
- Deprecate `PRODUCT_HOME_BASIC_E` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_HOME_BASIC_E` (#901)
- Deprecate `PRODUCT_HOME_PREMIUM_E` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_HOME_PREMIUM_E` (#901)
- Deprecate `PRODUCT_PROFESSIONAL_E` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_PROFESSIONAL_E` (#901)
- Deprecate `PRODUCT_ENTERPRISE_E` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ENTERPRISE_E` (#901)
- Deprecate `PRODUCT_ULTIMATE_E` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ULTIMATE_E` (#901)
- Deprecate `PRODUCT_ENTERPRISE_EVALUATION` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ENTERPRISE_EVALUATION` (#901)
- Deprecate `PRODUCT_MULTIPOINT_STANDARD_SERVER` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_MULTIPOINT_STANDARD_SERVER` (#901)
- Deprecate `PRODUCT_MULTIPOINT_PREMIUM_SERVER` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_MULTIPOINT_PREMIUM_SERVER` (#901)
- Deprecate `PRODUCT_STANDARD_EVALUATION_SERVER` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_STANDARD_EVALUATION_SERVER` (#901)
- Deprecate `PRODUCT_DATACENTER_EVALUATION_SERVER` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_DATACENTER_EVALUATION_SERVER` (#901)
- Deprecate `PRODUCT_ENTERPRISE_N_EVALUATION` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ENTERPRISE_N_EVALUATION` (#901)
- Deprecate `PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER` (#901)
- Deprecate `PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER` (#901)
- Deprecate `PRODUCT_CORE_N` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_CORE_N` (#901)
- Deprecate `PRODUCT_CORE_COUNTRYSPECIFIC` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_CORE_COUNTRYSPECIFIC` (#901)
- Deprecate `PRODUCT_CORE_SINGLELANGUAGE` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_CORE_SINGLELANGUAGE` (#901)
- Deprecate `PRODUCT_CORE` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_CORE` (#901)
- Deprecate `PRODUCT_PROFESSIONAL_WMC` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_PROFESSIONAL_WMC` (#901)
- Deprecate `PRODUCT_EDUCATION` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_EDUCATION` (#901)
- Deprecate `PRODUCT_EDUCATION_N` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_EDUCATION_N` (#901)
- Deprecate `PRODUCT_IOTUAP` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_IOTUAP` (#901)
- Deprecate `PRODUCT_ENTERPRISE_S` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ENTERPRISE_S` (#901)
- Deprecate `PRODUCT_ENTERPRISE_S_N` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ENTERPRISE_S_N` (#901)
- Deprecate `PRODUCT_ENTERPRISE_S_EVALUATION` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ENTERPRISE_S_EVALUATION` (#901)
- Deprecate `PRODUCT_ENTERPRISE_S_N_EVALUATION` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ENTERPRISE_S_N_EVALUATION` (#901)
- Deprecate `PRODUCT_DATACENTER_A_SERVER_CORE` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_DATACENTER_A_SERVER_CORE` (#901)
- Deprecate `PRODUCT_STANDARD_A_SERVER_CORE` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_STANDARD_A_SERVER_CORE` (#901)
- Deprecate `PRODUCT_PRO_WORKSTATION` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_PRO_WORKSTATION` (#901)
- Deprecate `PRODUCT_PRO_WORKSTATION_N` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_PRO_WORKSTATION_N` (#901)
- Deprecate `PRODUCT_ANDROMEDA` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_ANDROMEDA` (#901)
- Deprecate `PRODUCT_XBOX_NATIVEOS` constant in favor of
  `OS_PRODUCT_TYPE.PRODUCT_XBOX_NATIVEOS` (#901)
- Deprecate `FILE_DEVICE_CD_ROM` constant in favor of
  `FILE_DEVICE_TYPE.FILE_DEVICE_CD_ROM` (#901)
- Deprecate `FILE_DEVICE_DISK` constant in favor of
  `FILE_DEVICE_TYPE.FILE_DEVICE_DISK` (#901)
- Deprecate `FILE_DEVICE_DVD` constant in favor of
  `FILE_DEVICE_TYPE.FILE_DEVICE_DVD` (#901)
- Deprecate `FILE_DEVICE_TAPE` constant in favor of
  `FILE_DEVICE_TYPE.FILE_DEVICE_TAPE` (#901)
- Deprecate `MIM_OPEN` constant in favor of `MM_MIM_OPEN` (#902)
- Deprecate `MIM_CLOSE` constant in favor of `MM_MIM_CLOSE` (#902)
- Deprecate `MIM_DATA` constant in favor of `MM_MIM_DATA` (#902)
- Deprecate `MIM_LONGDATA` constant in favor of `MM_MIM_LONGDATA` (#902)
- Deprecate `MIM_ERROR` constant in favor of `MM_MIM_ERROR` (#902)
- Deprecate `MIM_LONGERROR` constant in favor of `MM_MIM_LONGERROR` (#902)
- Deprecate `MOM_OPEN` constant in favor of `MM_MOM_OPEN` (#902)
- Deprecate `MOM_CLOSE` constant in favor of `MM_MOM_CLOSE` (#902)
- Deprecate `MOM_DONE` constant in favor of `MM_MOM_DONE` (#902)
- Deprecate `MIM_MOREDATA` constant in favor of `MM_MIM_MOREDATA` (#902)
- Deprecate `MOM_POSITIONCB` constant in favor of `MM_MOM_POSITIONCB` (#902)
- Add `isComInitialized` getter (#903)
- Deprecate `isCOMInitialized` getter in favor of `isComInitialized` (#903)
- You can automatically migrate your code to use the new constants and
  properties by running `dart fix --apply` in your terminal.
- Add `IsPropVariantString`, `PropVariantToStrRet`, and
  `PropVariantToStringWithDefault` APIs (#904)
- Add `SafeArrayAccessData`, `SafeArrayCreateVector`, `SafeArrayDestroy`, and
  `SafeArrayUnaccessData` APIs (#905, thanks to @aweinber)
- Add remaining `SafeArray*` APIs (#906)
- Add `SHGetLocalizedName` API (#908)

## [5.5.5] - 2024-10-02

- Add `BITMAPV5HEADER` struct (#892)
- Add `SetClassLongPtr` API (#899, thanks to @aweinber)
- Bump minimum required Dart version to `3.5.0`

## [5.5.4] - 2024-08-12

- Optimize `BSTR.fromString` constructor (#879)
- Fix `GUID_DEVCLASS_*` constants (#881)

## [5.5.3] - 2024-07-31

- Fix issue preventing the `README.md` from being displayed on pub.dev

## [5.5.2] - 2024-07-31

- Add some service constants (#858)
- Add Service Manager CLI example (#859)
- Add Task Manager App example (#860)

## [5.5.1] - 2024-05-15

- Migrate away from `UnmodifiableUint8ListView` (#850)
- Bump minimum required Dart version to `3.4.0` (#850)
- Bump `lints` dependency to `4.0.0` (#851)

## [5.5.0] - 2024-04-25

- Add `BLOB`, `BSTRBLOB`, `CABOOL`, `CABSTR`, `CABSTRBLOB`, `CAC`, `CACLIPDATA`,
  `CACLSID`, `CACY`, `CADATE`, `CADBL`, `CAFILETIME`, `CAFLT`, `CAH`, `CAI`,
  `CAL`, `CALPSTR`, `CALPWSTR`, `CAPROPVARIANT`, `CASCODE`, `CAUB`, `CAUH`,
  `CAUI`, `CAUL`, `CLIPDATA`, and `VERSIONEDSTREAM` structures (#845)
- Add `VARIANT_BOOL` typedef (#845)
- Fix the Dart representation of the `PROPVARIANT` structure (#845)
- Add `PropVariantInit` and `PropVariantClear` APIs (#845)

## [5.4.0] - 2024-03-30

- Fix constant values `ERROR_SERVICE_NOT_ACTIVE`, `KF_FLAG_ALIAS_ONLY`,
  `QS_INPUT`, `STD_INPUT_HANDLE`, `STD_OUTPUT_HANDLE`, `STD_ERROR_HANDLE`,
  `UIA_ItemTypePropertyId`, and `UIA_OrientationPropertyId` (#832)
- Introduce Win32 enumerations as extension types based on `int` (#832)
- Deprecate constants for the Win32 enumerations in favor of the newly
  introduced extension types. For example, replace the usage of `ERROR_SUCCESS`
  with `WIN32_ERROR.ERROR_SUCCESS` (#832)
- Deprecate constant values `WBEM_TIMEOUT_TYPE.WBEM_NO_WAIT` and
  `WBEM_TIMEOUT_TYPE.WBEM_INFINITE` in favor of the newly introduced constants
  `WBEM_NO_WAIT` and `WBEM_INFINITE` (#833)

  You can automatically migrate your code to use the new constants by running
  `dart fix --apply` in your terminal.

## [5.3.0] - 2024-03-08

- Migrate away from `.elementAt` in favor of `operator +` (#825)
- Bump minimum required Dart version to `3.3.0` (#825)
- Deprecate `CallWndProc` typedef in favor of `HOOKPROC` (#826)
- Deprecate `CCHookProc` typedef in favor of `LPCCHOOKPROC` (#826)
- Deprecate `CFHookProc` typedef in favor of `LPCFHOOKPROC` (#826)
- Deprecate `DlgProc` typedef in favor of `DLGPROC` (#826)
- Deprecate `DrawStateProc` typedef in favor of `DRAWSTATEPROC` (#826)
- Deprecate `DrawTextCallback` typedef in favor of `DTT_CALLBACK_PROC` (#826)
- Deprecate `EnumPageFilesProc` typedef in favor of
  `PENUM_PAGE_FILE_CALLBACK` (#826)
- Deprecate `EnumFontFamExProc` typedef in favor of `FONTENUMPROC` (#826)
- Deprecate `EnumResNameProc` typedef in favor of `ENUMRESNAMEPROC` (#826)
- Deprecate `EnumResTypeProc` typedef in favor of `ENUMRESTYPEPROC` (#826)
- Deprecate `EnumWindowsProc` typedef in favor of `WNDENUMPROC` (#826)
- Deprecate `ExcepInfoProc` typedef in favor of
  `LPEXCEPFINO_DEFERRED_FILLIN` (#826)
- Deprecate `FRHookProc` typedef in favor of `LPFRHOOKPROC` (#826)
- Deprecate `HandlerRoutine` typedef in favor of `PHANDLER_ROUTINE` (#826)
- Deprecate `LphandlerFunction` typedef in favor of `LPHANDLER_FUNCTION` (#826)
- Deprecate `LphandlerFunctionEx` typedef in favor of
  `LPHANDLER_FUNCTION_EX` (#826)
- Deprecate `LpoverlappedCompletionRoutine` in favor of
  `LPOVERLAPPED_COMPLETION_ROUTINE` (#826)
- Deprecate `LpserviceMainFunctionw` in favor of
  `LPSERVICE_MAIN_FUNCTION` (#826)
- Deprecate `MidiInProc` typedef in favor of `MIDIINPROC` (#826)
- Deprecate `MidiOutProc` typedef in favor of `MIDIOUTPROC` (#826)
- Deprecate `MonitorEnumProc` typedef in favor of `MONITORENUMPROC` (#826)
- Deprecate `OFNHookProc` typedef in favor of `LPOFNHOOKPROC` (#826)
- Deprecate `OpenCardCheckProc` typedef in favor of `LPOCNCHKPROC` (#826)
- Deprecate `OpenCardConnProc` typedef in favor of `LPOCNCONNPROC` (#826)
- Deprecate `OpenCardDisconnProc` typedef in favor of `LPOCNDSCPROC` (#826)
- Deprecate `OutputProc` typedef in favor of `GRAYSTRINGPROC` (#826)
- Deprecate `PfnAuthenticationCallbackEx` in favor of
  `PFN_AUTHENTICATION_CALLBACK_EX` (#826)
- Deprecate `PfnbluetoothGattEventCallback` in favor of
  `PFN_BLUETOOTH_GATT_EVENT_CALLBACK` (#826)
- Deprecate `PfnBluetoothEnumAttributesCallback` in favor of
  `PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK` (#826)
- Deprecate `PfnDeviceCallback` typedef in favor of `PFN_DEVICE_CALLBACK` (#826)
- Deprecate `PfnScNotifyCallbackFunction` in favor of
  `PFN_SC_NOTIFY_CALLBACK` (#826)
- Deprecate `SendAsyncProc` typedef in favor of `SENDASYNCPROC` (#826)
- Deprecate `SpNotifyCallback` typedef in favor of `SPNOTIFYCALLBACK` (#826)
- Deprecate `SubclassProc` typedef in favor of `SUBCLASSPROC` (#826)
- Deprecate `SymEnumSymbolsProc` in favor of
  `PSYM_ENUMERATESYMBOLS_CALLBACK` (#826)
- Deprecate `TaskDialogCallbackProc` typedef in favor of
  `PFTASKDIALOGCALLBACK` (#826)
- Deprecate `ThreadProc` typedef in favor of `LPTHREAD_START_ROUTINE` (#826)
- Deprecate `TimerProc` typedef in favor of `TIMERPROC` (#826)
- Deprecate `WindowProc` typedef in favor of `WNDPROC` (#826)
- Deprecate `WlanNotificationCallback` in favor of
  `WLAN_NOTIFICATION_CALLBACK` (#826)
- **Note**: You can automatically migrate your code to use the new typedefs by
  running `dart fix --apply` in your terminal.
- Deprecate `convertFromHString` function (#829)
- Deprecate `convertToHString` function (#829)
- Deprecate `getClassName` function (#829)
- Deprecate `getInterfaces` function (#829)
- Deprecate `getTrustLevel` function (#829)
- Deprecate `Pointer<HSTRING>.toDartString` extension method (#829)

## [5.2.0] - 2024-01-04

- Migrate examples utilizing `Pointer.fromFunction` to use
  `NativeCallable.isolateLocal` (#798)
- Add more WASAPI APIs, COM interfaces, and constants (#800)
- Generate missing documentation for certain COM interfaces (#806)
- Expose `SHCreateMemStream` API
- Bump minimum Dart version requirement to `3.2.0`

## [5.1.1] - 2023-12-01

- Fix dartdoc comment references (#787)
- Modernize `explorer` example (#789)
- Add `NtQuerySystemInformation` function (#790)
- Add more SAPI interfaces and constants (#794)

## [5.1.0] - 2023-11-15

- Add `midiInAddBuffer` function (#763)
- Add `MIDIERR_*` constants (#764)
- Add `IAgileObject` interface (#767)
- Add `refCount` function (#768)
- Add `ISpeechVoice` interface (#776)
- Bump minimum Dart version to `3.1.0`

## [5.0.9] - 2023-09-26

- Add `GlobalAlloc` flags (#754)
- Add more Windows Message constants (#755)
- Add Device Management events (#756)

## [5.0.8] - 2023-09-19

- Add `NetGetAadJoinInformation` and `NetFreeAadJoinInformation` APIs (#748,
  thanks to @solbirn)
- Fix a bug in the `initApp` function, which caused programs to crash when
  running AOT-compiled executables (#750)
- Fix a bug in the `shell_notify_icon` example to ensure compatibility with
  Windows 11 (#752)

## [5.0.7] - 2023-08-24

- Add `MONITORINFOEX` struct (#743)

## [5.0.6] - 2023-07-25

- Fix the Dart representation of the `VARIANT` structure (#736)

## [5.0.5] - 2023-06-27

- Add `GetRestrictedErrorInfo` and `IRestrictedErrorInfo` (#732)

## [5.0.4] - 2023-06-20

- Add `WinHttpRequest` APIs (#718)
- Update the UI Automation example (#719)
- Fix projection of COM get properties (#720)
- Add `waveIn*` APIs (#727)

## [5.0.3] - 2023-05-29

- Update the screenshot example to support multiple displays (#704, thanks to
  @ilopx)
- Add Windows UI Automation APIs (#711)

## [5.0.2] - 2023-05-16

- Add some additional user32 exports (#707, thanks to @ilopX)
- Add service management APIs (#709)

## [5.0.1] - 2023-05-15

- Add `IWebAuthenticationCoreManagerInterop` (#702, thanks to @solbirn)

## [5.0.0] - 2023-05-11

- Note: This package no longer supports 32-bit architectures. It assumes 64-bit.
- [BREAKING CHANGE] Experimental WinRT APIs are now removed, in favor of the new
  `windows_*` packages (see <https://win32.pub> for more information) 🎉
- [BREAKING CHANGE] `Finalizer` is now attached to COM objects. Therefore, you
  no longer need to call `.release()` to decrement the reference count, because
  `Finalizer` will do it for you when they go out of scope (#691).

  **Note:** Calling `.release()` with `Finalizer` attached may result in use
  after free and cause the process to crash

  **Note:** If you're manually managing the lifetime of the object, you need to
  call `.release()` to decrement the reference count
- Add Windows metadata interfaces (`IMetaData*`)
- Fixed memory leak in `convertToHString`
- Upgrade to Dart 3 and add class modifiers to `Struct` subclasses
- Added `detach` method to `IUnknown`, which detaches the object from
  `Finalizer` if you want to manually manage the lifetime of the object
  yourself (#677)

## [4.1.4] - 2023-05-05

- Add some minor network APIs

## [4.1.3] - 2023-04-12

- Add registry constants for win32_registry (#682)

## [4.1.2] - 2023-04-08

- Fix missing export of crypt32 APIs (#673)
- Fix a dartdoc comment reference (#666)
- Fix memory leak in `convertToHString`

## [4.1.1] - 2023-01-30

- Convert acronyms in method/property names to lowercase (#649, @halildurmus)
- Mark methods/properties that return WinRT objects as nullable (#650, @halildurmus)
- Mark WinRT object parameters as nullable (#652, @halildurmus)
- Tidy up various samples (#653, @timsneath)
- Add missing display enumeration funcs (#662, @timsneath)
- Add job object APIs (#663, @timsneath)

## [4.1.0] - 2023-01-06

- Add low-level keyboard hook constants (#632, @timsneath)
- Add WinRT geolocation classes and example (#633, #635,
  @timsneath/@halildurmus)
- Convert acryonyms in enums, methods and properties to match Dart style guide
  (#637, #649, @halildurmus)
- Generalize map collection interfaces to support enum arguments (#638,
  @halildurmus)
- Add extra Bluetooth APIs (#640, @timsneath)
- `winrtInitialize` and `winrtUninitialize` are no longer required. Windows
  Runtime classes automatically activate the runtime as required for a given
  thread. Added example of interaction between Dart isolates and COM apartments
  (#642, @halildurmus/@timsneath)

## [4.0.1] - 2022-12-30

- Revert upper Dart SDK constraint update due to pub analyzer bug.

## [4.0.0] - 2022-12-30

- [BREAKING CHANGE] COM objects now inherit from `NativeFinalizer`. Instead of
  directly releasing the memory allocated for them, you can now call
  `.release()` to decrement the reference count, and the memory will be
  automatically disposed when the refcount falls to zero (#623, @halildurmus)
- Update examples for new COM release mechanism (#623, @halildurmus)
- Update to latest Win32 metadata (#626, @timsneath)
- Add APIs for processor / firmware information (#627, @timsneath)
- Add APIs for shell file operations (#630, @timsneath)
- Update upper Dart SDK constraint to explicitly support Dart 3

## 3.1.4 - 2023-04-08

- Fix missing export of crypt32 APIs

## [3.1.3] - 2022-12-17

- Restructure generator util to use JSON for all data files (#605, @timsneath)
- Add more K32* APIs (#607, @timsneath)
- Remove unnecessary nullability from HSTRINGs (#608, #615, @halildurmus)
- Add UISettings (#610, @halildurmus)
- Add doc comments for COM and WinRT classes (#611, @timsneath)
- Clean up generation of WinRT imports (#616, @halildurmus)
- Add VirtualQuery and VirtualQueryEx (#619, @Smotto)
- Add SetDisplayConfig (#621, @timsneath)

## [3.1.2] - 2022-11-25

- Support generating IIDs for parameterized types (#596)
- Clean up GUID implementations (#599)
- Wrap WinRT representations of GUID as Dart Guid (#602)

## [3.1.1] - 2022-11-08

- Fix documentation bug (@timsneath)
- Add URI support to the WinRT generator (@halildurmus)

## [3.1.0] - 2022-11-06

- Fixed memory leaks in COM and WinRT code when an exception is generated.
- Update to the latest Win32 metadata from Microsoft.
- [BREAKING CHANGE] The WinSock APIs now use upper cased naming for structs. For
  example, `hostent` is now `HOSTENT`. This will only affect you if you
  explicitly imported `win32/winsock2.dart`.
- [BREAKING CHANGE] TouchInputParameters is now upper-cased in the metadata.

## [3.0.1] - 2022-10-14

- Improve projection of Map, Vector, and reference Windows Runtime types, with
  thanks as ever to Halil Durmus (@halildurmus).
- Add CryptoAPI functions (`CryptProtectData`, `CryptProtectMemory` etc.)
- Add pointer and touch APIs
- Fix WinRT FilePicker demo
- Add raw printer API example
- Remove console example `console.dart` (use
  <https://pub.dev/packages/dart_console> instead).

## [3.0.0] - 2022-08-30

- This release includes an overhaul of the COM and WinRT API generation, as
  described below. Apps and packages that call traditional Win32 APIs should not
  require changes, but apps that use COM or the highly-experimental WinRT APIs
  should expect to make changes.
- [BREAKING CHANGE] WinRT APIs have been moved to a separate library. This
  provides isolation for apps that only use traditional APIs (Win32/COM) from
  the more experimental WinRT APIs. To use WinRT from your code, change your
  import statement to `import 'package:win32/winrt.dart';`. The WinRT library
  also exports all Win32 APIs, so you don't have to import both libraries.
- [BREAKING CHANGE] COM and Windows Runtime methods and properties are now
  camelCased, not TitleCased. This is inconvenient, but it avoids a whole class
  of name clashes and aligns COM and WinRT APIs more closely with Dart idioms.
  As the projections get smarter with more helpers, we think this is the right
  call for the future and worth a one-time tax to fix.
- [BREAKING CHANGE] You can now cast to a new COM interface without needing the
  IID for the target interface. Instead of:

```dart
  final modalWindow = IModalWindow(fileDialog.toInterface(IID_IModalWindow));
```

write:

```dart
  final modalWindow = IModalWindow.from(fileDialog);
```

- [BREAKING CHANGE] WinRT classes now support projection of `List`s and
  `String`s directly.
- [BREAKING CHANGE] The WinRT `fromPointer` method is now `fromRawPointer`.
- `GUIDFromString` now supports an optional custom allocator parameter.
- Added various APIs from iphlpapi.dll for tracking and renewing IP addresses.
- Added `DisableThreadLibraryCalls`, `FindStringOrdinal`, `GetConsoleCP`,
  `GetConsoleOutputCP`, `GetModuleHandleExW`, `GetNumberOfConsoleInputEvents`,
  `GetVolumeInformation`, `GetVolumeInformationByHandle`, `PeekConsoleInput`,
  `ReadConsoleInputW`, `SetErrorMode`, `SetThreadErrorMode`, `SizeofResource`
  APIs from kernel32.dll
- Added `GetClassFile` API from ole32.dll
- Added `SetupDiGetDeviceInstanceId`, `SetupDiGetDeviceRegistryPropertyW` APIs
  from setupapi.dll
- Added `GetAltTabInfoW`, `GetClassNameW`, `GetGUIThreadInfo` APIs from
  user32.dll
- Added various foundational WinRT types, including `IIterable`, `IIterator`,
  `IKeyValuePair`, `IMapView`, `IVector`, `IVectorView`, `IPropertyValue`,
  `IReference`, with tremendous thanks again to @halildurmus, who has driven
  much of the recent WinRT work.
- Major reworking of the WinRT generation code, thanks to @halildurmus.

## [2.7.0] - 2022-05-27

- [BREAKING CHANGE] Major work on Windows Runtime APIs, with huge thanks to
  Halil Durmus (@halildurmus). Breaking changes are limited to WinRT APIs, which
  are now more idiomatic for Dart. Includes full implementation of
  `Windows.Globalization.Calendar` that is the new reference design for WinRT
  APIs.
- Restructure generation code into a separate package.
- Use super parameters introduced in Dart 2.17, with matching dependency
  upgrade.
- Tidy up examples to include consistent headers.
- All files now have lower case names (e.g. IUnknown.dart -> iunknown.dart)

## [2.6.1] - 2022-05-15

- Improve pana compliance

## [2.6.0] - 2022-05-15

- Add support for returning vectors from Windows Runtime APIs (#406, thanks to
  @halildurmus)
- Automatically convert Windows Runtime date properties to Dart DateTime
  equivalents (#418, thanks to @halildurmus)
- Add additional documentation on Windows Runtime APIs
- Update IDispatch sample to show how to supply parameters
- Add example for Windows Audio Session API (#422, thanks to @postacik)
- Fix an error with strings in structs (#425, thanks to @postacik)
- Update contributor documentation

## [2.5.2] - 2022-04-26

- Add example for monitor EDID data (#393, thanks to @krjw-eyev)
- Expand Bluetooth example (#397, thanks to @Sunbreak)
- Fix a comment typo (#398, thanks to @gaddlord)
- Improve fidelity of WinRT Calendar class and more tests (#396, #404, #405,
  #412 thanks to @halildurmus)
- Add additional spell checker COM interfaces
- Add example for an owner-draw (custom) titlebar
- Add new Wbem WMI interfaces
- Add example of WMI high-performance counters
- Add new theming APIs
- Update to latest Windows metadata (with a couple of minor changes to signed
  ints in MOUSEDATA and send()).

## [2.5.1] - 2022-03-31

- Add GetProcessTimes (#396, thanks to @halildurmus)
- Add device interface and device class GUIDs
- Add examples for Bluetooth LE and Setup APIs (#390, #392, thanks to @Sunbreak)
- Fix setup APIs to project HDEVINFO correctly

## [2.5.0] - 2022-03-28

- [BREAKING CHANGE] Use new projection tooling for WinRT classes. WinRT APIs are
  still in development and should be considered experimental; expect volatility
  as the projection tools mature and map types like String and DateTime, as well
  as WinRT primitives such as IVectorView, onto their Dart equivalents. (This
  doesn't affect COM and Win32 APIs, which can largely be considered stable,
  with the exception of changes to the underlying metadata exposed by
  Microsoft.)
- Add setupapi APIs, which were not being successfully projected. (#383, with
  thanks to @Sunbreak.) Add test to prevent that happening again.
- Add additional setup APIs (#386, with further thanks to @Sunbreak).
- Remove `tools/` folder from published package to reduce download overhead.

## [2.4.4] - 2022-03-23

- Fix broken doc links.

## [2.4.3] - 2022-03-22

- Add Bluetooth LE APIs

## [2.4.2] - 2022-03-20

- Add speech API (SAPI) support and sample
- Add Windows Audio Session API (WASAPI) support
- Automate more struct generation
- Apply more lints to source code
- Add GetUserName and update sysinfo example

## [2.4.1] - 2022-02-17

- Fix import error for gamepad APIs
- Add gamepad example

## [2.4.0] - 2022-02-14

- Added various inline functions, tidied up projection logic.

## [2.3.11] - 2022-02-07

- Add gamepad APIs

## [2.3.10] - 2022-02-01

- Add DPI_AWARENESS_CONTEXT enum values.

## [2.3.9] - 2022-01-30

- Add a few minor constants and handle typedefs. Nothing to see here.

## [2.3.8] - 2022-01-21

- Update package:ffi minimum version to 1.1.0, allowing use of arena
- Hide `Char` within generated structs.g.dart in prep for new FFI feature.

## [2.3.7] - 2022-01-21

- Declare platform support using new `platforms:` declaration in pubspec.yaml
- Update minimum version to Dart 2.15.0 and use constructor tearoffs

## [2.3.6] - 2022-01-17

- Add RegRenameKey.

## [2.3.5] - 2022-01-17

- Add FileTimeToSystemTime and SystemTimeToFileTime.

## [2.3.4] - 2022-01-16

- Added Windows Subsystem for Linux APIs (#342), with thanks to @ElMoribond.
  Add a new example that shows how to use them.
- Added SetEvent (#343) and CreateIcon (#344), with thanks to @untp.
- Add typedef for `HKEY`.
- Add more optional lints.
- Tweaked Explorer example.

## [2.3.3] - 2021-12-23

- Added CreateThread, CreateRemoteThread, CreateRemoteThreadEx() per request
- Added GetMachineTypeAttributes and added logic for Windows 11.

## [2.3.2] - 2021-12-21

- Added CreateDIBSection per request.
- Upgraded to latest published Windows metadata from Microsoft, which modifies
  the signature of some registry-related APIs from Int32 to Uint32 for better
  accuracy with the original API.
- Updated to the latest code generator, ported back from the v3 code.

## [2.3.1] - 2021-11-24

- Use automatic code generator for most structs. This may be a breaking change
  if you use the Bluetooth APIs, since `BLUETOOTH_ADDRESS.rgBytes` is now an
  `Array<Uint8>` instead of a `List<int>`. This is more accurate, but will
  require minor code change.
- Add additional raw input constants

## [2.3.0] - 2021-11-12

- Completely overhauled the metadata generation tooling. The code is much better
  structured, with each layer (type -> parameter -> method -> class) in its own
  `___Projection` class. Fixed a number of errors in the process, such as the
  assumption that all enums are of type `Uint32`.
- Rewrote several complex structs to use the new `Union` FFI type introduced in
  Dart 2.14 (and updated the minimum version accordingly). Code that uses the
  `INPUT` struct will need to be slightly modified, since the `mi`/`ki`/`hi`
  fields are now nested rather than provided as an extension property.
- Cleaned up some COM `Pointer` types to be more explicit.
- Add raw input APIs
- Add low-level keyboard hooks example

## [2.2.10] - 2021-10-20

- Add Windows 11 rounded corner window support along with sample
- Add magnifier APIs and example

## [2.2.9] - 2021-09-06

- Add some missing GDI functions

## [2.2.8] - 2021-08-29

- Add Native Wifi APIs (#299)

## [2.2.7] - 2021-08-26

- Added ResetEvent and complete `OVERLAPPED` struct (#295)
- Added more virtual memory functions (#297)

## [2.2.6] - 2021-08-23

- Add some requested APIs thanks to contributions from @ilopX, in particular
  a new sample for enumerating locally installed printers.
- Added ExtractAssociatedIcon, with thanks to @halildurmus.

## [2.2.5] - 2021-07-05

- Add more DWM APIs, including `DwmSetWindowAttribute`.

## [2.2.4] - 2021-06-24

- Add various DWM and subclassing APIs

## [2.2.3] - 2021-06-23

- Lazily evaluate `lookupFunction` FFI calls for improved performance.
- Add APIs for hooks and a few extra kernel32 APIs
- Add some more tests.

## [2.2.2] - 2021-06-20

- Add Windows Spooler library support.

## [2.2.1] - 2021-06-19

- Add initial support for the Windows Socket library (winsock2).

## [2.2.0] - 2021-06-19

- Fixes convertToHString to return an int, since `HSTRING`s are handles. This is
  a breaking change for any apps that use WinRT APIs, but given the limited
  availability of WinRT classes that fall into this category, updating only the
  minor version.
- Add low-level Device IO and structured storage APIs and diskinfo.dart sample.

## [2.1.5] - 2021-06-09

- Add smart card reader support.

## [2.1.4] - 2021-06-07

- Add helper functions for COM along with extra documentation.

## [2.1.3] - 2021-06-01

- Fix bug in shell COM APIs.
- Add examples for shortcut creation and named pipes.

## [2.1.2] - 2021-05-31

- Add serial port comms APIs
- Add additional shell COM APIs

## [2.1.1] - 2021-05-19

- Work around FFI regression in Dart master and dev builds.

## [2.1.0] - 2021-05-18

- Upgrade to Dart 2.13, which supports packed structs and arrays in FFI. This
  enables support for more automated generation of structs, which in turn
  increases development velocity for this package.

- Other APIs included in this release include:
  - More complete Bluetooth support
  - MIDI support
  - High DPI support
  - `IDispatch` support
  - Many more core user32 APIs

## [2.0.5] - 2021-03-27

- Add some debugging APIs to allow enumerating exported symbols, along with a
  sample (`dump.dart`).
- Free memory allocations in samples.
- Use latest version of Win32 metadata from winmd package, and generate most
  structs automatically using this metadata.
- Generate COM helper classes wherever metadata supports it, instead of
  requiring a manual decorator.
- Add about 20 new kernel32 APIs.

## [2.0.4] - 2021-03-14

- Add network events, thanks to a contribution from @sunbreak.
- Update COM vtable generation, thanks to a contribution from @bonukai.
- Update to use the latest WinMD package.

## [2.0.3] - 2021-03-12

- Add spellchecking COM APIs, thanks to a contribution from @bonukai.

## [2.0.2] - 2021-03-12

- Adds named pipe APIs to support projects like TerminalStudio/pty.

## [2.0.1] - 2021-03-12

- Adds a demo of custom window shapes.
- Removes Windows Metadata classes (now in the `winmd` package). This is a
  breaking change, but it's not anticipated to be a problem since these classes
  are only used for code generation.
- Update to latest WinMD package
- Add shell folder APIs
- Add registry key APIs

## [2.0.0] - 2021-02-12

- Stable version w/ sound null safety.
- Update to ffi 1.0.0 and address breaking changes.
- 100+ new APIs in kernel32, user32, ole32, advapi32, shell32 and gdi32, as well
  as a series of COM interfaces.
- Rework API wrapper to use functions instead of properties
- New JSON-based metadata format for Win32 APIs that supports API sets and
  minimum versions, and more robust tooling for loading and saving metadata
- Migrated Windows Runtime APIs into core unmanaged metadata
- Add waveOut* APIs from winmm.dll (thanks @slightfoot)
- Make VARIANT more representative of the underlying type.
- Add DLGTEMPLATE and DLGITEMTEMPLATE structs with extension methods.
- Add more tests.
- Add dialog box example and supporting extension methods
- New shell tray notification example (thanks @ilopX)
- Better documentation of constants and callbacks

## [1.7.4+1] - 2021-01-30

- Fix master -> main branch breaks

## [1.7.4] - 2020-11-14

- Add SysAllocString, SysFreeString, SysStringByteLen, SysStringLen,
  SHCreateItemFromParsingName
- Rename VARIANT_POINTER to VARIANT

## [1.7.3] - 2020-09-21

- Expand Win32 API documentation.
- New APIs:
- User32: ClipCursor, CopyIcon, DestroyIcon, DrawIcon, GetCursor,
    GetCursorPos, GetSystemMenu, SetMenuInfo, SetMenuItemInfo, ShowCursor

## [1.7.2+1] - 2020-09-20

- More documentation.

## [1.7.2] - 2020-09-19

- Add Win32 API documentation and a couple of minor APIs.

## [1.7.1] - 2020-09-17

- Add version information APIs and example.

## [1.7.0] - 2020-09-15

- Changed how the C-style APIs are generated. This should result in far better
  code smarts in your editor, as well as major improvements to the
  auto-generated documentation.
- Added many new APIs, including GetCurrentProcess and GetModuleFileName

## [1.6.10] - 2020-08-08

- New APIs
  - Shell: LockWorkstation, SHEmptyRecycleBin, SHGetDiskFreeSpaceEx,
    SHGetDriveMedia, SHQueryRecycleBin, InitCommonControlsEx, DrawStatusText
  - Add high-precision timing APIs: QueryPerformanceFrequency,
    QueryPerformanceCounter
  - User32: SetParent, CreateWindow macro, MonitorFromPoint, SetWindowsLongPtr
  - Kernel: Add SystemParametersInfo and related constants
  - Kernel: Add EnumProcessModulesEx (thanks @Hexer10)
- Samples
  - Add example of using app manifests to declare support for UAC permissions
    and Windows 10 opt-in behavior
- Windows Runtime metadata
  - Greatly expand WinMD utility to generate APIs directly from Windows Metadata
  - Autogenerate all Windows Runtime classes except ICalendar and
    IFileOpenPicker from metadata
- Code tidy up
  - Add more tests
  - Go through all the code with a stricter linter
  - Update README with screenshots and examples
  - Update Flutter Windows examples to the v4 template

## [1.6.9] - 2020-07-17

- Add credential management APIs (thanks @hpoul)
- Add battery and power management APIs
- Overhaul HRESULTs and add more tests

## [1.6.8] - 2020-07-08

- Add font enumeration example
- Experiment with hosting documentation on GitHub

## [1.6.7] - 2020-07-07

- Add basic registry checks
- Add initial Bluetooth discovery support
- Add a system information sample
- Guard tests so that they work on Windows 7
- Add some shell APIs and more tests

## [1.6.6] - 2020-07-04

- Add more process management APIs
- Add high level monitor configuration API

## [1.6.5] - 2020-07-02

- Add a broader array of console APIs
- Add a wallpaper example

## [1.6.4] - 2020-06-19

- Lots of documentation and linter cleanup

## [1.6.3] - 2020-06-18

- Add TaskDialog and dynamic library loading APIs
- Add dynamic load and Windows Runtime metadata samples
- Fix an annoying bug with `WindowsDeleteString` usage
- Add more tests and restructure code
- More library-level documentation
- Add script for generating classes

## [1.6.2] - 2020-06-17

- Clean up some of the generated documentation

## [1.6.1] - 2020-06-17

- Lots of minor refactoring and tidy up
- Some early WinMD parsing
- Add many more unit tests

## [1.6.0] - 2020-06-10

- Add WinRT examples, including Windows.Globalization.Calendar and
  Windows.Storage.Pickers.FileOpenPicker
- Add various process management and kernel APIs: CloseHandle, EnumProcesses,
  EnumProcessModules, GetModuleBaseName, GetModuleFileNameExt, OpenProcess,
  ReadProcessMemory and WriteProcessMemory.
- Add modules.dart sample
- Lots of refactoring and tidy up work.

## [1.5.1] - 2020-06-04

- Add GetTempPath()

## [1.5.0] - 2020-06-04

- Use automated Dart tool to generate all COM classes
- Add IFileDialogCustomize, IShellItem2, IShellItemArray, IShellItemFilter
- Fill out all the class methods
- Fix some embarrassing bugs

## [1.4.2] - 2020-06-02

- Fix a few bugs
- Add support for desktop background management with IDesktopWallpaper

## [1.4.1] - 2020-06-01

- Expand COM support to include IShellItemArray and various WMI classes

## [1.4.0] - 2020-05-31

- Add COM support
- Add implementations for IOpenFileDialog, IFileDialog, IModalWindow,
  IShellItem, IUnknown
- Add common item dialog example

## [1.3.2] - 2020-05-03

- Add Snake GDI example
- Add PeekMessage, MoveTo, VirtualAlloc/Free, StretchDibBits, Beep
- Tidy up code and test

## [1.3.1] - 2020-05-02

- Add RegisterWindowMessage
- Fix bugs in ACCEL and FINDREPLACE structs
- Fix various bugs in Notepad example

## [1.3.0] - 2020-04-24

- Add notepad example
- Add 20+ new APIs for common dialogs, message sending, accelerators,
  menus, fonts and GDI object manipulation
- Fix APIs to be 32-bit safe
- Fix some minor bugs

## [1.2.6] - 2020-04-17

- Add window enumeration (FindWindowEx, EnumWindows, IsWindowVisible,
  GetWindowText, GetWindowTextLength) and example

## [1.2.5] - 2020-04-13

- Added Flutter example
- Added common dialog example

## [1.2.4] - 2020-04-12

- Added volume management APIs

## [1.2.3] - 2020-04-12

- Add scrolling APIs and example
- Add 'new' known folder API
- Add some basic unit tests

## [1.2.2] - 2020-04-01

- Add known folder plus GUID classes

## [1.2.1] - 2020-03-30

- Added SendInput, Sleep and ShellExecute

## [1.2.0] - 2020-03-30

- Implemented a good sample of GDI calls
- Added support for timers
- Added virtual keyboard constants
- Added a GDI paint sample
- Added a more comprehensive sample game (Tetris)

## [1.1.1] - 2020-03-28

- Add class styles
- Match recommended package structure per pub.dev

## [1.1.0] - 2020-03-27

- Added MessageBox and console APIs

## [1.0.0] - 2020-03-27

- Initial version

[1.0.0]: https://github.com/halildurmus/win32/releases/tag/v1.0
[1.1.0]: https://github.com/halildurmus/win32/compare/v1.0...v1.1.0
[1.1.1]: https://github.com/halildurmus/win32/compare/v1.1.0...v1.1.1
[1.2.0]: https://github.com/halildurmus/win32/compare/v1.1.1...v1.2.0
[1.2.1]: https://github.com/halildurmus/win32/compare/v1.2.0...v1.2.1
[1.2.2]: https://github.com/halildurmus/win32/compare/v1.2.1...v1.2.2
[1.2.3]: https://github.com/halildurmus/win32/compare/v1.2.2...v1.2.3
[1.2.4]: https://github.com/halildurmus/win32/compare/v1.2.3...v1.2.4
[1.2.5]: https://github.com/halildurmus/win32/compare/v1.2.4...v1.2.5
[1.2.6]: https://github.com/halildurmus/win32/compare/v1.2.5...v1.2.6
[1.3.0]: https://github.com/halildurmus/win32/compare/v1.2.6...v1.3.0
[1.3.1]: https://github.com/halildurmus/win32/compare/v1.3.0...v1.3.1
[1.3.2]: https://github.com/halildurmus/win32/compare/v1.3.1...v1.3.2
[1.4.0]: https://github.com/halildurmus/win32/compare/v1.3.2...v1.4.0
[1.4.1]: https://github.com/halildurmus/win32/compare/v1.4.0...v1.4.1
[1.4.2]: https://github.com/halildurmus/win32/compare/v1.4.1...v1.4.2
[1.5.0]: https://github.com/halildurmus/win32/compare/v1.4.2...v1.5.0
[1.5.1]: https://github.com/halildurmus/win32/compare/v1.5.0...v1.5.1
[1.6.0]: https://github.com/halildurmus/win32/compare/v1.5.1...v1.6.0
[1.6.10]: https://github.com/halildurmus/win32/compare/v1.6.9...v1.6.10
[1.6.1]: https://github.com/halildurmus/win32/compare/v1.6.0...v1.6.1
[1.6.2]: https://github.com/halildurmus/win32/compare/v1.6.1...v1.6.2
[1.6.3]: https://github.com/halildurmus/win32/compare/v1.6.2...v1.6.3
[1.6.4]: https://github.com/halildurmus/win32/compare/v1.6.3...v1.6.4
[1.6.5]: https://github.com/halildurmus/win32/compare/v1.6.4...v1.6.5
[1.6.6]: https://github.com/halildurmus/win32/compare/v1.6.5...v1.6.6
[1.6.7]: https://github.com/halildurmus/win32/compare/v1.6.6...v1.6.7
[1.6.8]: https://github.com/halildurmus/win32/compare/v1.6.7...v1.6.8
[1.6.9]: https://github.com/halildurmus/win32/compare/v1.6.8...v1.6.9
[1.7.0]: https://github.com/halildurmus/win32/compare/v1.6.10...v1.7.0
[1.7.1]: https://github.com/halildurmus/win32/compare/v1.7.0...v1.7.1
[1.7.2]: https://github.com/halildurmus/win32/compare/v1.7.1...v1.7.2
[1.7.2+1]: https://github.com/halildurmus/win32/compare/v1.7.2...v1.7.2+1
[1.7.3]: https://github.com/halildurmus/win32/compare/v1.7.2+1...v1.7.3
[1.7.4]: https://github.com/halildurmus/win32/compare/v1.7.3...v1.7.4
[1.7.4+1]: https://github.com/halildurmus/win32/compare/v1.7.4...v1.7.4+1
[2.0.0]: https://github.com/halildurmus/win32/compare/v1.7.4+1...v2.0.0
[2.0.1]: https://github.com/halildurmus/win32/compare/v2.0.0...v2.0.1
[2.0.2]: https://github.com/halildurmus/win32/compare/v2.0.1...v2.0.2
[2.0.3]: https://github.com/halildurmus/win32/compare/v2.0.2...v2.0.3
[2.0.4]: https://github.com/halildurmus/win32/compare/v2.0.3...v2.0.4
[2.0.5]: https://github.com/halildurmus/win32/compare/v2.0.4...v2.0.5
[2.1.0]: https://github.com/halildurmus/win32/compare/v2.0.5...v2.1.0
[2.1.1]: https://github.com/halildurmus/win32/compare/v2.1.0...v2.1.1
[2.1.2]: https://github.com/halildurmus/win32/compare/v2.1.1...v2.1.2
[2.1.3]: https://github.com/halildurmus/win32/compare/v2.1.2...v2.1.3
[2.1.4]: https://github.com/halildurmus/win32/compare/v2.1.3...v2.1.4
[2.1.5]: https://github.com/halildurmus/win32/compare/v2.1.4...v2.1.5
[2.2.0]: https://github.com/halildurmus/win32/compare/v2.1.5...v2.2.0
[2.2.10]: https://github.com/halildurmus/win32/compare/v2.2.9...v2.2.10
[2.2.1]: https://github.com/halildurmus/win32/compare/v2.2.0...v2.2.1
[2.2.2]: https://github.com/halildurmus/win32/compare/v2.2.1...v2.2.2
[2.2.3]: https://github.com/halildurmus/win32/compare/v2.2.2...v2.2.3
[2.2.4]: https://github.com/halildurmus/win32/compare/v2.2.3...v2.2.4
[2.2.5]: https://github.com/halildurmus/win32/compare/v2.2.4...v2.2.5
[2.2.6]: https://github.com/halildurmus/win32/compare/v2.2.5...v2.2.6
[2.2.7]: https://github.com/halildurmus/win32/compare/v2.2.6...v2.2.7
[2.2.8]: https://github.com/halildurmus/win32/compare/v2.2.7...v2.2.8
[2.2.9]: https://github.com/halildurmus/win32/compare/v2.2.8...v2.2.9
[2.3.0]: https://github.com/halildurmus/win32/compare/v2.2.10...v2.3.0
[2.3.10]: https://github.com/halildurmus/win32/compare/v2.3.9...v2.3.10
[2.3.11]: https://github.com/halildurmus/win32/compare/v2.3.10...v2.3.11
[2.3.1]: https://github.com/halildurmus/win32/compare/v2.3.0...v2.3.1
[2.3.2]: https://github.com/halildurmus/win32/compare/v2.3.1...v2.3.2
[2.3.3]: https://github.com/halildurmus/win32/compare/v2.3.2...v2.3.3
[2.3.4]: https://github.com/halildurmus/win32/compare/v2.3.3...v2.3.4
[2.3.5]: https://github.com/halildurmus/win32/compare/v2.3.4...v2.3.5
[2.3.6]: https://github.com/halildurmus/win32/compare/v2.3.5...v2.3.6
[2.3.7]: https://github.com/halildurmus/win32/compare/v2.3.6...v2.3.7
[2.3.8]: https://github.com/halildurmus/win32/compare/v2.3.7...v2.3.8
[2.3.9]: https://github.com/halildurmus/win32/compare/v2.3.8...v2.3.9
[2.4.0]: https://github.com/halildurmus/win32/compare/v2.3.11...v2.4.0
[2.4.1]: https://github.com/halildurmus/win32/compare/v2.4.0...v2.4.1
[2.4.2]: https://github.com/halildurmus/win32/compare/v2.4.1...v2.4.2
[2.4.3]: https://github.com/halildurmus/win32/compare/v2.4.2...v2.4.3
[2.4.4]: https://github.com/halildurmus/win32/compare/v2.4.3...v2.4.4
[2.5.0]: https://github.com/halildurmus/win32/compare/v2.4.4...v2.5.0
[2.5.1]: https://github.com/halildurmus/win32/compare/v2.5.0...v2.5.1
[2.5.2]: https://github.com/halildurmus/win32/compare/v2.5.1...v2.5.2
[2.6.0]: https://github.com/halildurmus/win32/compare/v2.5.2...v2.6.0
[2.6.1]: https://github.com/halildurmus/win32/compare/v2.6.0...v2.6.1
[2.7.0]: https://github.com/halildurmus/win32/compare/v2.6.1...v2.7.0
[3.0.0]: https://github.com/halildurmus/win32/compare/v2.7.0...v3.0.0
[3.0.1]: https://github.com/halildurmus/win32/compare/v3.0.0...v3.0.1
[3.1.0]: https://github.com/halildurmus/win32/compare/v3.0.1...v3.1.0
[3.1.1]: https://github.com/halildurmus/win32/compare/v3.1.0...v3.1.1
[3.1.2]: https://github.com/halildurmus/win32/compare/v3.1.1...v3.1.2
[3.1.3]: https://github.com/halildurmus/win32/compare/v3.1.2...v3.1.3
[4.0.0]: https://github.com/halildurmus/win32/compare/v3.1.3...v4.0.0
[4.0.1]: https://github.com/halildurmus/win32/compare/v4.0.0...v4.0.1
[4.1.0]: https://github.com/halildurmus/win32/compare/v4.0.1...v4.1.0
[4.1.1]: https://github.com/halildurmus/win32/compare/v4.1.0...v4.1.1
[4.1.2]: https://github.com/halildurmus/win32/compare/v4.1.1...v4.1.2
[4.1.3]: https://github.com/halildurmus/win32/compare/v4.1.2...v4.1.3
[4.1.4]: https://github.com/halildurmus/win32/compare/v4.1.3...v4.1.4
[5.0.0]: https://github.com/halildurmus/win32/compare/v4.1.4...v5.0.0
[5.0.1]: https://github.com/halildurmus/win32/compare/v5.0.0...v5.0.1
[5.0.2]: https://github.com/halildurmus/win32/compare/v5.0.1...v5.0.2
[5.0.3]: https://github.com/halildurmus/win32/compare/v5.0.2...v5.0.3
[5.0.4]: https://github.com/halildurmus/win32/compare/v5.0.3...v5.0.4
[5.0.5]: https://github.com/halildurmus/win32/compare/v5.0.4...v5.0.5
[5.0.6]: https://github.com/halildurmus/win32/compare/v5.0.5...v5.0.6
[5.0.7]: https://github.com/halildurmus/win32/compare/v5.0.6...v5.0.7
[5.0.8]: https://github.com/halildurmus/win32/compare/v5.0.7...v5.0.8
[5.0.9]: https://github.com/halildurmus/win32/compare/v5.0.8...v5.0.9
[5.1.0]: https://github.com/halildurmus/win32/compare/v5.0.9...v5.1.0
[5.1.1]: https://github.com/halildurmus/win32/compare/v5.1.0...v5.1.1
[5.2.0]: https://github.com/halildurmus/win32/compare/v5.1.1...v5.2.0
[5.3.0]: https://github.com/halildurmus/win32/compare/v5.2.0...v5.3.0
[5.4.0]: https://github.com/halildurmus/win32/compare/v5.3.0...v5.4.0
[5.5.0]: https://github.com/halildurmus/win32/compare/v5.4.0...v5.5.0
[5.5.1]: https://github.com/halildurmus/win32/compare/v5.5.0...v5.5.1
[5.5.2]: https://github.com/halildurmus/win32/compare/v5.5.1...v5.5.2
[5.5.3]: https://github.com/halildurmus/win32/compare/v5.5.2...v5.5.3
[5.5.4]: https://github.com/halildurmus/win32/compare/v5.5.3...v5.5.4
[5.5.5]: https://github.com/halildurmus/win32/compare/v5.5.4...v5.5.5
[5.6.0]: https://github.com/halildurmus/win32/compare/v5.5.5...v5.6.0
[5.6.1]: https://github.com/halildurmus/win32/compare/v5.6.0...v5.6.1
[5.7.0]: https://github.com/halildurmus/win32/compare/v5.6.1...v5.7.0
[5.7.1]: https://github.com/halildurmus/win32/compare/v5.7.0...v5.7.1
[5.7.2]: https://github.com/halildurmus/win32/compare/v5.7.1...v5.7.2
[5.8.0]: https://github.com/halildurmus/win32/compare/v5.7.2...v5.8.0

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "kernel32.g.h"

Win32Result ActivateActCtx_Wrapper(HANDLE hActCtx, unsigned long long* lpCookie) {
  BOOL value_ = ActivateActCtx(hActCtx, lpCookie);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AddDllDirectory_Wrapper(PCWSTR newDirectory) {
  void* value_ = AddDllDirectory(newDirectory);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result AllocConsole_Wrapper() {
  BOOL value_ = AllocConsole();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AssignProcessToJobObject_Wrapper(HANDLE hJob, HANDLE hProcess) {
  BOOL value_ = AssignProcessToJobObject(hJob, hProcess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AttachConsole_Wrapper(unsigned long dwProcessId) {
  BOOL value_ = AttachConsole(dwProcessId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result Beep_Wrapper(unsigned long dwFreq, unsigned long dwDuration) {
  BOOL value_ = Beep(dwFreq, dwDuration);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BeginUpdateResourceW_Wrapper(PCWSTR pFileName, BOOL bDeleteExistingResources) {
  HANDLE value_ = BeginUpdateResourceW(pFileName, bDeleteExistingResources);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result BuildCommDCBW_Wrapper(PCWSTR lpDef, DCB* lpDCB) {
  BOOL value_ = BuildCommDCBW(lpDef, lpDCB);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BuildCommDCBAndTimeoutsW_Wrapper(PCWSTR lpDef, DCB* lpDCB, COMMTIMEOUTS* lpCommTimeouts) {
  BOOL value_ = BuildCommDCBAndTimeoutsW(lpDef, lpDCB, lpCommTimeouts);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CancelIo_Wrapper(HANDLE hFile) {
  BOOL value_ = CancelIo(hFile);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CancelIoEx_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped) {
  BOOL value_ = CancelIoEx(hFile, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CancelSynchronousIo_Wrapper(HANDLE hThread) {
  BOOL value_ = CancelSynchronousIo(hThread);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CheckRemoteDebuggerPresent_Wrapper(HANDLE hProcess, BOOL* pbDebuggerPresent) {
  BOOL value_ = CheckRemoteDebuggerPresent(hProcess, pbDebuggerPresent);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ClearCommBreak_Wrapper(HANDLE hFile) {
  BOOL value_ = ClearCommBreak(hFile);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ClearCommError_Wrapper(HANDLE hFile, DWORD* lpErrors, COMSTAT* lpStat) {
  BOOL value_ = ClearCommError(hFile, lpErrors, lpStat);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CloseHandle_Wrapper(HANDLE hObject) {
  BOOL value_ = CloseHandle(hObject);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CommConfigDialogW_Wrapper(PCWSTR lpszName, HWND hWnd, COMMCONFIG* lpCC) {
  BOOL value_ = CommConfigDialogW(lpszName, hWnd, lpCC);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ConnectNamedPipe_Wrapper(HANDLE hNamedPipe, OVERLAPPED* lpOverlapped) {
  BOOL value_ = ConnectNamedPipe(hNamedPipe, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ContinueDebugEvent_Wrapper(unsigned long dwProcessId, unsigned long dwThreadId, NTSTATUS dwContinueStatus) {
  BOOL value_ = ContinueDebugEvent(dwProcessId, dwThreadId, dwContinueStatus);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CopyFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, BOOL bFailIfExists) {
  BOOL value_ = CopyFileW(lpExistingFileName, lpNewFileName, bFailIfExists);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CopyFileExW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, BOOL* pbCancel, DWORD dwCopyFlags) {
  BOOL value_ = CopyFileExW(lpExistingFileName, lpNewFileName, lpProgressRoutine, lpData, pbCancel, dwCopyFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CreateActCtxW_Wrapper(ACTCTXW* pActCtx) {
  HANDLE value_ = CreateActCtxW(pActCtx);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateConsoleScreenBuffer_Wrapper(unsigned long dwDesiredAccess, unsigned long dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, unsigned long dwFlags, void* lpScreenBufferData) {
  HANDLE value_ = CreateConsoleScreenBuffer(dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwFlags, lpScreenBufferData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateDirectoryW_Wrapper(PCWSTR lpPathName, SECURITY_ATTRIBUTES* lpSecurityAttributes) {
  BOOL value_ = CreateDirectoryW(lpPathName, lpSecurityAttributes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CreateEventW_Wrapper(SECURITY_ATTRIBUTES* lpEventAttributes, BOOL bManualReset, BOOL bInitialState, PCWSTR lpName) {
  HANDLE value_ = CreateEventW(lpEventAttributes, bManualReset, bInitialState, lpName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateEventExW_Wrapper(SECURITY_ATTRIBUTES* lpEventAttributes, PCWSTR lpName, DWORD dwFlags, unsigned long dwDesiredAccess) {
  HANDLE value_ = CreateEventExW(lpEventAttributes, lpName, dwFlags, dwDesiredAccess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateFileW_Wrapper(PCWSTR lpFileName, unsigned long dwDesiredAccess, DWORD dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile) {
  HANDLE value_ = CreateFileW(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateFile2_Wrapper(PCWSTR lpFileName, unsigned long dwDesiredAccess, DWORD dwShareMode, DWORD dwCreationDisposition, CREATEFILE2_EXTENDED_PARAMETERS* pCreateExParams) {
  HANDLE value_ = CreateFile2(lpFileName, dwDesiredAccess, dwShareMode, dwCreationDisposition, pCreateExParams);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateIoCompletionPort_Wrapper(HANDLE fileHandle, HANDLE existingCompletionPort, unsigned long long completionKey, unsigned long numberOfConcurrentThreads) {
  HANDLE value_ = CreateIoCompletionPort(fileHandle, existingCompletionPort, completionKey, numberOfConcurrentThreads);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateJobObjectW_Wrapper(SECURITY_ATTRIBUTES* lpJobAttributes, PCWSTR lpName) {
  HANDLE value_ = CreateJobObjectW(lpJobAttributes, lpName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreatePipe_Wrapper(HANDLE* hReadPipe, HANDLE* hWritePipe, SECURITY_ATTRIBUTES* lpPipeAttributes, unsigned long nSize) {
  BOOL value_ = CreatePipe(hReadPipe, hWritePipe, lpPipeAttributes, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CreateProcessW_Wrapper(PCWSTR lpApplicationName, PWSTR lpCommandLine, SECURITY_ATTRIBUTES* lpProcessAttributes, SECURITY_ATTRIBUTES* lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags, void* lpEnvironment, PCWSTR lpCurrentDirectory, STARTUPINFOW* lpStartupInfo, PROCESS_INFORMATION* lpProcessInformation) {
  BOOL value_ = CreateProcessW(lpApplicationName, lpCommandLine, lpProcessAttributes, lpThreadAttributes, bInheritHandles, dwCreationFlags, lpEnvironment, lpCurrentDirectory, lpStartupInfo, lpProcessInformation);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CreateRemoteThread_Wrapper(HANDLE hProcess, SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, unsigned long dwCreationFlags, unsigned long* lpThreadId) {
  HANDLE value_ = CreateRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateRemoteThreadEx_Wrapper(HANDLE hProcess, SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, unsigned long dwCreationFlags, LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long* lpThreadId) {
  HANDLE value_ = CreateRemoteThreadEx(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpAttributeList, lpThreadId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateSymbolicLinkW_Wrapper(PCWSTR lpSymlinkFileName, PCWSTR lpTargetFileName, DWORD dwFlags) {
  BOOLEAN value_ = CreateSymbolicLinkW(lpSymlinkFileName, lpTargetFileName, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u8 = value_}};
}

Win32Result CreateThread_Wrapper(SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, DWORD dwCreationFlags, unsigned long* lpThreadId) {
  HANDLE value_ = CreateThread(lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result DeactivateActCtx_Wrapper(unsigned long dwFlags, unsigned long long ulCookie) {
  BOOL value_ = DeactivateActCtx(dwFlags, ulCookie);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DebugBreakProcess_Wrapper(HANDLE process) {
  BOOL value_ = DebugBreakProcess(process);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DebugSetProcessKillOnExit_Wrapper(BOOL killOnExit) {
  BOOL value_ = DebugSetProcessKillOnExit(killOnExit);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DefineDosDeviceW_Wrapper(DWORD dwFlags, PCWSTR lpDeviceName, PCWSTR lpTargetPath) {
  BOOL value_ = DefineDosDeviceW(dwFlags, lpDeviceName, lpTargetPath);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DeleteFileW_Wrapper(PCWSTR lpFileName) {
  BOOL value_ = DeleteFileW(lpFileName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DeleteVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint) {
  BOOL value_ = DeleteVolumeMountPointW(lpszVolumeMountPoint);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DeviceIoControl_Wrapper(HANDLE hDevice, unsigned long dwIoControlCode, void* lpInBuffer, unsigned long nInBufferSize, void* lpOutBuffer, unsigned long nOutBufferSize, unsigned long* lpBytesReturned, OVERLAPPED* lpOverlapped) {
  BOOL value_ = DeviceIoControl(hDevice, dwIoControlCode, lpInBuffer, nInBufferSize, lpOutBuffer, nOutBufferSize, lpBytesReturned, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DisableThreadLibraryCalls_Wrapper(HMODULE hLibModule) {
  BOOL value_ = DisableThreadLibraryCalls(hLibModule);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DisconnectNamedPipe_Wrapper(HANDLE hNamedPipe) {
  BOOL value_ = DisconnectNamedPipe(hNamedPipe);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DnsHostnameToComputerNameW_Wrapper(PCWSTR hostname, PWSTR computerName, unsigned long* nSize) {
  BOOL value_ = DnsHostnameToComputerNameW(hostname, computerName, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DosDateTimeToFileTime_Wrapper(unsigned short wFatDate, unsigned short wFatTime, FILETIME* lpFileTime) {
  BOOL value_ = DosDateTimeToFileTime(wFatDate, wFatTime, lpFileTime);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DuplicateHandle_Wrapper(HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, HANDLE* lpTargetHandle, unsigned long dwDesiredAccess, BOOL bInheritHandle, DWORD dwOptions) {
  BOOL value_ = DuplicateHandle(hSourceProcessHandle, hSourceHandle, hTargetProcessHandle, lpTargetHandle, dwDesiredAccess, bInheritHandle, dwOptions);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EndUpdateResourceW_Wrapper(HANDLE hUpdate, BOOL fDiscard) {
  BOOL value_ = EndUpdateResourceW(hUpdate, fDiscard);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumResourceTypesW_Wrapper(HMODULE hModule, ENUMRESTYPEPROCW lpEnumFunc, long long lParam) {
  BOOL value_ = EnumResourceTypesW(hModule, lpEnumFunc, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumSystemFirmwareTables_Wrapper(DWORD firmwareTableProviderSignature, unsigned char* pFirmwareTableEnumBuffer, unsigned long bufferSize) {
  unsigned long value_ = EnumSystemFirmwareTables(firmwareTableProviderSignature, pFirmwareTableEnumBuffer, bufferSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result EscapeCommFunction_Wrapper(HANDLE hFile, DWORD dwFunc) {
  BOOL value_ = EscapeCommFunction(hFile, dwFunc);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FileTimeToDosDateTime_Wrapper(FILETIME* lpFileTime, unsigned short* lpFatDate, unsigned short* lpFatTime) {
  BOOL value_ = FileTimeToDosDateTime(lpFileTime, lpFatDate, lpFatTime);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FileTimeToSystemTime_Wrapper(FILETIME* lpFileTime, SYSTEMTIME* lpSystemTime) {
  BOOL value_ = FileTimeToSystemTime(lpFileTime, lpSystemTime);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FillConsoleOutputAttribute_Wrapper(HANDLE hConsoleOutput, unsigned short wAttribute, unsigned long nLength, COORD dwWriteCoord, unsigned long* lpNumberOfAttrsWritten) {
  BOOL value_ = FillConsoleOutputAttribute(hConsoleOutput, wAttribute, nLength, dwWriteCoord, lpNumberOfAttrsWritten);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FillConsoleOutputCharacterW_Wrapper(HANDLE hConsoleOutput, char cCharacter, unsigned long nLength, COORD dwWriteCoord, unsigned long* lpNumberOfCharsWritten) {
  BOOL value_ = FillConsoleOutputCharacterW(hConsoleOutput, cCharacter, nLength, dwWriteCoord, lpNumberOfCharsWritten);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindClose_Wrapper(HANDLE hFindFile) {
  BOOL value_ = FindClose(hFindFile);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindCloseChangeNotification_Wrapper(HANDLE hChangeHandle) {
  BOOL value_ = FindCloseChangeNotification(hChangeHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindFirstChangeNotificationW_Wrapper(PCWSTR lpPathName, BOOL bWatchSubtree, DWORD dwNotifyFilter) {
  HANDLE value_ = FindFirstChangeNotificationW(lpPathName, bWatchSubtree, dwNotifyFilter);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result FindFirstFileW_Wrapper(PCWSTR lpFileName, WIN32_FIND_DATAW* lpFindFileData) {
  HANDLE value_ = FindFirstFileW(lpFileName, lpFindFileData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result FindFirstFileExW_Wrapper(PCWSTR lpFileName, LONG fInfoLevelId, void* lpFindFileData, LONG fSearchOp, void* lpSearchFilter, DWORD dwAdditionalFlags) {
  HANDLE value_ = FindFirstFileExW(lpFileName, fInfoLevelId, lpFindFileData, fSearchOp, lpSearchFilter, dwAdditionalFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result FindFirstFileNameW_Wrapper(PCWSTR lpFileName, unsigned long dwFlags, unsigned long* stringLength, PWSTR linkName) {
  HANDLE value_ = FindFirstFileNameW(lpFileName, dwFlags, stringLength, linkName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result FindFirstStreamW_Wrapper(PCWSTR lpFileName, LONG infoLevel, void* lpFindStreamData, unsigned long dwFlags) {
  HANDLE value_ = FindFirstStreamW(lpFileName, infoLevel, lpFindStreamData, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result FindFirstVolumeW_Wrapper(PWSTR lpszVolumeName, unsigned long cchBufferLength) {
  HANDLE value_ = FindFirstVolumeW(lpszVolumeName, cchBufferLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result FindNextChangeNotification_Wrapper(HANDLE hChangeHandle) {
  BOOL value_ = FindNextChangeNotification(hChangeHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindNextFileW_Wrapper(HANDLE hFindFile, WIN32_FIND_DATAW* lpFindFileData) {
  BOOL value_ = FindNextFileW(hFindFile, lpFindFileData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindNextFileNameW_Wrapper(HANDLE hFindStream, unsigned long* stringLength, PWSTR linkName) {
  BOOL value_ = FindNextFileNameW(hFindStream, stringLength, linkName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindNextStreamW_Wrapper(HANDLE hFindStream, void* lpFindStreamData) {
  BOOL value_ = FindNextStreamW(hFindStream, lpFindStreamData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindNextVolumeW_Wrapper(HANDLE hFindVolume, PWSTR lpszVolumeName, unsigned long cchBufferLength) {
  BOOL value_ = FindNextVolumeW(hFindVolume, lpszVolumeName, cchBufferLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindStringOrdinal_Wrapper(unsigned long dwFindStringOrdinalFlags, PCWSTR lpStringSource, int cchSource, PCWSTR lpStringValue, int cchValue, BOOL bIgnoreCase) {
  int value_ = FindStringOrdinal(dwFindStringOrdinalFlags, lpStringSource, cchSource, lpStringValue, cchValue, bIgnoreCase);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindVolumeClose_Wrapper(HANDLE hFindVolume) {
  BOOL value_ = FindVolumeClose(hFindVolume);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FlushConsoleInputBuffer_Wrapper(HANDLE hConsoleInput) {
  BOOL value_ = FlushConsoleInputBuffer(hConsoleInput);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FlushFileBuffers_Wrapper(HANDLE hFile) {
  BOOL value_ = FlushFileBuffers(hFile);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FormatMessageW_Wrapper(DWORD dwFlags, void* lpSource, unsigned long dwMessageId, unsigned long dwLanguageId, PWSTR lpBuffer, unsigned long nSize, signed char** arguments) {
  unsigned long value_ = FormatMessageW(dwFlags, lpSource, dwMessageId, dwLanguageId, lpBuffer, nSize, arguments);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result FreeConsole_Wrapper() {
  BOOL value_ = FreeConsole();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FreeLibrary_Wrapper(HMODULE hLibModule) {
  BOOL value_ = FreeLibrary(hLibModule);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetActiveProcessorCount_Wrapper(unsigned short groupNumber) {
  unsigned long value_ = GetActiveProcessorCount(groupNumber);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetBinaryTypeW_Wrapper(PCWSTR lpApplicationName, unsigned long* lpBinaryType) {
  BOOL value_ = GetBinaryTypeW(lpApplicationName, lpBinaryType);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCommConfig_Wrapper(HANDLE hCommDev, COMMCONFIG* lpCC, unsigned long* lpdwSize) {
  BOOL value_ = GetCommConfig(hCommDev, lpCC, lpdwSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCommMask_Wrapper(HANDLE hFile, DWORD* lpEvtMask) {
  BOOL value_ = GetCommMask(hFile, lpEvtMask);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCommModemStatus_Wrapper(HANDLE hFile, DWORD* lpModemStat) {
  BOOL value_ = GetCommModemStatus(hFile, lpModemStat);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCommProperties_Wrapper(HANDLE hFile, COMMPROP* lpCommProp) {
  BOOL value_ = GetCommProperties(hFile, lpCommProp);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCommState_Wrapper(HANDLE hFile, DCB* lpDCB) {
  BOOL value_ = GetCommState(hFile, lpDCB);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCommTimeouts_Wrapper(HANDLE hFile, COMMTIMEOUTS* lpCommTimeouts) {
  BOOL value_ = GetCommTimeouts(hFile, lpCommTimeouts);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCompressedFileSizeW_Wrapper(PCWSTR lpFileName, unsigned long* lpFileSizeHigh) {
  unsigned long value_ = GetCompressedFileSizeW(lpFileName, lpFileSizeHigh);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetComputerNameW_Wrapper(PWSTR lpBuffer, unsigned long* nSize) {
  BOOL value_ = GetComputerNameW(lpBuffer, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetComputerNameExW_Wrapper(LONG nameType, PWSTR lpBuffer, unsigned long* nSize) {
  BOOL value_ = GetComputerNameExW(nameType, lpBuffer, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetConsoleCP_Wrapper() {
  unsigned long value_ = GetConsoleCP();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetConsoleCursorInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_CURSOR_INFO* lpConsoleCursorInfo) {
  BOOL value_ = GetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetConsoleMode_Wrapper(HANDLE hConsoleHandle, DWORD* lpMode) {
  BOOL value_ = GetConsoleMode(hConsoleHandle, lpMode);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetConsoleOutputCP_Wrapper() {
  unsigned long value_ = GetConsoleOutputCP();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetConsoleScreenBufferInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_SCREEN_BUFFER_INFO* lpConsoleScreenBufferInfo) {
  BOOL value_ = GetConsoleScreenBufferInfo(hConsoleOutput, lpConsoleScreenBufferInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetConsoleSelectionInfo_Wrapper(CONSOLE_SELECTION_INFO* lpConsoleSelectionInfo) {
  BOOL value_ = GetConsoleSelectionInfo(lpConsoleSelectionInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetConsoleTitleW_Wrapper(PWSTR lpConsoleTitle, unsigned long nSize) {
  unsigned long value_ = GetConsoleTitleW(lpConsoleTitle, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetCurrentActCtx_Wrapper(HANDLE* lphActCtx) {
  BOOL value_ = GetCurrentActCtx(lphActCtx);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetDefaultCommConfigW_Wrapper(PCWSTR lpszName, COMMCONFIG* lpCC, unsigned long* lpdwSize) {
  BOOL value_ = GetDefaultCommConfigW(lpszName, lpCC, lpdwSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetDiskFreeSpaceW_Wrapper(PCWSTR lpRootPathName, unsigned long* lpSectorsPerCluster, unsigned long* lpBytesPerSector, unsigned long* lpNumberOfFreeClusters, unsigned long* lpTotalNumberOfClusters) {
  BOOL value_ = GetDiskFreeSpaceW(lpRootPathName, lpSectorsPerCluster, lpBytesPerSector, lpNumberOfFreeClusters, lpTotalNumberOfClusters);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetDiskFreeSpaceExW_Wrapper(PCWSTR lpDirectoryName, unsigned long long* lpFreeBytesAvailableToCaller, unsigned long long* lpTotalNumberOfBytes, unsigned long long* lpTotalNumberOfFreeBytes) {
  BOOL value_ = GetDiskFreeSpaceExW(lpDirectoryName, lpFreeBytesAvailableToCaller, lpTotalNumberOfBytes, lpTotalNumberOfFreeBytes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetDllDirectoryW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer) {
  unsigned long value_ = GetDllDirectoryW(nBufferLength, lpBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetEnvironmentVariableW_Wrapper(PCWSTR lpName, PWSTR lpBuffer, unsigned long nSize) {
  unsigned long value_ = GetEnvironmentVariableW(lpName, lpBuffer, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetExitCodeProcess_Wrapper(HANDLE hProcess, unsigned long* lpExitCode) {
  BOOL value_ = GetExitCodeProcess(hProcess, lpExitCode);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetFileAttributesW_Wrapper(PCWSTR lpFileName) {
  unsigned long value_ = GetFileAttributesW(lpFileName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetFileAttributesExW_Wrapper(PCWSTR lpFileName, LONG fInfoLevelId, void* lpFileInformation) {
  BOOL value_ = GetFileAttributesExW(lpFileName, fInfoLevelId, lpFileInformation);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetFileInformationByHandle_Wrapper(HANDLE hFile, BY_HANDLE_FILE_INFORMATION* lpFileInformation) {
  BOOL value_ = GetFileInformationByHandle(hFile, lpFileInformation);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetFileSize_Wrapper(HANDLE hFile, unsigned long* lpFileSizeHigh) {
  unsigned long value_ = GetFileSize(hFile, lpFileSizeHigh);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetFileSizeEx_Wrapper(HANDLE hFile, long long* lpFileSize) {
  BOOL value_ = GetFileSizeEx(hFile, lpFileSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetFileType_Wrapper(HANDLE hFile) {
  DWORD value_ = GetFileType(hFile);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetFinalPathNameByHandleW_Wrapper(HANDLE hFile, PWSTR lpszFilePath, unsigned long cchFilePath, DWORD dwFlags) {
  unsigned long value_ = GetFinalPathNameByHandleW(hFile, lpszFilePath, cchFilePath, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetFullPathNameW_Wrapper(PCWSTR lpFileName, unsigned long nBufferLength, PWSTR lpBuffer, PWSTR* lpFilePart) {
  unsigned long value_ = GetFullPathNameW(lpFileName, nBufferLength, lpBuffer, lpFilePart);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetHandleInformation_Wrapper(HANDLE hObject, unsigned long* lpdwFlags) {
  BOOL value_ = GetHandleInformation(hObject, lpdwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetLargestConsoleWindowSize_Wrapper(HANDLE hConsoleOutput) {
  COORD value_ = GetLargestConsoleWindowSize(hConsoleOutput);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.coord = value_}};
}

Win32Result GetLocaleInfoEx_Wrapper(PCWSTR lpLocaleName, unsigned long lCType, PWSTR lpLCData, int cchData) {
  int value_ = GetLocaleInfoEx(lpLocaleName, lCType, lpLCData, cchData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetLogicalDrives_Wrapper() {
  unsigned long value_ = GetLogicalDrives();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetLogicalDriveStringsW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer) {
  unsigned long value_ = GetLogicalDriveStringsW(nBufferLength, lpBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetLogicalProcessorInformation_Wrapper(SYSTEM_LOGICAL_PROCESSOR_INFORMATION* buffer, unsigned long* returnedLength) {
  BOOL value_ = GetLogicalProcessorInformation(buffer, returnedLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetLongPathNameW_Wrapper(PCWSTR lpszShortPath, PWSTR lpszLongPath, unsigned long cchBuffer) {
  unsigned long value_ = GetLongPathNameW(lpszShortPath, lpszLongPath, cchBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetMaximumProcessorCount_Wrapper(unsigned short groupNumber) {
  unsigned long value_ = GetMaximumProcessorCount(groupNumber);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetModuleFileNameW_Wrapper(HMODULE hModule, PWSTR lpFilename, unsigned long nSize) {
  unsigned long value_ = GetModuleFileNameW(hModule, lpFilename, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetModuleHandleW_Wrapper(PCWSTR lpModuleName) {
  HMODULE value_ = GetModuleHandleW(lpModuleName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetModuleHandleExW_Wrapper(unsigned long dwFlags, PCWSTR lpModuleName, HMODULE* phModule) {
  BOOL value_ = GetModuleHandleExW(dwFlags, lpModuleName, phModule);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetNamedPipeClientProcessId_Wrapper(HANDLE pipe, unsigned long* clientProcessId) {
  BOOL value_ = GetNamedPipeClientProcessId(pipe, clientProcessId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetNamedPipeClientSessionId_Wrapper(HANDLE pipe, unsigned long* clientSessionId) {
  BOOL value_ = GetNamedPipeClientSessionId(pipe, clientSessionId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetNamedPipeInfo_Wrapper(HANDLE hNamedPipe, DWORD* lpFlags, unsigned long* lpOutBufferSize, unsigned long* lpInBufferSize, unsigned long* lpMaxInstances) {
  BOOL value_ = GetNamedPipeInfo(hNamedPipe, lpFlags, lpOutBufferSize, lpInBufferSize, lpMaxInstances);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetNumberOfConsoleInputEvents_Wrapper(HANDLE hConsoleInput, unsigned long* lpNumberOfEvents) {
  BOOL value_ = GetNumberOfConsoleInputEvents(hConsoleInput, lpNumberOfEvents);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetOverlappedResult_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped, unsigned long* lpNumberOfBytesTransferred, BOOL bWait) {
  BOOL value_ = GetOverlappedResult(hFile, lpOverlapped, lpNumberOfBytesTransferred, bWait);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetOverlappedResultEx_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped, unsigned long* lpNumberOfBytesTransferred, unsigned long dwMilliseconds, BOOL bAlertable) {
  BOOL value_ = GetOverlappedResultEx(hFile, lpOverlapped, lpNumberOfBytesTransferred, dwMilliseconds, bAlertable);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPhysicallyInstalledSystemMemory_Wrapper(unsigned long long* totalMemoryInKilobytes) {
  BOOL value_ = GetPhysicallyInstalledSystemMemory(totalMemoryInKilobytes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetProcAddress_Wrapper(HMODULE hModule, PCSTR lpProcName) {
  FARPROC value_ = GetProcAddress(hModule, lpProcName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetProcessHeap_Wrapper() {
  HANDLE value_ = GetProcessHeap();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetProcessHeaps_Wrapper(unsigned long numberOfHeaps, HANDLE* processHeaps) {
  unsigned long value_ = GetProcessHeaps(numberOfHeaps, processHeaps);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetProcessId_Wrapper(HANDLE process) {
  unsigned long value_ = GetProcessId(process);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetProcessShutdownParameters_Wrapper(unsigned long* lpdwLevel, unsigned long* lpdwFlags) {
  BOOL value_ = GetProcessShutdownParameters(lpdwLevel, lpdwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetProcessTimes_Wrapper(HANDLE hProcess, FILETIME* lpCreationTime, FILETIME* lpExitTime, FILETIME* lpKernelTime, FILETIME* lpUserTime) {
  BOOL value_ = GetProcessTimes(hProcess, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetProcessVersion_Wrapper(unsigned long processId) {
  unsigned long value_ = GetProcessVersion(processId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetProcessWorkingSetSize_Wrapper(HANDLE hProcess, unsigned long long* lpMinimumWorkingSetSize, unsigned long long* lpMaximumWorkingSetSize) {
  BOOL value_ = GetProcessWorkingSetSize(hProcess, lpMinimumWorkingSetSize, lpMaximumWorkingSetSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetQueuedCompletionStatus_Wrapper(HANDLE completionPort, unsigned long* lpNumberOfBytesTransferred, unsigned long long* lpCompletionKey, OVERLAPPED** lpOverlapped, unsigned long dwMilliseconds) {
  BOOL value_ = GetQueuedCompletionStatus(completionPort, lpNumberOfBytesTransferred, lpCompletionKey, lpOverlapped, dwMilliseconds);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetQueuedCompletionStatusEx_Wrapper(HANDLE completionPort, OVERLAPPED_ENTRY* lpCompletionPortEntries, unsigned long ulCount, unsigned long* ulNumEntriesRemoved, unsigned long dwMilliseconds, BOOL fAlertable) {
  BOOL value_ = GetQueuedCompletionStatusEx(completionPort, lpCompletionPortEntries, ulCount, ulNumEntriesRemoved, dwMilliseconds, fAlertable);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetShortPathNameW_Wrapper(PCWSTR lpszLongPath, PWSTR lpszShortPath, unsigned long cchBuffer) {
  unsigned long value_ = GetShortPathNameW(lpszLongPath, lpszShortPath, cchBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetStdHandle_Wrapper(DWORD nStdHandle) {
  HANDLE value_ = GetStdHandle(nStdHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetSystemDefaultLocaleName_Wrapper(PWSTR lpLocaleName, int cchLocaleName) {
  int value_ = GetSystemDefaultLocaleName(lpLocaleName, cchLocaleName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetSystemDirectoryW_Wrapper(PWSTR lpBuffer, unsigned long uSize) {
  unsigned long value_ = GetSystemDirectoryW(lpBuffer, uSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetSystemPowerStatus_Wrapper(SYSTEM_POWER_STATUS* lpSystemPowerStatus) {
  BOOL value_ = GetSystemPowerStatus(lpSystemPowerStatus);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetSystemTimeAdjustment_Wrapper(unsigned long* lpTimeAdjustment, unsigned long* lpTimeIncrement, BOOL* lpTimeAdjustmentDisabled) {
  BOOL value_ = GetSystemTimeAdjustment(lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetSystemTimes_Wrapper(FILETIME* lpIdleTime, FILETIME* lpKernelTime, FILETIME* lpUserTime) {
  BOOL value_ = GetSystemTimes(lpIdleTime, lpKernelTime, lpUserTime);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetTempFileNameW_Wrapper(PCWSTR lpPathName, PCWSTR lpPrefixString, unsigned long uUnique, PWSTR lpTempFileName) {
  unsigned long value_ = GetTempFileNameW(lpPathName, lpPrefixString, uUnique, lpTempFileName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetTempPathW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer) {
  unsigned long value_ = GetTempPathW(nBufferLength, lpBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetThreadId_Wrapper(HANDLE thread) {
  unsigned long value_ = GetThreadId(thread);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetThreadTimes_Wrapper(HANDLE hThread, FILETIME* lpCreationTime, FILETIME* lpExitTime, FILETIME* lpKernelTime, FILETIME* lpUserTime) {
  BOOL value_ = GetThreadTimes(hThread, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetUserDefaultLocaleName_Wrapper(PWSTR lpLocaleName, int cchLocaleName) {
  int value_ = GetUserDefaultLocaleName(lpLocaleName, cchLocaleName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetVolumeInformationW_Wrapper(PCWSTR lpRootPathName, PWSTR lpVolumeNameBuffer, unsigned long nVolumeNameSize, unsigned long* lpVolumeSerialNumber, unsigned long* lpMaximumComponentLength, unsigned long* lpFileSystemFlags, PWSTR lpFileSystemNameBuffer, unsigned long nFileSystemNameSize) {
  BOOL value_ = GetVolumeInformationW(lpRootPathName, lpVolumeNameBuffer, nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags, lpFileSystemNameBuffer, nFileSystemNameSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetVolumeInformationByHandleW_Wrapper(HANDLE hFile, PWSTR lpVolumeNameBuffer, unsigned long nVolumeNameSize, unsigned long* lpVolumeSerialNumber, unsigned long* lpMaximumComponentLength, unsigned long* lpFileSystemFlags, PWSTR lpFileSystemNameBuffer, unsigned long nFileSystemNameSize) {
  BOOL value_ = GetVolumeInformationByHandleW(hFile, lpVolumeNameBuffer, nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags, lpFileSystemNameBuffer, nFileSystemNameSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetVolumeNameForVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint, PWSTR lpszVolumeName, unsigned long cchBufferLength) {
  BOOL value_ = GetVolumeNameForVolumeMountPointW(lpszVolumeMountPoint, lpszVolumeName, cchBufferLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetVolumePathNameW_Wrapper(PCWSTR lpszFileName, PWSTR lpszVolumePathName, unsigned long cchBufferLength) {
  BOOL value_ = GetVolumePathNameW(lpszFileName, lpszVolumePathName, cchBufferLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetVolumePathNamesForVolumeNameW_Wrapper(PCWSTR lpszVolumeName, PWSTR lpszVolumePathNames, unsigned long cchBufferLength, unsigned long* lpcchReturnLength) {
  BOOL value_ = GetVolumePathNamesForVolumeNameW(lpszVolumeName, lpszVolumePathNames, cchBufferLength, lpcchReturnLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GlobalAlloc_Wrapper(DWORD uFlags, unsigned long long dwBytes) {
  HGLOBAL value_ = GlobalAlloc(uFlags, dwBytes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GlobalFree_Wrapper(HGLOBAL hMem) {
  HGLOBAL value_ = GlobalFree(hMem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GlobalLock_Wrapper(HGLOBAL hMem) {
  void* value_ = GlobalLock(hMem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GlobalMemoryStatusEx_Wrapper(MEMORYSTATUSEX* lpBuffer) {
  BOOL value_ = GlobalMemoryStatusEx(lpBuffer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GlobalSize_Wrapper(HGLOBAL hMem) {
  unsigned long long value_ = GlobalSize(hMem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result GlobalUnlock_Wrapper(HGLOBAL hMem) {
  BOOL value_ = GlobalUnlock(hMem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result HeapCompact_Wrapper(HANDLE hHeap, DWORD dwFlags) {
  unsigned long long value_ = HeapCompact(hHeap, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result HeapCreate_Wrapper(DWORD flOptions, unsigned long long dwInitialSize, unsigned long long dwMaximumSize) {
  HANDLE value_ = HeapCreate(flOptions, dwInitialSize, dwMaximumSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result HeapDestroy_Wrapper(HANDLE hHeap) {
  BOOL value_ = HeapDestroy(hHeap);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result HeapFree_Wrapper(HANDLE hHeap, DWORD dwFlags, void* lpMem) {
  BOOL value_ = HeapFree(hHeap, dwFlags, lpMem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result HeapLock_Wrapper(HANDLE hHeap) {
  BOOL value_ = HeapLock(hHeap);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result HeapQueryInformation_Wrapper(HANDLE heapHandle, LONG heapInformationClass, void* heapInformation, unsigned long long heapInformationLength, unsigned long long* returnLength) {
  BOOL value_ = HeapQueryInformation(heapHandle, heapInformationClass, heapInformation, heapInformationLength, returnLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result HeapSetInformation_Wrapper(HANDLE heapHandle, LONG heapInformationClass, void* heapInformation, unsigned long long heapInformationLength) {
  BOOL value_ = HeapSetInformation(heapHandle, heapInformationClass, heapInformation, heapInformationLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result HeapUnlock_Wrapper(HANDLE hHeap) {
  BOOL value_ = HeapUnlock(hHeap);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result HeapWalk_Wrapper(HANDLE hHeap, PROCESS_HEAP_ENTRY* lpEntry) {
  BOOL value_ = HeapWalk(hHeap, lpEntry);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result InitializeProcThreadAttributeList_Wrapper(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long dwAttributeCount, unsigned long dwFlags, unsigned long long* lpSize) {
  BOOL value_ = InitializeProcThreadAttributeList(lpAttributeList, dwAttributeCount, dwFlags, lpSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result IsNativeVhdBoot_Wrapper(BOOL* nativeVhdBoot) {
  BOOL value_ = IsNativeVhdBoot(nativeVhdBoot);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result IsProcessInJob_Wrapper(HANDLE processHandle, HANDLE jobHandle, BOOL* result) {
  BOOL value_ = IsProcessInJob(processHandle, jobHandle, result);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result IsWow64Process2_Wrapper(HANDLE hProcess, USHORT* pProcessMachine, USHORT* pNativeMachine) {
  BOOL value_ = IsWow64Process2(hProcess, pProcessMachine, pNativeMachine);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result LoadLibraryW_Wrapper(PCWSTR lpLibFileName) {
  HMODULE value_ = LoadLibraryW(lpLibFileName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadLibraryExW_Wrapper(PCWSTR lpLibFileName, HANDLE hFile, DWORD dwFlags) {
  HMODULE value_ = LoadLibraryExW(lpLibFileName, hFile, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadResource_Wrapper(HMODULE hModule, HRSRC hResInfo) {
  HGLOBAL value_ = LoadResource(hModule, hResInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LocalAlloc_Wrapper(DWORD uFlags, unsigned long long uBytes) {
  HLOCAL value_ = LocalAlloc(uFlags, uBytes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LocalFree_Wrapper(HLOCAL hMem) {
  HLOCAL value_ = LocalFree(hMem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LockFile_Wrapper(HANDLE hFile, unsigned long dwFileOffsetLow, unsigned long dwFileOffsetHigh, unsigned long nNumberOfBytesToLockLow, unsigned long nNumberOfBytesToLockHigh) {
  BOOL value_ = LockFile(hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToLockLow, nNumberOfBytesToLockHigh);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result LockFileEx_Wrapper(HANDLE hFile, DWORD dwFlags, unsigned long dwReserved, unsigned long nNumberOfBytesToLockLow, unsigned long nNumberOfBytesToLockHigh, OVERLAPPED* lpOverlapped) {
  BOOL value_ = LockFileEx(hFile, dwFlags, dwReserved, nNumberOfBytesToLockLow, nNumberOfBytesToLockHigh, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result MoveFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName) {
  BOOL value_ = MoveFileW(lpExistingFileName, lpNewFileName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result MoveFileExW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, DWORD dwFlags) {
  BOOL value_ = MoveFileExW(lpExistingFileName, lpNewFileName, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result OpenEventW_Wrapper(DWORD dwDesiredAccess, BOOL bInheritHandle, PCWSTR lpName) {
  HANDLE value_ = OpenEventW(dwDesiredAccess, bInheritHandle, lpName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result OpenJobObjectW_Wrapper(unsigned long dwDesiredAccess, BOOL bInheritHandle, PCWSTR lpName) {
  HANDLE value_ = OpenJobObjectW(dwDesiredAccess, bInheritHandle, lpName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result OpenProcess_Wrapper(DWORD dwDesiredAccess, BOOL bInheritHandle, unsigned long dwProcessId) {
  HANDLE value_ = OpenProcess(dwDesiredAccess, bInheritHandle, dwProcessId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result PeekConsoleInputW_Wrapper(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, unsigned long nLength, unsigned long* lpNumberOfEventsRead) {
  BOOL value_ = PeekConsoleInputW(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result PeekNamedPipe_Wrapper(HANDLE hNamedPipe, void* lpBuffer, unsigned long nBufferSize, unsigned long* lpBytesRead, unsigned long* lpTotalBytesAvail, unsigned long* lpBytesLeftThisMessage) {
  BOOL value_ = PeekNamedPipe(hNamedPipe, lpBuffer, nBufferSize, lpBytesRead, lpTotalBytesAvail, lpBytesLeftThisMessage);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result PostQueuedCompletionStatus_Wrapper(HANDLE completionPort, unsigned long dwNumberOfBytesTransferred, unsigned long long dwCompletionKey, OVERLAPPED* lpOverlapped) {
  BOOL value_ = PostQueuedCompletionStatus(completionPort, dwNumberOfBytesTransferred, dwCompletionKey, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ProcessIdToSessionId_Wrapper(unsigned long dwProcessId, unsigned long* pSessionId) {
  BOOL value_ = ProcessIdToSessionId(dwProcessId, pSessionId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result PurgeComm_Wrapper(HANDLE hFile, DWORD dwFlags) {
  BOOL value_ = PurgeComm(hFile, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryDosDeviceW_Wrapper(PCWSTR lpDeviceName, PWSTR lpTargetPath, unsigned long ucchMax) {
  unsigned long value_ = QueryDosDeviceW(lpDeviceName, lpTargetPath, ucchMax);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result QueryFullProcessImageNameW_Wrapper(HANDLE hProcess, DWORD dwFlags, PWSTR lpExeName, unsigned long* lpdwSize) {
  BOOL value_ = QueryFullProcessImageNameW(hProcess, dwFlags, lpExeName, lpdwSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryInformationJobObject_Wrapper(HANDLE hJob, LONG jobObjectInformationClass, void* lpJobObjectInformation, unsigned long cbJobObjectInformationLength, unsigned long* lpReturnLength) {
  BOOL value_ = QueryInformationJobObject(hJob, jobObjectInformationClass, lpJobObjectInformation, cbJobObjectInformationLength, lpReturnLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryIoRateControlInformationJobObject_Wrapper(HANDLE hJob, PCWSTR volumeName, JOBOBJECT_IO_RATE_CONTROL_INFORMATION** infoBlocks, unsigned long* infoBlockCount) {
  unsigned long value_ = QueryIoRateControlInformationJobObject(hJob, volumeName, infoBlocks, infoBlockCount);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result QueryPerformanceCounter_Wrapper(long long* lpPerformanceCount) {
  BOOL value_ = QueryPerformanceCounter(lpPerformanceCount);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result QueryPerformanceFrequency_Wrapper(long long* lpFrequency) {
  BOOL value_ = QueryPerformanceFrequency(lpFrequency);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ReadConsoleW_Wrapper(HANDLE hConsoleInput, void* lpBuffer, unsigned long nNumberOfCharsToRead, unsigned long* lpNumberOfCharsRead, CONSOLE_READCONSOLE_CONTROL* pInputControl) {
  BOOL value_ = ReadConsoleW(hConsoleInput, lpBuffer, nNumberOfCharsToRead, lpNumberOfCharsRead, pInputControl);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ReadConsoleInputW_Wrapper(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, unsigned long nLength, unsigned long* lpNumberOfEventsRead) {
  BOOL value_ = ReadConsoleInputW(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ReadFile_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToRead, unsigned long* lpNumberOfBytesRead, OVERLAPPED* lpOverlapped) {
  BOOL value_ = ReadFile(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ReadFileEx_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToRead, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine) {
  BOOL value_ = ReadFileEx(hFile, lpBuffer, nNumberOfBytesToRead, lpOverlapped, lpCompletionRoutine);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ReadFileScatter_Wrapper(HANDLE hFile, FILE_SEGMENT_ELEMENT* aSegmentArray, unsigned long nNumberOfBytesToRead, unsigned long* lpReserved, OVERLAPPED* lpOverlapped) {
  BOOL value_ = ReadFileScatter(hFile, aSegmentArray, nNumberOfBytesToRead, lpReserved, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ReadProcessMemory_Wrapper(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, unsigned long long nSize, unsigned long long* lpNumberOfBytesRead) {
  BOOL value_ = ReadProcessMemory(hProcess, lpBaseAddress, lpBuffer, nSize, lpNumberOfBytesRead);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RemoveDirectoryW_Wrapper(PCWSTR lpPathName) {
  BOOL value_ = RemoveDirectoryW(lpPathName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RemoveDllDirectory_Wrapper(void* cookie) {
  BOOL value_ = RemoveDllDirectory(cookie);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ReOpenFile_Wrapper(HANDLE hOriginalFile, unsigned long dwDesiredAccess, DWORD dwShareMode, DWORD dwFlagsAndAttributes) {
  HANDLE value_ = ReOpenFile(hOriginalFile, dwDesiredAccess, dwShareMode, dwFlagsAndAttributes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result ResetEvent_Wrapper(HANDLE hEvent) {
  BOOL value_ = ResetEvent(hEvent);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ScrollConsoleScreenBufferW_Wrapper(HANDLE hConsoleOutput, SMALL_RECT* lpScrollRectangle, SMALL_RECT* lpClipRectangle, COORD dwDestinationOrigin, CHAR_INFO* lpFill) {
  BOOL value_ = ScrollConsoleScreenBufferW(hConsoleOutput, lpScrollRectangle, lpClipRectangle, dwDestinationOrigin, lpFill);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetCommBreak_Wrapper(HANDLE hFile) {
  BOOL value_ = SetCommBreak(hFile);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetCommConfig_Wrapper(HANDLE hCommDev, COMMCONFIG* lpCC, unsigned long dwSize) {
  BOOL value_ = SetCommConfig(hCommDev, lpCC, dwSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetCommMask_Wrapper(HANDLE hFile, DWORD dwEvtMask) {
  BOOL value_ = SetCommMask(hFile, dwEvtMask);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetCommState_Wrapper(HANDLE hFile, DCB* lpDCB) {
  BOOL value_ = SetCommState(hFile, lpDCB);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetCommTimeouts_Wrapper(HANDLE hFile, COMMTIMEOUTS* lpCommTimeouts) {
  BOOL value_ = SetCommTimeouts(hFile, lpCommTimeouts);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetConsoleCtrlHandler_Wrapper(PHANDLER_ROUTINE handlerRoutine, BOOL add) {
  BOOL value_ = SetConsoleCtrlHandler(handlerRoutine, add);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetConsoleCursorInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_CURSOR_INFO* lpConsoleCursorInfo) {
  BOOL value_ = SetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetConsoleCursorPosition_Wrapper(HANDLE hConsoleOutput, COORD dwCursorPosition) {
  BOOL value_ = SetConsoleCursorPosition(hConsoleOutput, dwCursorPosition);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetConsoleDisplayMode_Wrapper(HANDLE hConsoleOutput, unsigned long dwFlags, COORD* lpNewScreenBufferDimensions) {
  BOOL value_ = SetConsoleDisplayMode(hConsoleOutput, dwFlags, lpNewScreenBufferDimensions);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetConsoleMode_Wrapper(HANDLE hConsoleHandle, DWORD dwMode) {
  BOOL value_ = SetConsoleMode(hConsoleHandle, dwMode);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetConsoleTextAttribute_Wrapper(HANDLE hConsoleOutput, USHORT wAttributes) {
  BOOL value_ = SetConsoleTextAttribute(hConsoleOutput, wAttributes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetConsoleWindowInfo_Wrapper(HANDLE hConsoleOutput, BOOL bAbsolute, SMALL_RECT* lpConsoleWindow) {
  BOOL value_ = SetConsoleWindowInfo(hConsoleOutput, bAbsolute, lpConsoleWindow);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetDefaultCommConfigW_Wrapper(PCWSTR lpszName, COMMCONFIG* lpCC, unsigned long dwSize) {
  BOOL value_ = SetDefaultCommConfigW(lpszName, lpCC, dwSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetDefaultDllDirectories_Wrapper(DWORD directoryFlags) {
  BOOL value_ = SetDefaultDllDirectories(directoryFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetEndOfFile_Wrapper(HANDLE hFile) {
  BOOL value_ = SetEndOfFile(hFile);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpValue) {
  BOOL value_ = SetEnvironmentVariableW(lpName, lpValue);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetEvent_Wrapper(HANDLE hEvent) {
  BOOL value_ = SetEvent(hEvent);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFileAttributesW_Wrapper(PCWSTR lpFileName, DWORD dwFileAttributes) {
  BOOL value_ = SetFileAttributesW(lpFileName, dwFileAttributes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFileInformationByHandle_Wrapper(HANDLE hFile, LONG fileInformationClass, void* lpFileInformation, unsigned long dwBufferSize) {
  BOOL value_ = SetFileInformationByHandle(hFile, fileInformationClass, lpFileInformation, dwBufferSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFileIoOverlappedRange_Wrapper(HANDLE fileHandle, unsigned char* overlappedRangeStart, unsigned long length) {
  BOOL value_ = SetFileIoOverlappedRange(fileHandle, overlappedRangeStart, length);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFilePointer_Wrapper(HANDLE hFile, int lDistanceToMove, int* lpDistanceToMoveHigh, DWORD dwMoveMethod) {
  unsigned long value_ = SetFilePointer(hFile, lDistanceToMove, lpDistanceToMoveHigh, dwMoveMethod);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result SetFilePointerEx_Wrapper(HANDLE hFile, LARGE_INTEGER liDistanceToMove, long long* lpNewFilePointer, DWORD dwMoveMethod) {
  BOOL value_ = SetFilePointerEx(hFile, liDistanceToMove, lpNewFilePointer, dwMoveMethod);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFileShortNameW_Wrapper(HANDLE hFile, PCWSTR lpShortName) {
  BOOL value_ = SetFileShortNameW(hFile, lpShortName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFileTime_Wrapper(HANDLE hFile, FILETIME* lpCreationTime, FILETIME* lpLastAccessTime, FILETIME* lpLastWriteTime) {
  BOOL value_ = SetFileTime(hFile, lpCreationTime, lpLastAccessTime, lpLastWriteTime);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFileValidData_Wrapper(HANDLE hFile, long long validDataLength) {
  BOOL value_ = SetFileValidData(hFile, validDataLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFirmwareEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpGuid, void* pValue, unsigned long nSize) {
  BOOL value_ = SetFirmwareEnvironmentVariableW(lpName, lpGuid, pValue, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFirmwareEnvironmentVariableExW_Wrapper(PCWSTR lpName, PCWSTR lpGuid, void* pValue, unsigned long nSize, unsigned long dwAttributes) {
  BOOL value_ = SetFirmwareEnvironmentVariableExW(lpName, lpGuid, pValue, nSize, dwAttributes);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetHandleInformation_Wrapper(HANDLE hObject, unsigned long dwMask, DWORD dwFlags) {
  BOOL value_ = SetHandleInformation(hObject, dwMask, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetInformationJobObject_Wrapper(HANDLE hJob, LONG jobObjectInformationClass, void* lpJobObjectInformation, unsigned long cbJobObjectInformationLength) {
  BOOL value_ = SetInformationJobObject(hJob, jobObjectInformationClass, lpJobObjectInformation, cbJobObjectInformationLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetIoRateControlInformationJobObject_Wrapper(HANDLE hJob, JOBOBJECT_IO_RATE_CONTROL_INFORMATION* ioRateControlInfo) {
  unsigned long value_ = SetIoRateControlInformationJobObject(hJob, ioRateControlInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result SetNamedPipeHandleState_Wrapper(HANDLE hNamedPipe, DWORD* lpMode, unsigned long* lpMaxCollectionCount, unsigned long* lpCollectDataTimeout) {
  BOOL value_ = SetNamedPipeHandleState(hNamedPipe, lpMode, lpMaxCollectionCount, lpCollectDataTimeout);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetProcessAffinityMask_Wrapper(HANDLE hProcess, unsigned long long dwProcessAffinityMask) {
  BOOL value_ = SetProcessAffinityMask(hProcess, dwProcessAffinityMask);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetProcessPriorityBoost_Wrapper(HANDLE hProcess, BOOL bDisablePriorityBoost) {
  BOOL value_ = SetProcessPriorityBoost(hProcess, bDisablePriorityBoost);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetProcessWorkingSetSize_Wrapper(HANDLE hProcess, unsigned long long dwMinimumWorkingSetSize, unsigned long long dwMaximumWorkingSetSize) {
  BOOL value_ = SetProcessWorkingSetSize(hProcess, dwMinimumWorkingSetSize, dwMaximumWorkingSetSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetStdHandle_Wrapper(DWORD nStdHandle, HANDLE hHandle) {
  BOOL value_ = SetStdHandle(nStdHandle, hHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetThreadAffinityMask_Wrapper(HANDLE hThread, unsigned long long dwThreadAffinityMask) {
  unsigned long long value_ = SetThreadAffinityMask(hThread, dwThreadAffinityMask);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result SetThreadErrorMode_Wrapper(DWORD dwNewMode, DWORD* lpOldMode) {
  BOOL value_ = SetThreadErrorMode(dwNewMode, lpOldMode);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetThreadUILanguage_Wrapper(unsigned short langId) {
  unsigned short value_ = SetThreadUILanguage(langId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u16 = value_}};
}

Win32Result SetupComm_Wrapper(HANDLE hFile, unsigned long dwInQueue, unsigned long dwOutQueue) {
  BOOL value_ = SetupComm(hFile, dwInQueue, dwOutQueue);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetVolumeLabelW_Wrapper(PCWSTR lpRootPathName, PCWSTR lpVolumeName) {
  BOOL value_ = SetVolumeLabelW(lpRootPathName, lpVolumeName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SizeofResource_Wrapper(HMODULE hModule, HRSRC hResInfo) {
  unsigned long value_ = SizeofResource(hModule, hResInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result SystemTimeToFileTime_Wrapper(SYSTEMTIME* lpSystemTime, FILETIME* lpFileTime) {
  BOOL value_ = SystemTimeToFileTime(lpSystemTime, lpFileTime);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result TerminateJobObject_Wrapper(HANDLE hJob, unsigned long uExitCode) {
  BOOL value_ = TerminateJobObject(hJob, uExitCode);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result TerminateProcess_Wrapper(HANDLE hProcess, unsigned long uExitCode) {
  BOOL value_ = TerminateProcess(hProcess, uExitCode);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result TerminateThread_Wrapper(HANDLE hThread, unsigned long dwExitCode) {
  BOOL value_ = TerminateThread(hThread, dwExitCode);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result TransactNamedPipe_Wrapper(HANDLE hNamedPipe, void* lpInBuffer, unsigned long nInBufferSize, void* lpOutBuffer, unsigned long nOutBufferSize, unsigned long* lpBytesRead, OVERLAPPED* lpOverlapped) {
  BOOL value_ = TransactNamedPipe(hNamedPipe, lpInBuffer, nInBufferSize, lpOutBuffer, nOutBufferSize, lpBytesRead, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result TransmitCommChar_Wrapper(HANDLE hFile, CHAR cChar) {
  BOOL value_ = TransmitCommChar(hFile, cChar);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnlockFile_Wrapper(HANDLE hFile, unsigned long dwFileOffsetLow, unsigned long dwFileOffsetHigh, unsigned long nNumberOfBytesToUnlockLow, unsigned long nNumberOfBytesToUnlockHigh) {
  BOOL value_ = UnlockFile(hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToUnlockLow, nNumberOfBytesToUnlockHigh);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnlockFileEx_Wrapper(HANDLE hFile, unsigned long dwReserved, unsigned long nNumberOfBytesToUnlockLow, unsigned long nNumberOfBytesToUnlockHigh, OVERLAPPED* lpOverlapped) {
  BOOL value_ = UnlockFileEx(hFile, dwReserved, nNumberOfBytesToUnlockLow, nNumberOfBytesToUnlockHigh, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UpdateProcThreadAttribute_Wrapper(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long dwFlags, unsigned long long attribute, void* lpValue, unsigned long long cbSize, void* lpPreviousValue, unsigned long long* lpReturnSize) {
  BOOL value_ = UpdateProcThreadAttribute(lpAttributeList, dwFlags, attribute, lpValue, cbSize, lpPreviousValue, lpReturnSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UpdateResourceW_Wrapper(HANDLE hUpdate, PCWSTR lpType, PCWSTR lpName, unsigned short wLanguage, void* lpData, unsigned long cb) {
  BOOL value_ = UpdateResourceW(hUpdate, lpType, lpName, wLanguage, lpData, cb);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result VerifyVersionInfoW_Wrapper(OSVERSIONINFOEXW* lpVersionInformation, DWORD dwTypeMask, unsigned long long dwlConditionMask) {
  BOOL value_ = VerifyVersionInfoW(lpVersionInformation, dwTypeMask, dwlConditionMask);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result VirtualAlloc_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD flAllocationType, DWORD flProtect) {
  void* value_ = VirtualAlloc(lpAddress, dwSize, flAllocationType, flProtect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result VirtualAllocEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD flAllocationType, DWORD flProtect) {
  void* value_ = VirtualAllocEx(hProcess, lpAddress, dwSize, flAllocationType, flProtect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result VirtualFree_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD dwFreeType) {
  BOOL value_ = VirtualFree(lpAddress, dwSize, dwFreeType);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result VirtualFreeEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD dwFreeType) {
  BOOL value_ = VirtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result VirtualLock_Wrapper(void* lpAddress, unsigned long long dwSize) {
  BOOL value_ = VirtualLock(lpAddress, dwSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result VirtualProtect_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD flNewProtect, DWORD* lpflOldProtect) {
  BOOL value_ = VirtualProtect(lpAddress, dwSize, flNewProtect, lpflOldProtect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result VirtualProtectEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD flNewProtect, DWORD* lpflOldProtect) {
  BOOL value_ = VirtualProtectEx(hProcess, lpAddress, dwSize, flNewProtect, lpflOldProtect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result VirtualQuery_Wrapper(void* lpAddress, MEMORY_BASIC_INFORMATION* lpBuffer, unsigned long long dwLength) {
  unsigned long long value_ = VirtualQuery(lpAddress, lpBuffer, dwLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result VirtualQueryEx_Wrapper(HANDLE hProcess, void* lpAddress, MEMORY_BASIC_INFORMATION* lpBuffer, unsigned long long dwLength) {
  unsigned long long value_ = VirtualQueryEx(hProcess, lpAddress, lpBuffer, dwLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result VirtualUnlock_Wrapper(void* lpAddress, unsigned long long dwSize) {
  BOOL value_ = VirtualUnlock(lpAddress, dwSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result WaitCommEvent_Wrapper(HANDLE hFile, DWORD* lpEvtMask, OVERLAPPED* lpOverlapped) {
  BOOL value_ = WaitCommEvent(hFile, lpEvtMask, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result WaitForMultipleObjects_Wrapper(unsigned long nCount, HANDLE* lpHandles, BOOL bWaitAll, unsigned long dwMilliseconds) {
  DWORD value_ = WaitForMultipleObjects(nCount, lpHandles, bWaitAll, dwMilliseconds);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result WaitForSingleObject_Wrapper(HANDLE hHandle, unsigned long dwMilliseconds) {
  DWORD value_ = WaitForSingleObject(hHandle, dwMilliseconds);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result WideCharToMultiByte_Wrapper(unsigned long codePage, unsigned long dwFlags, PCWSTR lpWideCharStr, int cchWideChar, PSTR lpMultiByteStr, int cbMultiByte, PCSTR lpDefaultChar, BOOL* lpUsedDefaultChar) {
  int value_ = WideCharToMultiByte(codePage, dwFlags, lpWideCharStr, cchWideChar, lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result Wow64SuspendThread_Wrapper(HANDLE hThread) {
  unsigned long value_ = Wow64SuspendThread(hThread);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result WriteConsoleW_Wrapper(HANDLE hConsoleOutput, PCWSTR lpBuffer, unsigned long nNumberOfCharsToWrite, unsigned long* lpNumberOfCharsWritten, void* lpReserved) {
  BOOL value_ = WriteConsoleW(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite, lpNumberOfCharsWritten, lpReserved);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result WriteFile_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToWrite, unsigned long* lpNumberOfBytesWritten, OVERLAPPED* lpOverlapped) {
  BOOL value_ = WriteFile(hFile, lpBuffer, nNumberOfBytesToWrite, lpNumberOfBytesWritten, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result WriteFileEx_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToWrite, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine) {
  BOOL value_ = WriteFileEx(hFile, lpBuffer, nNumberOfBytesToWrite, lpOverlapped, lpCompletionRoutine);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result WriteFileGather_Wrapper(HANDLE hFile, FILE_SEGMENT_ELEMENT* aSegmentArray, unsigned long nNumberOfBytesToWrite, unsigned long* lpReserved, OVERLAPPED* lpOverlapped) {
  BOOL value_ = WriteFileGather(hFile, aSegmentArray, nNumberOfBytesToWrite, lpReserved, lpOverlapped);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result WriteProcessMemory_Wrapper(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, unsigned long long nSize, unsigned long long* lpNumberOfBytesWritten) {
  BOOL value_ = WriteProcessMemory(hProcess, lpBaseAddress, lpBuffer, nSize, lpNumberOfBytesWritten);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

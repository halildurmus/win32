// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "kernel32.g.h"

BOOL ActivateActCtx_Wrapper(HANDLE hActCtx, unsigned long long* lpCookie) {
  trace_print("Calling ActivateActCtx\n");
  BOOL result_ = ActivateActCtx(hActCtx, lpCookie);
  trace_print("ActivateActCtx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

void* AddDllDirectory_Wrapper(PCWSTR newDirectory) {
  trace_print("Calling AddDllDirectory\n");
  void* result_ = AddDllDirectory(newDirectory);
  trace_print("AddDllDirectory returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AllocConsole_Wrapper() {
  trace_print("Calling AllocConsole\n");
  BOOL result_ = AllocConsole();
  trace_print("AllocConsole returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AssignProcessToJobObject_Wrapper(HANDLE hJob, HANDLE hProcess) {
  trace_print("Calling AssignProcessToJobObject\n");
  BOOL result_ = AssignProcessToJobObject(hJob, hProcess);
  trace_print("AssignProcessToJobObject returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AttachConsole_Wrapper(unsigned long dwProcessId) {
  trace_print("Calling AttachConsole\n");
  BOOL result_ = AttachConsole(dwProcessId);
  trace_print("AttachConsole returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL Beep_Wrapper(unsigned long dwFreq, unsigned long dwDuration) {
  trace_print("Calling Beep\n");
  BOOL result_ = Beep(dwFreq, dwDuration);
  trace_print("Beep returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE BeginUpdateResourceW_Wrapper(PCWSTR pFileName, BOOL bDeleteExistingResources) {
  trace_print("Calling BeginUpdateResourceW\n");
  HANDLE result_ = BeginUpdateResourceW(pFileName, bDeleteExistingResources);
  trace_print("BeginUpdateResourceW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BuildCommDCBW_Wrapper(PCWSTR lpDef, DCB* lpDCB) {
  trace_print("Calling BuildCommDCBW\n");
  BOOL result_ = BuildCommDCBW(lpDef, lpDCB);
  trace_print("BuildCommDCBW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BuildCommDCBAndTimeoutsW_Wrapper(PCWSTR lpDef, DCB* lpDCB, COMMTIMEOUTS* lpCommTimeouts) {
  trace_print("Calling BuildCommDCBAndTimeoutsW\n");
  BOOL result_ = BuildCommDCBAndTimeoutsW(lpDef, lpDCB, lpCommTimeouts);
  trace_print("BuildCommDCBAndTimeoutsW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CancelIo_Wrapper(HANDLE hFile) {
  trace_print("Calling CancelIo\n");
  BOOL result_ = CancelIo(hFile);
  trace_print("CancelIo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CancelIoEx_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped) {
  trace_print("Calling CancelIoEx\n");
  BOOL result_ = CancelIoEx(hFile, lpOverlapped);
  trace_print("CancelIoEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CancelSynchronousIo_Wrapper(HANDLE hThread) {
  trace_print("Calling CancelSynchronousIo\n");
  BOOL result_ = CancelSynchronousIo(hThread);
  trace_print("CancelSynchronousIo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CheckRemoteDebuggerPresent_Wrapper(HANDLE hProcess, BOOL* pbDebuggerPresent) {
  trace_print("Calling CheckRemoteDebuggerPresent\n");
  BOOL result_ = CheckRemoteDebuggerPresent(hProcess, pbDebuggerPresent);
  trace_print("CheckRemoteDebuggerPresent returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ClearCommBreak_Wrapper(HANDLE hFile) {
  trace_print("Calling ClearCommBreak\n");
  BOOL result_ = ClearCommBreak(hFile);
  trace_print("ClearCommBreak returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ClearCommError_Wrapper(HANDLE hFile, DWORD* lpErrors, COMSTAT* lpStat) {
  trace_print("Calling ClearCommError\n");
  BOOL result_ = ClearCommError(hFile, lpErrors, lpStat);
  trace_print("ClearCommError returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CloseHandle_Wrapper(HANDLE hObject) {
  trace_print("Calling CloseHandle\n");
  BOOL result_ = CloseHandle(hObject);
  trace_print("CloseHandle returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CommConfigDialogW_Wrapper(PCWSTR lpszName, HWND hWnd, COMMCONFIG* lpCC) {
  trace_print("Calling CommConfigDialogW\n");
  BOOL result_ = CommConfigDialogW(lpszName, hWnd, lpCC);
  trace_print("CommConfigDialogW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ConnectNamedPipe_Wrapper(HANDLE hNamedPipe, OVERLAPPED* lpOverlapped) {
  trace_print("Calling ConnectNamedPipe\n");
  BOOL result_ = ConnectNamedPipe(hNamedPipe, lpOverlapped);
  trace_print("ConnectNamedPipe returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ContinueDebugEvent_Wrapper(unsigned long dwProcessId, unsigned long dwThreadId, NTSTATUS dwContinueStatus) {
  trace_print("Calling ContinueDebugEvent\n");
  BOOL result_ = ContinueDebugEvent(dwProcessId, dwThreadId, dwContinueStatus);
  trace_print("ContinueDebugEvent returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CopyFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, BOOL bFailIfExists) {
  trace_print("Calling CopyFileW\n");
  BOOL result_ = CopyFileW(lpExistingFileName, lpNewFileName, bFailIfExists);
  trace_print("CopyFileW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CopyFileExW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, BOOL* pbCancel, DWORD dwCopyFlags) {
  trace_print("Calling CopyFileExW\n");
  BOOL result_ = CopyFileExW(lpExistingFileName, lpNewFileName, lpProgressRoutine, lpData, pbCancel, dwCopyFlags);
  trace_print("CopyFileExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateActCtxW_Wrapper(ACTCTXW* pActCtx) {
  trace_print("Calling CreateActCtxW\n");
  HANDLE result_ = CreateActCtxW(pActCtx);
  trace_print("CreateActCtxW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateConsoleScreenBuffer_Wrapper(unsigned long dwDesiredAccess, unsigned long dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, unsigned long dwFlags, void* lpScreenBufferData) {
  trace_print("Calling CreateConsoleScreenBuffer\n");
  HANDLE result_ = CreateConsoleScreenBuffer(dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwFlags, lpScreenBufferData);
  trace_print("CreateConsoleScreenBuffer returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CreateDirectoryW_Wrapper(PCWSTR lpPathName, SECURITY_ATTRIBUTES* lpSecurityAttributes) {
  trace_print("Calling CreateDirectoryW\n");
  BOOL result_ = CreateDirectoryW(lpPathName, lpSecurityAttributes);
  trace_print("CreateDirectoryW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateEventW_Wrapper(SECURITY_ATTRIBUTES* lpEventAttributes, BOOL bManualReset, BOOL bInitialState, PCWSTR lpName) {
  trace_print("Calling CreateEventW\n");
  HANDLE result_ = CreateEventW(lpEventAttributes, bManualReset, bInitialState, lpName);
  trace_print("CreateEventW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateEventExW_Wrapper(SECURITY_ATTRIBUTES* lpEventAttributes, PCWSTR lpName, DWORD dwFlags, unsigned long dwDesiredAccess) {
  trace_print("Calling CreateEventExW\n");
  HANDLE result_ = CreateEventExW(lpEventAttributes, lpName, dwFlags, dwDesiredAccess);
  trace_print("CreateEventExW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateFileW_Wrapper(PCWSTR lpFileName, unsigned long dwDesiredAccess, DWORD dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile) {
  trace_print("Calling CreateFileW\n");
  HANDLE result_ = CreateFileW(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
  trace_print("CreateFileW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateFile2_Wrapper(PCWSTR lpFileName, unsigned long dwDesiredAccess, DWORD dwShareMode, DWORD dwCreationDisposition, CREATEFILE2_EXTENDED_PARAMETERS* pCreateExParams) {
  trace_print("Calling CreateFile2\n");
  HANDLE result_ = CreateFile2(lpFileName, dwDesiredAccess, dwShareMode, dwCreationDisposition, pCreateExParams);
  trace_print("CreateFile2 returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateIoCompletionPort_Wrapper(HANDLE fileHandle, HANDLE existingCompletionPort, unsigned long long completionKey, unsigned long numberOfConcurrentThreads) {
  trace_print("Calling CreateIoCompletionPort\n");
  HANDLE result_ = CreateIoCompletionPort(fileHandle, existingCompletionPort, completionKey, numberOfConcurrentThreads);
  trace_print("CreateIoCompletionPort returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateJobObjectW_Wrapper(SECURITY_ATTRIBUTES* lpJobAttributes, PCWSTR lpName) {
  trace_print("Calling CreateJobObjectW\n");
  HANDLE result_ = CreateJobObjectW(lpJobAttributes, lpName);
  trace_print("CreateJobObjectW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CreatePipe_Wrapper(HANDLE* hReadPipe, HANDLE* hWritePipe, SECURITY_ATTRIBUTES* lpPipeAttributes, unsigned long nSize) {
  trace_print("Calling CreatePipe\n");
  BOOL result_ = CreatePipe(hReadPipe, hWritePipe, lpPipeAttributes, nSize);
  trace_print("CreatePipe returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CreateProcessW_Wrapper(PCWSTR lpApplicationName, PWSTR lpCommandLine, SECURITY_ATTRIBUTES* lpProcessAttributes, SECURITY_ATTRIBUTES* lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags, void* lpEnvironment, PCWSTR lpCurrentDirectory, STARTUPINFOW* lpStartupInfo, PROCESS_INFORMATION* lpProcessInformation) {
  trace_print("Calling CreateProcessW\n");
  BOOL result_ = CreateProcessW(lpApplicationName, lpCommandLine, lpProcessAttributes, lpThreadAttributes, bInheritHandles, dwCreationFlags, lpEnvironment, lpCurrentDirectory, lpStartupInfo, lpProcessInformation);
  trace_print("CreateProcessW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateRemoteThread_Wrapper(HANDLE hProcess, SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, unsigned long dwCreationFlags, unsigned long* lpThreadId) {
  trace_print("Calling CreateRemoteThread\n");
  HANDLE result_ = CreateRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId);
  trace_print("CreateRemoteThread returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateRemoteThreadEx_Wrapper(HANDLE hProcess, SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, unsigned long dwCreationFlags, LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long* lpThreadId) {
  trace_print("Calling CreateRemoteThreadEx\n");
  HANDLE result_ = CreateRemoteThreadEx(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpAttributeList, lpThreadId);
  trace_print("CreateRemoteThreadEx returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOLEAN CreateSymbolicLinkW_Wrapper(PCWSTR lpSymlinkFileName, PCWSTR lpTargetFileName, DWORD dwFlags) {
  trace_print("Calling CreateSymbolicLinkW\n");
  BOOLEAN result_ = CreateSymbolicLinkW(lpSymlinkFileName, lpTargetFileName, dwFlags);
  trace_print("CreateSymbolicLinkW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CreateThread_Wrapper(SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, DWORD dwCreationFlags, unsigned long* lpThreadId) {
  trace_print("Calling CreateThread\n");
  HANDLE result_ = CreateThread(lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId);
  trace_print("CreateThread returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DeactivateActCtx_Wrapper(unsigned long dwFlags, unsigned long long ulCookie) {
  trace_print("Calling DeactivateActCtx\n");
  BOOL result_ = DeactivateActCtx(dwFlags, ulCookie);
  trace_print("DeactivateActCtx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DebugBreakProcess_Wrapper(HANDLE process) {
  trace_print("Calling DebugBreakProcess\n");
  BOOL result_ = DebugBreakProcess(process);
  trace_print("DebugBreakProcess returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DebugSetProcessKillOnExit_Wrapper(BOOL killOnExit) {
  trace_print("Calling DebugSetProcessKillOnExit\n");
  BOOL result_ = DebugSetProcessKillOnExit(killOnExit);
  trace_print("DebugSetProcessKillOnExit returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DefineDosDeviceW_Wrapper(DWORD dwFlags, PCWSTR lpDeviceName, PCWSTR lpTargetPath) {
  trace_print("Calling DefineDosDeviceW\n");
  BOOL result_ = DefineDosDeviceW(dwFlags, lpDeviceName, lpTargetPath);
  trace_print("DefineDosDeviceW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DeleteFileW_Wrapper(PCWSTR lpFileName) {
  trace_print("Calling DeleteFileW\n");
  BOOL result_ = DeleteFileW(lpFileName);
  trace_print("DeleteFileW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DeleteVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint) {
  trace_print("Calling DeleteVolumeMountPointW\n");
  BOOL result_ = DeleteVolumeMountPointW(lpszVolumeMountPoint);
  trace_print("DeleteVolumeMountPointW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DeviceIoControl_Wrapper(HANDLE hDevice, unsigned long dwIoControlCode, void* lpInBuffer, unsigned long nInBufferSize, void* lpOutBuffer, unsigned long nOutBufferSize, unsigned long* lpBytesReturned, OVERLAPPED* lpOverlapped) {
  trace_print("Calling DeviceIoControl\n");
  BOOL result_ = DeviceIoControl(hDevice, dwIoControlCode, lpInBuffer, nInBufferSize, lpOutBuffer, nOutBufferSize, lpBytesReturned, lpOverlapped);
  trace_print("DeviceIoControl returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DisableThreadLibraryCalls_Wrapper(HMODULE hLibModule) {
  trace_print("Calling DisableThreadLibraryCalls\n");
  BOOL result_ = DisableThreadLibraryCalls(hLibModule);
  trace_print("DisableThreadLibraryCalls returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DisconnectNamedPipe_Wrapper(HANDLE hNamedPipe) {
  trace_print("Calling DisconnectNamedPipe\n");
  BOOL result_ = DisconnectNamedPipe(hNamedPipe);
  trace_print("DisconnectNamedPipe returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DnsHostnameToComputerNameW_Wrapper(PCWSTR hostname, PWSTR computerName, unsigned long* nSize) {
  trace_print("Calling DnsHostnameToComputerNameW\n");
  BOOL result_ = DnsHostnameToComputerNameW(hostname, computerName, nSize);
  trace_print("DnsHostnameToComputerNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DosDateTimeToFileTime_Wrapper(unsigned short wFatDate, unsigned short wFatTime, FILETIME* lpFileTime) {
  trace_print("Calling DosDateTimeToFileTime\n");
  BOOL result_ = DosDateTimeToFileTime(wFatDate, wFatTime, lpFileTime);
  trace_print("DosDateTimeToFileTime returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DuplicateHandle_Wrapper(HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, HANDLE* lpTargetHandle, unsigned long dwDesiredAccess, BOOL bInheritHandle, DWORD dwOptions) {
  trace_print("Calling DuplicateHandle\n");
  BOOL result_ = DuplicateHandle(hSourceProcessHandle, hSourceHandle, hTargetProcessHandle, lpTargetHandle, dwDesiredAccess, bInheritHandle, dwOptions);
  trace_print("DuplicateHandle returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EndUpdateResourceW_Wrapper(HANDLE hUpdate, BOOL fDiscard) {
  trace_print("Calling EndUpdateResourceW\n");
  BOOL result_ = EndUpdateResourceW(hUpdate, fDiscard);
  trace_print("EndUpdateResourceW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumResourceTypesW_Wrapper(HMODULE hModule, ENUMRESTYPEPROCW lpEnumFunc, long long lParam) {
  trace_print("Calling EnumResourceTypesW\n");
  BOOL result_ = EnumResourceTypesW(hModule, lpEnumFunc, lParam);
  trace_print("EnumResourceTypesW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long EnumSystemFirmwareTables_Wrapper(DWORD firmwareTableProviderSignature, unsigned char* pFirmwareTableEnumBuffer, unsigned long bufferSize) {
  trace_print("Calling EnumSystemFirmwareTables\n");
  unsigned long result_ = EnumSystemFirmwareTables(firmwareTableProviderSignature, pFirmwareTableEnumBuffer, bufferSize);
  trace_print("EnumSystemFirmwareTables returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EscapeCommFunction_Wrapper(HANDLE hFile, DWORD dwFunc) {
  trace_print("Calling EscapeCommFunction\n");
  BOOL result_ = EscapeCommFunction(hFile, dwFunc);
  trace_print("EscapeCommFunction returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FileTimeToDosDateTime_Wrapper(FILETIME* lpFileTime, unsigned short* lpFatDate, unsigned short* lpFatTime) {
  trace_print("Calling FileTimeToDosDateTime\n");
  BOOL result_ = FileTimeToDosDateTime(lpFileTime, lpFatDate, lpFatTime);
  trace_print("FileTimeToDosDateTime returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FileTimeToSystemTime_Wrapper(FILETIME* lpFileTime, SYSTEMTIME* lpSystemTime) {
  trace_print("Calling FileTimeToSystemTime\n");
  BOOL result_ = FileTimeToSystemTime(lpFileTime, lpSystemTime);
  trace_print("FileTimeToSystemTime returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FillConsoleOutputAttribute_Wrapper(HANDLE hConsoleOutput, unsigned short wAttribute, unsigned long nLength, COORD dwWriteCoord, unsigned long* lpNumberOfAttrsWritten) {
  trace_print("Calling FillConsoleOutputAttribute\n");
  BOOL result_ = FillConsoleOutputAttribute(hConsoleOutput, wAttribute, nLength, dwWriteCoord, lpNumberOfAttrsWritten);
  trace_print("FillConsoleOutputAttribute returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FillConsoleOutputCharacterW_Wrapper(HANDLE hConsoleOutput, char cCharacter, unsigned long nLength, COORD dwWriteCoord, unsigned long* lpNumberOfCharsWritten) {
  trace_print("Calling FillConsoleOutputCharacterW\n");
  BOOL result_ = FillConsoleOutputCharacterW(hConsoleOutput, cCharacter, nLength, dwWriteCoord, lpNumberOfCharsWritten);
  trace_print("FillConsoleOutputCharacterW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FindClose_Wrapper(HANDLE hFindFile) {
  trace_print("Calling FindClose\n");
  BOOL result_ = FindClose(hFindFile);
  trace_print("FindClose returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FindCloseChangeNotification_Wrapper(HANDLE hChangeHandle) {
  trace_print("Calling FindCloseChangeNotification\n");
  BOOL result_ = FindCloseChangeNotification(hChangeHandle);
  trace_print("FindCloseChangeNotification returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE FindFirstChangeNotificationW_Wrapper(PCWSTR lpPathName, BOOL bWatchSubtree, DWORD dwNotifyFilter) {
  trace_print("Calling FindFirstChangeNotificationW\n");
  HANDLE result_ = FindFirstChangeNotificationW(lpPathName, bWatchSubtree, dwNotifyFilter);
  trace_print("FindFirstChangeNotificationW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE FindFirstFileW_Wrapper(PCWSTR lpFileName, WIN32_FIND_DATAW* lpFindFileData) {
  trace_print("Calling FindFirstFileW\n");
  HANDLE result_ = FindFirstFileW(lpFileName, lpFindFileData);
  trace_print("FindFirstFileW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE FindFirstFileExW_Wrapper(PCWSTR lpFileName, LONG fInfoLevelId, void* lpFindFileData, LONG fSearchOp, void* lpSearchFilter, DWORD dwAdditionalFlags) {
  trace_print("Calling FindFirstFileExW\n");
  HANDLE result_ = FindFirstFileExW(lpFileName, fInfoLevelId, lpFindFileData, fSearchOp, lpSearchFilter, dwAdditionalFlags);
  trace_print("FindFirstFileExW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE FindFirstFileNameW_Wrapper(PCWSTR lpFileName, unsigned long dwFlags, unsigned long* stringLength, PWSTR linkName) {
  trace_print("Calling FindFirstFileNameW\n");
  HANDLE result_ = FindFirstFileNameW(lpFileName, dwFlags, stringLength, linkName);
  trace_print("FindFirstFileNameW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE FindFirstStreamW_Wrapper(PCWSTR lpFileName, LONG infoLevel, void* lpFindStreamData, unsigned long dwFlags) {
  trace_print("Calling FindFirstStreamW\n");
  HANDLE result_ = FindFirstStreamW(lpFileName, infoLevel, lpFindStreamData, dwFlags);
  trace_print("FindFirstStreamW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE FindFirstVolumeW_Wrapper(PWSTR lpszVolumeName, unsigned long cchBufferLength) {
  trace_print("Calling FindFirstVolumeW\n");
  HANDLE result_ = FindFirstVolumeW(lpszVolumeName, cchBufferLength);
  trace_print("FindFirstVolumeW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FindNextChangeNotification_Wrapper(HANDLE hChangeHandle) {
  trace_print("Calling FindNextChangeNotification\n");
  BOOL result_ = FindNextChangeNotification(hChangeHandle);
  trace_print("FindNextChangeNotification returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FindNextFileW_Wrapper(HANDLE hFindFile, WIN32_FIND_DATAW* lpFindFileData) {
  trace_print("Calling FindNextFileW\n");
  BOOL result_ = FindNextFileW(hFindFile, lpFindFileData);
  trace_print("FindNextFileW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FindNextFileNameW_Wrapper(HANDLE hFindStream, unsigned long* stringLength, PWSTR linkName) {
  trace_print("Calling FindNextFileNameW\n");
  BOOL result_ = FindNextFileNameW(hFindStream, stringLength, linkName);
  trace_print("FindNextFileNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FindNextStreamW_Wrapper(HANDLE hFindStream, void* lpFindStreamData) {
  trace_print("Calling FindNextStreamW\n");
  BOOL result_ = FindNextStreamW(hFindStream, lpFindStreamData);
  trace_print("FindNextStreamW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FindNextVolumeW_Wrapper(HANDLE hFindVolume, PWSTR lpszVolumeName, unsigned long cchBufferLength) {
  trace_print("Calling FindNextVolumeW\n");
  BOOL result_ = FindNextVolumeW(hFindVolume, lpszVolumeName, cchBufferLength);
  trace_print("FindNextVolumeW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int FindStringOrdinal_Wrapper(unsigned long dwFindStringOrdinalFlags, PCWSTR lpStringSource, int cchSource, PCWSTR lpStringValue, int cchValue, BOOL bIgnoreCase) {
  trace_print("Calling FindStringOrdinal\n");
  int result_ = FindStringOrdinal(dwFindStringOrdinalFlags, lpStringSource, cchSource, lpStringValue, cchValue, bIgnoreCase);
  trace_print("FindStringOrdinal returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FindVolumeClose_Wrapper(HANDLE hFindVolume) {
  trace_print("Calling FindVolumeClose\n");
  BOOL result_ = FindVolumeClose(hFindVolume);
  trace_print("FindVolumeClose returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FlushConsoleInputBuffer_Wrapper(HANDLE hConsoleInput) {
  trace_print("Calling FlushConsoleInputBuffer\n");
  BOOL result_ = FlushConsoleInputBuffer(hConsoleInput);
  trace_print("FlushConsoleInputBuffer returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FlushFileBuffers_Wrapper(HANDLE hFile) {
  trace_print("Calling FlushFileBuffers\n");
  BOOL result_ = FlushFileBuffers(hFile);
  trace_print("FlushFileBuffers returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long FormatMessageW_Wrapper(DWORD dwFlags, void* lpSource, unsigned long dwMessageId, unsigned long dwLanguageId, PWSTR lpBuffer, unsigned long nSize, signed char** arguments) {
  trace_print("Calling FormatMessageW\n");
  unsigned long result_ = FormatMessageW(dwFlags, lpSource, dwMessageId, dwLanguageId, lpBuffer, nSize, arguments);
  trace_print("FormatMessageW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FreeConsole_Wrapper() {
  trace_print("Calling FreeConsole\n");
  BOOL result_ = FreeConsole();
  trace_print("FreeConsole returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL FreeLibrary_Wrapper(HMODULE hLibModule) {
  trace_print("Calling FreeLibrary\n");
  BOOL result_ = FreeLibrary(hLibModule);
  trace_print("FreeLibrary returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetActiveProcessorCount_Wrapper(unsigned short groupNumber) {
  trace_print("Calling GetActiveProcessorCount\n");
  unsigned long result_ = GetActiveProcessorCount(groupNumber);
  trace_print("GetActiveProcessorCount returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetBinaryTypeW_Wrapper(PCWSTR lpApplicationName, unsigned long* lpBinaryType) {
  trace_print("Calling GetBinaryTypeW\n");
  BOOL result_ = GetBinaryTypeW(lpApplicationName, lpBinaryType);
  trace_print("GetBinaryTypeW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCommConfig_Wrapper(HANDLE hCommDev, COMMCONFIG* lpCC, unsigned long* lpdwSize) {
  trace_print("Calling GetCommConfig\n");
  BOOL result_ = GetCommConfig(hCommDev, lpCC, lpdwSize);
  trace_print("GetCommConfig returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCommMask_Wrapper(HANDLE hFile, DWORD* lpEvtMask) {
  trace_print("Calling GetCommMask\n");
  BOOL result_ = GetCommMask(hFile, lpEvtMask);
  trace_print("GetCommMask returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCommModemStatus_Wrapper(HANDLE hFile, DWORD* lpModemStat) {
  trace_print("Calling GetCommModemStatus\n");
  BOOL result_ = GetCommModemStatus(hFile, lpModemStat);
  trace_print("GetCommModemStatus returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCommProperties_Wrapper(HANDLE hFile, COMMPROP* lpCommProp) {
  trace_print("Calling GetCommProperties\n");
  BOOL result_ = GetCommProperties(hFile, lpCommProp);
  trace_print("GetCommProperties returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCommState_Wrapper(HANDLE hFile, DCB* lpDCB) {
  trace_print("Calling GetCommState\n");
  BOOL result_ = GetCommState(hFile, lpDCB);
  trace_print("GetCommState returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCommTimeouts_Wrapper(HANDLE hFile, COMMTIMEOUTS* lpCommTimeouts) {
  trace_print("Calling GetCommTimeouts\n");
  BOOL result_ = GetCommTimeouts(hFile, lpCommTimeouts);
  trace_print("GetCommTimeouts returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetCompressedFileSizeW_Wrapper(PCWSTR lpFileName, unsigned long* lpFileSizeHigh) {
  trace_print("Calling GetCompressedFileSizeW\n");
  unsigned long result_ = GetCompressedFileSizeW(lpFileName, lpFileSizeHigh);
  trace_print("GetCompressedFileSizeW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetComputerNameW_Wrapper(PWSTR lpBuffer, unsigned long* nSize) {
  trace_print("Calling GetComputerNameW\n");
  BOOL result_ = GetComputerNameW(lpBuffer, nSize);
  trace_print("GetComputerNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetComputerNameExW_Wrapper(LONG nameType, PWSTR lpBuffer, unsigned long* nSize) {
  trace_print("Calling GetComputerNameExW\n");
  BOOL result_ = GetComputerNameExW(nameType, lpBuffer, nSize);
  trace_print("GetComputerNameExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetConsoleCP_Wrapper() {
  trace_print("Calling GetConsoleCP\n");
  unsigned long result_ = GetConsoleCP();
  trace_print("GetConsoleCP returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetConsoleCursorInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_CURSOR_INFO* lpConsoleCursorInfo) {
  trace_print("Calling GetConsoleCursorInfo\n");
  BOOL result_ = GetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);
  trace_print("GetConsoleCursorInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetConsoleMode_Wrapper(HANDLE hConsoleHandle, DWORD* lpMode) {
  trace_print("Calling GetConsoleMode\n");
  BOOL result_ = GetConsoleMode(hConsoleHandle, lpMode);
  trace_print("GetConsoleMode returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetConsoleOutputCP_Wrapper() {
  trace_print("Calling GetConsoleOutputCP\n");
  unsigned long result_ = GetConsoleOutputCP();
  trace_print("GetConsoleOutputCP returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetConsoleScreenBufferInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_SCREEN_BUFFER_INFO* lpConsoleScreenBufferInfo) {
  trace_print("Calling GetConsoleScreenBufferInfo\n");
  BOOL result_ = GetConsoleScreenBufferInfo(hConsoleOutput, lpConsoleScreenBufferInfo);
  trace_print("GetConsoleScreenBufferInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetConsoleSelectionInfo_Wrapper(CONSOLE_SELECTION_INFO* lpConsoleSelectionInfo) {
  trace_print("Calling GetConsoleSelectionInfo\n");
  BOOL result_ = GetConsoleSelectionInfo(lpConsoleSelectionInfo);
  trace_print("GetConsoleSelectionInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetConsoleTitleW_Wrapper(PWSTR lpConsoleTitle, unsigned long nSize) {
  trace_print("Calling GetConsoleTitleW\n");
  unsigned long result_ = GetConsoleTitleW(lpConsoleTitle, nSize);
  trace_print("GetConsoleTitleW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCurrentActCtx_Wrapper(HANDLE* lphActCtx) {
  trace_print("Calling GetCurrentActCtx\n");
  BOOL result_ = GetCurrentActCtx(lphActCtx);
  trace_print("GetCurrentActCtx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetDefaultCommConfigW_Wrapper(PCWSTR lpszName, COMMCONFIG* lpCC, unsigned long* lpdwSize) {
  trace_print("Calling GetDefaultCommConfigW\n");
  BOOL result_ = GetDefaultCommConfigW(lpszName, lpCC, lpdwSize);
  trace_print("GetDefaultCommConfigW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetDiskFreeSpaceW_Wrapper(PCWSTR lpRootPathName, unsigned long* lpSectorsPerCluster, unsigned long* lpBytesPerSector, unsigned long* lpNumberOfFreeClusters, unsigned long* lpTotalNumberOfClusters) {
  trace_print("Calling GetDiskFreeSpaceW\n");
  BOOL result_ = GetDiskFreeSpaceW(lpRootPathName, lpSectorsPerCluster, lpBytesPerSector, lpNumberOfFreeClusters, lpTotalNumberOfClusters);
  trace_print("GetDiskFreeSpaceW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetDiskFreeSpaceExW_Wrapper(PCWSTR lpDirectoryName, unsigned long long* lpFreeBytesAvailableToCaller, unsigned long long* lpTotalNumberOfBytes, unsigned long long* lpTotalNumberOfFreeBytes) {
  trace_print("Calling GetDiskFreeSpaceExW\n");
  BOOL result_ = GetDiskFreeSpaceExW(lpDirectoryName, lpFreeBytesAvailableToCaller, lpTotalNumberOfBytes, lpTotalNumberOfFreeBytes);
  trace_print("GetDiskFreeSpaceExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetDllDirectoryW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer) {
  trace_print("Calling GetDllDirectoryW\n");
  unsigned long result_ = GetDllDirectoryW(nBufferLength, lpBuffer);
  trace_print("GetDllDirectoryW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetEnvironmentVariableW_Wrapper(PCWSTR lpName, PWSTR lpBuffer, unsigned long nSize) {
  trace_print("Calling GetEnvironmentVariableW\n");
  unsigned long result_ = GetEnvironmentVariableW(lpName, lpBuffer, nSize);
  trace_print("GetEnvironmentVariableW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetExitCodeProcess_Wrapper(HANDLE hProcess, unsigned long* lpExitCode) {
  trace_print("Calling GetExitCodeProcess\n");
  BOOL result_ = GetExitCodeProcess(hProcess, lpExitCode);
  trace_print("GetExitCodeProcess returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetFileAttributesW_Wrapper(PCWSTR lpFileName) {
  trace_print("Calling GetFileAttributesW\n");
  unsigned long result_ = GetFileAttributesW(lpFileName);
  trace_print("GetFileAttributesW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetFileAttributesExW_Wrapper(PCWSTR lpFileName, LONG fInfoLevelId, void* lpFileInformation) {
  trace_print("Calling GetFileAttributesExW\n");
  BOOL result_ = GetFileAttributesExW(lpFileName, fInfoLevelId, lpFileInformation);
  trace_print("GetFileAttributesExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetFileInformationByHandle_Wrapper(HANDLE hFile, BY_HANDLE_FILE_INFORMATION* lpFileInformation) {
  trace_print("Calling GetFileInformationByHandle\n");
  BOOL result_ = GetFileInformationByHandle(hFile, lpFileInformation);
  trace_print("GetFileInformationByHandle returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetFileSize_Wrapper(HANDLE hFile, unsigned long* lpFileSizeHigh) {
  trace_print("Calling GetFileSize\n");
  unsigned long result_ = GetFileSize(hFile, lpFileSizeHigh);
  trace_print("GetFileSize returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetFileSizeEx_Wrapper(HANDLE hFile, long long* lpFileSize) {
  trace_print("Calling GetFileSizeEx\n");
  BOOL result_ = GetFileSizeEx(hFile, lpFileSize);
  trace_print("GetFileSizeEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

DWORD GetFileType_Wrapper(HANDLE hFile) {
  trace_print("Calling GetFileType\n");
  DWORD result_ = GetFileType(hFile);
  trace_print("GetFileType returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetFinalPathNameByHandleW_Wrapper(HANDLE hFile, PWSTR lpszFilePath, unsigned long cchFilePath, DWORD dwFlags) {
  trace_print("Calling GetFinalPathNameByHandleW\n");
  unsigned long result_ = GetFinalPathNameByHandleW(hFile, lpszFilePath, cchFilePath, dwFlags);
  trace_print("GetFinalPathNameByHandleW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetFullPathNameW_Wrapper(PCWSTR lpFileName, unsigned long nBufferLength, PWSTR lpBuffer, PWSTR* lpFilePart) {
  trace_print("Calling GetFullPathNameW\n");
  unsigned long result_ = GetFullPathNameW(lpFileName, nBufferLength, lpBuffer, lpFilePart);
  trace_print("GetFullPathNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetHandleInformation_Wrapper(HANDLE hObject, unsigned long* lpdwFlags) {
  trace_print("Calling GetHandleInformation\n");
  BOOL result_ = GetHandleInformation(hObject, lpdwFlags);
  trace_print("GetHandleInformation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

COORD GetLargestConsoleWindowSize_Wrapper(HANDLE hConsoleOutput) {
  trace_print("Calling GetLargestConsoleWindowSize\n");
  COORD result_ = GetLargestConsoleWindowSize(hConsoleOutput);
  trace_print("GetLargestConsoleWindowSize returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetLocaleInfoEx_Wrapper(PCWSTR lpLocaleName, unsigned long lCType, PWSTR lpLCData, int cchData) {
  trace_print("Calling GetLocaleInfoEx\n");
  int result_ = GetLocaleInfoEx(lpLocaleName, lCType, lpLCData, cchData);
  trace_print("GetLocaleInfoEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetLogicalDrives_Wrapper() {
  trace_print("Calling GetLogicalDrives\n");
  unsigned long result_ = GetLogicalDrives();
  trace_print("GetLogicalDrives returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetLogicalDriveStringsW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer) {
  trace_print("Calling GetLogicalDriveStringsW\n");
  unsigned long result_ = GetLogicalDriveStringsW(nBufferLength, lpBuffer);
  trace_print("GetLogicalDriveStringsW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetLogicalProcessorInformation_Wrapper(SYSTEM_LOGICAL_PROCESSOR_INFORMATION* buffer, unsigned long* returnedLength) {
  trace_print("Calling GetLogicalProcessorInformation\n");
  BOOL result_ = GetLogicalProcessorInformation(buffer, returnedLength);
  trace_print("GetLogicalProcessorInformation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetLongPathNameW_Wrapper(PCWSTR lpszShortPath, PWSTR lpszLongPath, unsigned long cchBuffer) {
  trace_print("Calling GetLongPathNameW\n");
  unsigned long result_ = GetLongPathNameW(lpszShortPath, lpszLongPath, cchBuffer);
  trace_print("GetLongPathNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetMaximumProcessorCount_Wrapper(unsigned short groupNumber) {
  trace_print("Calling GetMaximumProcessorCount\n");
  unsigned long result_ = GetMaximumProcessorCount(groupNumber);
  trace_print("GetMaximumProcessorCount returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetModuleFileNameW_Wrapper(HMODULE hModule, PWSTR lpFilename, unsigned long nSize) {
  trace_print("Calling GetModuleFileNameW\n");
  unsigned long result_ = GetModuleFileNameW(hModule, lpFilename, nSize);
  trace_print("GetModuleFileNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HMODULE GetModuleHandleW_Wrapper(PCWSTR lpModuleName) {
  trace_print("Calling GetModuleHandleW\n");
  HMODULE result_ = GetModuleHandleW(lpModuleName);
  trace_print("GetModuleHandleW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetModuleHandleExW_Wrapper(unsigned long dwFlags, PCWSTR lpModuleName, HMODULE* phModule) {
  trace_print("Calling GetModuleHandleExW\n");
  BOOL result_ = GetModuleHandleExW(dwFlags, lpModuleName, phModule);
  trace_print("GetModuleHandleExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetNamedPipeClientProcessId_Wrapper(HANDLE pipe, unsigned long* clientProcessId) {
  trace_print("Calling GetNamedPipeClientProcessId\n");
  BOOL result_ = GetNamedPipeClientProcessId(pipe, clientProcessId);
  trace_print("GetNamedPipeClientProcessId returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetNamedPipeClientSessionId_Wrapper(HANDLE pipe, unsigned long* clientSessionId) {
  trace_print("Calling GetNamedPipeClientSessionId\n");
  BOOL result_ = GetNamedPipeClientSessionId(pipe, clientSessionId);
  trace_print("GetNamedPipeClientSessionId returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetNamedPipeInfo_Wrapper(HANDLE hNamedPipe, DWORD* lpFlags, unsigned long* lpOutBufferSize, unsigned long* lpInBufferSize, unsigned long* lpMaxInstances) {
  trace_print("Calling GetNamedPipeInfo\n");
  BOOL result_ = GetNamedPipeInfo(hNamedPipe, lpFlags, lpOutBufferSize, lpInBufferSize, lpMaxInstances);
  trace_print("GetNamedPipeInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetNumberOfConsoleInputEvents_Wrapper(HANDLE hConsoleInput, unsigned long* lpNumberOfEvents) {
  trace_print("Calling GetNumberOfConsoleInputEvents\n");
  BOOL result_ = GetNumberOfConsoleInputEvents(hConsoleInput, lpNumberOfEvents);
  trace_print("GetNumberOfConsoleInputEvents returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetOverlappedResult_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped, unsigned long* lpNumberOfBytesTransferred, BOOL bWait) {
  trace_print("Calling GetOverlappedResult\n");
  BOOL result_ = GetOverlappedResult(hFile, lpOverlapped, lpNumberOfBytesTransferred, bWait);
  trace_print("GetOverlappedResult returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetOverlappedResultEx_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped, unsigned long* lpNumberOfBytesTransferred, unsigned long dwMilliseconds, BOOL bAlertable) {
  trace_print("Calling GetOverlappedResultEx\n");
  BOOL result_ = GetOverlappedResultEx(hFile, lpOverlapped, lpNumberOfBytesTransferred, dwMilliseconds, bAlertable);
  trace_print("GetOverlappedResultEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPhysicallyInstalledSystemMemory_Wrapper(unsigned long long* totalMemoryInKilobytes) {
  trace_print("Calling GetPhysicallyInstalledSystemMemory\n");
  BOOL result_ = GetPhysicallyInstalledSystemMemory(totalMemoryInKilobytes);
  trace_print("GetPhysicallyInstalledSystemMemory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

FARPROC GetProcAddress_Wrapper(HMODULE hModule, PCSTR lpProcName) {
  trace_print("Calling GetProcAddress\n");
  FARPROC result_ = GetProcAddress(hModule, lpProcName);
  trace_print("GetProcAddress returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE GetProcessHeap_Wrapper() {
  trace_print("Calling GetProcessHeap\n");
  HANDLE result_ = GetProcessHeap();
  trace_print("GetProcessHeap returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetProcessHeaps_Wrapper(unsigned long numberOfHeaps, HANDLE* processHeaps) {
  trace_print("Calling GetProcessHeaps\n");
  unsigned long result_ = GetProcessHeaps(numberOfHeaps, processHeaps);
  trace_print("GetProcessHeaps returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetProcessId_Wrapper(HANDLE process) {
  trace_print("Calling GetProcessId\n");
  unsigned long result_ = GetProcessId(process);
  trace_print("GetProcessId returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetProcessShutdownParameters_Wrapper(unsigned long* lpdwLevel, unsigned long* lpdwFlags) {
  trace_print("Calling GetProcessShutdownParameters\n");
  BOOL result_ = GetProcessShutdownParameters(lpdwLevel, lpdwFlags);
  trace_print("GetProcessShutdownParameters returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetProcessTimes_Wrapper(HANDLE hProcess, FILETIME* lpCreationTime, FILETIME* lpExitTime, FILETIME* lpKernelTime, FILETIME* lpUserTime) {
  trace_print("Calling GetProcessTimes\n");
  BOOL result_ = GetProcessTimes(hProcess, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime);
  trace_print("GetProcessTimes returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetProcessVersion_Wrapper(unsigned long processId) {
  trace_print("Calling GetProcessVersion\n");
  unsigned long result_ = GetProcessVersion(processId);
  trace_print("GetProcessVersion returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetProcessWorkingSetSize_Wrapper(HANDLE hProcess, unsigned long long* lpMinimumWorkingSetSize, unsigned long long* lpMaximumWorkingSetSize) {
  trace_print("Calling GetProcessWorkingSetSize\n");
  BOOL result_ = GetProcessWorkingSetSize(hProcess, lpMinimumWorkingSetSize, lpMaximumWorkingSetSize);
  trace_print("GetProcessWorkingSetSize returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetQueuedCompletionStatus_Wrapper(HANDLE completionPort, unsigned long* lpNumberOfBytesTransferred, unsigned long long* lpCompletionKey, OVERLAPPED** lpOverlapped, unsigned long dwMilliseconds) {
  trace_print("Calling GetQueuedCompletionStatus\n");
  BOOL result_ = GetQueuedCompletionStatus(completionPort, lpNumberOfBytesTransferred, lpCompletionKey, lpOverlapped, dwMilliseconds);
  trace_print("GetQueuedCompletionStatus returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetQueuedCompletionStatusEx_Wrapper(HANDLE completionPort, OVERLAPPED_ENTRY* lpCompletionPortEntries, unsigned long ulCount, unsigned long* ulNumEntriesRemoved, unsigned long dwMilliseconds, BOOL fAlertable) {
  trace_print("Calling GetQueuedCompletionStatusEx\n");
  BOOL result_ = GetQueuedCompletionStatusEx(completionPort, lpCompletionPortEntries, ulCount, ulNumEntriesRemoved, dwMilliseconds, fAlertable);
  trace_print("GetQueuedCompletionStatusEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetShortPathNameW_Wrapper(PCWSTR lpszLongPath, PWSTR lpszShortPath, unsigned long cchBuffer) {
  trace_print("Calling GetShortPathNameW\n");
  unsigned long result_ = GetShortPathNameW(lpszLongPath, lpszShortPath, cchBuffer);
  trace_print("GetShortPathNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE GetStdHandle_Wrapper(DWORD nStdHandle) {
  trace_print("Calling GetStdHandle\n");
  HANDLE result_ = GetStdHandle(nStdHandle);
  trace_print("GetStdHandle returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetSystemDefaultLocaleName_Wrapper(PWSTR lpLocaleName, int cchLocaleName) {
  trace_print("Calling GetSystemDefaultLocaleName\n");
  int result_ = GetSystemDefaultLocaleName(lpLocaleName, cchLocaleName);
  trace_print("GetSystemDefaultLocaleName returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetSystemDirectoryW_Wrapper(PWSTR lpBuffer, unsigned long uSize) {
  trace_print("Calling GetSystemDirectoryW\n");
  unsigned long result_ = GetSystemDirectoryW(lpBuffer, uSize);
  trace_print("GetSystemDirectoryW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetSystemPowerStatus_Wrapper(SYSTEM_POWER_STATUS* lpSystemPowerStatus) {
  trace_print("Calling GetSystemPowerStatus\n");
  BOOL result_ = GetSystemPowerStatus(lpSystemPowerStatus);
  trace_print("GetSystemPowerStatus returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetSystemTimeAdjustment_Wrapper(unsigned long* lpTimeAdjustment, unsigned long* lpTimeIncrement, BOOL* lpTimeAdjustmentDisabled) {
  trace_print("Calling GetSystemTimeAdjustment\n");
  BOOL result_ = GetSystemTimeAdjustment(lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);
  trace_print("GetSystemTimeAdjustment returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetSystemTimes_Wrapper(FILETIME* lpIdleTime, FILETIME* lpKernelTime, FILETIME* lpUserTime) {
  trace_print("Calling GetSystemTimes\n");
  BOOL result_ = GetSystemTimes(lpIdleTime, lpKernelTime, lpUserTime);
  trace_print("GetSystemTimes returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetTempFileNameW_Wrapper(PCWSTR lpPathName, PCWSTR lpPrefixString, unsigned long uUnique, PWSTR lpTempFileName) {
  trace_print("Calling GetTempFileNameW\n");
  unsigned long result_ = GetTempFileNameW(lpPathName, lpPrefixString, uUnique, lpTempFileName);
  trace_print("GetTempFileNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetTempPathW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer) {
  trace_print("Calling GetTempPathW\n");
  unsigned long result_ = GetTempPathW(nBufferLength, lpBuffer);
  trace_print("GetTempPathW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetThreadId_Wrapper(HANDLE thread) {
  trace_print("Calling GetThreadId\n");
  unsigned long result_ = GetThreadId(thread);
  trace_print("GetThreadId returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetThreadTimes_Wrapper(HANDLE hThread, FILETIME* lpCreationTime, FILETIME* lpExitTime, FILETIME* lpKernelTime, FILETIME* lpUserTime) {
  trace_print("Calling GetThreadTimes\n");
  BOOL result_ = GetThreadTimes(hThread, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime);
  trace_print("GetThreadTimes returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetUserDefaultLocaleName_Wrapper(PWSTR lpLocaleName, int cchLocaleName) {
  trace_print("Calling GetUserDefaultLocaleName\n");
  int result_ = GetUserDefaultLocaleName(lpLocaleName, cchLocaleName);
  trace_print("GetUserDefaultLocaleName returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetVolumeInformationW_Wrapper(PCWSTR lpRootPathName, PWSTR lpVolumeNameBuffer, unsigned long nVolumeNameSize, unsigned long* lpVolumeSerialNumber, unsigned long* lpMaximumComponentLength, unsigned long* lpFileSystemFlags, PWSTR lpFileSystemNameBuffer, unsigned long nFileSystemNameSize) {
  trace_print("Calling GetVolumeInformationW\n");
  BOOL result_ = GetVolumeInformationW(lpRootPathName, lpVolumeNameBuffer, nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags, lpFileSystemNameBuffer, nFileSystemNameSize);
  trace_print("GetVolumeInformationW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetVolumeInformationByHandleW_Wrapper(HANDLE hFile, PWSTR lpVolumeNameBuffer, unsigned long nVolumeNameSize, unsigned long* lpVolumeSerialNumber, unsigned long* lpMaximumComponentLength, unsigned long* lpFileSystemFlags, PWSTR lpFileSystemNameBuffer, unsigned long nFileSystemNameSize) {
  trace_print("Calling GetVolumeInformationByHandleW\n");
  BOOL result_ = GetVolumeInformationByHandleW(hFile, lpVolumeNameBuffer, nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags, lpFileSystemNameBuffer, nFileSystemNameSize);
  trace_print("GetVolumeInformationByHandleW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetVolumeNameForVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint, PWSTR lpszVolumeName, unsigned long cchBufferLength) {
  trace_print("Calling GetVolumeNameForVolumeMountPointW\n");
  BOOL result_ = GetVolumeNameForVolumeMountPointW(lpszVolumeMountPoint, lpszVolumeName, cchBufferLength);
  trace_print("GetVolumeNameForVolumeMountPointW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetVolumePathNameW_Wrapper(PCWSTR lpszFileName, PWSTR lpszVolumePathName, unsigned long cchBufferLength) {
  trace_print("Calling GetVolumePathNameW\n");
  BOOL result_ = GetVolumePathNameW(lpszFileName, lpszVolumePathName, cchBufferLength);
  trace_print("GetVolumePathNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetVolumePathNamesForVolumeNameW_Wrapper(PCWSTR lpszVolumeName, PWSTR lpszVolumePathNames, unsigned long cchBufferLength, unsigned long* lpcchReturnLength) {
  trace_print("Calling GetVolumePathNamesForVolumeNameW\n");
  BOOL result_ = GetVolumePathNamesForVolumeNameW(lpszVolumeName, lpszVolumePathNames, cchBufferLength, lpcchReturnLength);
  trace_print("GetVolumePathNamesForVolumeNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HGLOBAL GlobalAlloc_Wrapper(DWORD uFlags, unsigned long long dwBytes) {
  trace_print("Calling GlobalAlloc\n");
  HGLOBAL result_ = GlobalAlloc(uFlags, dwBytes);
  trace_print("GlobalAlloc returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HGLOBAL GlobalFree_Wrapper(HGLOBAL hMem) {
  trace_print("Calling GlobalFree\n");
  HGLOBAL result_ = GlobalFree(hMem);
  trace_print("GlobalFree returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

void* GlobalLock_Wrapper(HGLOBAL hMem) {
  trace_print("Calling GlobalLock\n");
  void* result_ = GlobalLock(hMem);
  trace_print("GlobalLock returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GlobalMemoryStatusEx_Wrapper(MEMORYSTATUSEX* lpBuffer) {
  trace_print("Calling GlobalMemoryStatusEx\n");
  BOOL result_ = GlobalMemoryStatusEx(lpBuffer);
  trace_print("GlobalMemoryStatusEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long GlobalSize_Wrapper(HGLOBAL hMem) {
  trace_print("Calling GlobalSize\n");
  unsigned long long result_ = GlobalSize(hMem);
  trace_print("GlobalSize returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GlobalUnlock_Wrapper(HGLOBAL hMem) {
  trace_print("Calling GlobalUnlock\n");
  BOOL result_ = GlobalUnlock(hMem);
  trace_print("GlobalUnlock returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long HeapCompact_Wrapper(HANDLE hHeap, DWORD dwFlags) {
  trace_print("Calling HeapCompact\n");
  unsigned long long result_ = HeapCompact(hHeap, dwFlags);
  trace_print("HeapCompact returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE HeapCreate_Wrapper(DWORD flOptions, unsigned long long dwInitialSize, unsigned long long dwMaximumSize) {
  trace_print("Calling HeapCreate\n");
  HANDLE result_ = HeapCreate(flOptions, dwInitialSize, dwMaximumSize);
  trace_print("HeapCreate returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL HeapDestroy_Wrapper(HANDLE hHeap) {
  trace_print("Calling HeapDestroy\n");
  BOOL result_ = HeapDestroy(hHeap);
  trace_print("HeapDestroy returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL HeapFree_Wrapper(HANDLE hHeap, DWORD dwFlags, void* lpMem) {
  trace_print("Calling HeapFree\n");
  BOOL result_ = HeapFree(hHeap, dwFlags, lpMem);
  trace_print("HeapFree returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL HeapLock_Wrapper(HANDLE hHeap) {
  trace_print("Calling HeapLock\n");
  BOOL result_ = HeapLock(hHeap);
  trace_print("HeapLock returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL HeapQueryInformation_Wrapper(HANDLE heapHandle, LONG heapInformationClass, void* heapInformation, unsigned long long heapInformationLength, unsigned long long* returnLength) {
  trace_print("Calling HeapQueryInformation\n");
  BOOL result_ = HeapQueryInformation(heapHandle, heapInformationClass, heapInformation, heapInformationLength, returnLength);
  trace_print("HeapQueryInformation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL HeapSetInformation_Wrapper(HANDLE heapHandle, LONG heapInformationClass, void* heapInformation, unsigned long long heapInformationLength) {
  trace_print("Calling HeapSetInformation\n");
  BOOL result_ = HeapSetInformation(heapHandle, heapInformationClass, heapInformation, heapInformationLength);
  trace_print("HeapSetInformation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL HeapUnlock_Wrapper(HANDLE hHeap) {
  trace_print("Calling HeapUnlock\n");
  BOOL result_ = HeapUnlock(hHeap);
  trace_print("HeapUnlock returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL HeapWalk_Wrapper(HANDLE hHeap, PROCESS_HEAP_ENTRY* lpEntry) {
  trace_print("Calling HeapWalk\n");
  BOOL result_ = HeapWalk(hHeap, lpEntry);
  trace_print("HeapWalk returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL InitializeProcThreadAttributeList_Wrapper(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long dwAttributeCount, unsigned long dwFlags, unsigned long long* lpSize) {
  trace_print("Calling InitializeProcThreadAttributeList\n");
  BOOL result_ = InitializeProcThreadAttributeList(lpAttributeList, dwAttributeCount, dwFlags, lpSize);
  trace_print("InitializeProcThreadAttributeList returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL IsNativeVhdBoot_Wrapper(BOOL* nativeVhdBoot) {
  trace_print("Calling IsNativeVhdBoot\n");
  BOOL result_ = IsNativeVhdBoot(nativeVhdBoot);
  trace_print("IsNativeVhdBoot returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL IsProcessInJob_Wrapper(HANDLE processHandle, HANDLE jobHandle, BOOL* result) {
  trace_print("Calling IsProcessInJob\n");
  BOOL result_ = IsProcessInJob(processHandle, jobHandle, result);
  trace_print("IsProcessInJob returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL IsWow64Process2_Wrapper(HANDLE hProcess, USHORT* pProcessMachine, USHORT* pNativeMachine) {
  trace_print("Calling IsWow64Process2\n");
  BOOL result_ = IsWow64Process2(hProcess, pProcessMachine, pNativeMachine);
  trace_print("IsWow64Process2 returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HMODULE LoadLibraryW_Wrapper(PCWSTR lpLibFileName) {
  trace_print("Calling LoadLibraryW\n");
  HMODULE result_ = LoadLibraryW(lpLibFileName);
  trace_print("LoadLibraryW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HMODULE LoadLibraryExW_Wrapper(PCWSTR lpLibFileName, HANDLE hFile, DWORD dwFlags) {
  trace_print("Calling LoadLibraryExW\n");
  HMODULE result_ = LoadLibraryExW(lpLibFileName, hFile, dwFlags);
  trace_print("LoadLibraryExW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HGLOBAL LoadResource_Wrapper(HMODULE hModule, HRSRC hResInfo) {
  trace_print("Calling LoadResource\n");
  HGLOBAL result_ = LoadResource(hModule, hResInfo);
  trace_print("LoadResource returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HLOCAL LocalAlloc_Wrapper(DWORD uFlags, unsigned long long uBytes) {
  trace_print("Calling LocalAlloc\n");
  HLOCAL result_ = LocalAlloc(uFlags, uBytes);
  trace_print("LocalAlloc returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HLOCAL LocalFree_Wrapper(HLOCAL hMem) {
  trace_print("Calling LocalFree\n");
  HLOCAL result_ = LocalFree(hMem);
  trace_print("LocalFree returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL LockFile_Wrapper(HANDLE hFile, unsigned long dwFileOffsetLow, unsigned long dwFileOffsetHigh, unsigned long nNumberOfBytesToLockLow, unsigned long nNumberOfBytesToLockHigh) {
  trace_print("Calling LockFile\n");
  BOOL result_ = LockFile(hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToLockLow, nNumberOfBytesToLockHigh);
  trace_print("LockFile returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL LockFileEx_Wrapper(HANDLE hFile, DWORD dwFlags, unsigned long dwReserved, unsigned long nNumberOfBytesToLockLow, unsigned long nNumberOfBytesToLockHigh, OVERLAPPED* lpOverlapped) {
  trace_print("Calling LockFileEx\n");
  BOOL result_ = LockFileEx(hFile, dwFlags, dwReserved, nNumberOfBytesToLockLow, nNumberOfBytesToLockHigh, lpOverlapped);
  trace_print("LockFileEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL MoveFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName) {
  trace_print("Calling MoveFileW\n");
  BOOL result_ = MoveFileW(lpExistingFileName, lpNewFileName);
  trace_print("MoveFileW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL MoveFileExW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, DWORD dwFlags) {
  trace_print("Calling MoveFileExW\n");
  BOOL result_ = MoveFileExW(lpExistingFileName, lpNewFileName, dwFlags);
  trace_print("MoveFileExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE OpenEventW_Wrapper(DWORD dwDesiredAccess, BOOL bInheritHandle, PCWSTR lpName) {
  trace_print("Calling OpenEventW\n");
  HANDLE result_ = OpenEventW(dwDesiredAccess, bInheritHandle, lpName);
  trace_print("OpenEventW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE OpenJobObjectW_Wrapper(unsigned long dwDesiredAccess, BOOL bInheritHandle, PCWSTR lpName) {
  trace_print("Calling OpenJobObjectW\n");
  HANDLE result_ = OpenJobObjectW(dwDesiredAccess, bInheritHandle, lpName);
  trace_print("OpenJobObjectW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE OpenProcess_Wrapper(DWORD dwDesiredAccess, BOOL bInheritHandle, unsigned long dwProcessId) {
  trace_print("Calling OpenProcess\n");
  HANDLE result_ = OpenProcess(dwDesiredAccess, bInheritHandle, dwProcessId);
  trace_print("OpenProcess returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL PeekConsoleInputW_Wrapper(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, unsigned long nLength, unsigned long* lpNumberOfEventsRead) {
  trace_print("Calling PeekConsoleInputW\n");
  BOOL result_ = PeekConsoleInputW(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);
  trace_print("PeekConsoleInputW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL PeekNamedPipe_Wrapper(HANDLE hNamedPipe, void* lpBuffer, unsigned long nBufferSize, unsigned long* lpBytesRead, unsigned long* lpTotalBytesAvail, unsigned long* lpBytesLeftThisMessage) {
  trace_print("Calling PeekNamedPipe\n");
  BOOL result_ = PeekNamedPipe(hNamedPipe, lpBuffer, nBufferSize, lpBytesRead, lpTotalBytesAvail, lpBytesLeftThisMessage);
  trace_print("PeekNamedPipe returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL PostQueuedCompletionStatus_Wrapper(HANDLE completionPort, unsigned long dwNumberOfBytesTransferred, unsigned long long dwCompletionKey, OVERLAPPED* lpOverlapped) {
  trace_print("Calling PostQueuedCompletionStatus\n");
  BOOL result_ = PostQueuedCompletionStatus(completionPort, dwNumberOfBytesTransferred, dwCompletionKey, lpOverlapped);
  trace_print("PostQueuedCompletionStatus returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL PurgeComm_Wrapper(HANDLE hFile, DWORD dwFlags) {
  trace_print("Calling PurgeComm\n");
  BOOL result_ = PurgeComm(hFile, dwFlags);
  trace_print("PurgeComm returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long QueryDosDeviceW_Wrapper(PCWSTR lpDeviceName, PWSTR lpTargetPath, unsigned long ucchMax) {
  trace_print("Calling QueryDosDeviceW\n");
  unsigned long result_ = QueryDosDeviceW(lpDeviceName, lpTargetPath, ucchMax);
  trace_print("QueryDosDeviceW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryFullProcessImageNameW_Wrapper(HANDLE hProcess, DWORD dwFlags, PWSTR lpExeName, unsigned long* lpdwSize) {
  trace_print("Calling QueryFullProcessImageNameW\n");
  BOOL result_ = QueryFullProcessImageNameW(hProcess, dwFlags, lpExeName, lpdwSize);
  trace_print("QueryFullProcessImageNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryInformationJobObject_Wrapper(HANDLE hJob, LONG jobObjectInformationClass, void* lpJobObjectInformation, unsigned long cbJobObjectInformationLength, unsigned long* lpReturnLength) {
  trace_print("Calling QueryInformationJobObject\n");
  BOOL result_ = QueryInformationJobObject(hJob, jobObjectInformationClass, lpJobObjectInformation, cbJobObjectInformationLength, lpReturnLength);
  trace_print("QueryInformationJobObject returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long QueryIoRateControlInformationJobObject_Wrapper(HANDLE hJob, PCWSTR volumeName, JOBOBJECT_IO_RATE_CONTROL_INFORMATION** infoBlocks, unsigned long* infoBlockCount) {
  trace_print("Calling QueryIoRateControlInformationJobObject\n");
  unsigned long result_ = QueryIoRateControlInformationJobObject(hJob, volumeName, infoBlocks, infoBlockCount);
  trace_print("QueryIoRateControlInformationJobObject returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryPerformanceCounter_Wrapper(long long* lpPerformanceCount) {
  trace_print("Calling QueryPerformanceCounter\n");
  BOOL result_ = QueryPerformanceCounter(lpPerformanceCount);
  trace_print("QueryPerformanceCounter returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL QueryPerformanceFrequency_Wrapper(long long* lpFrequency) {
  trace_print("Calling QueryPerformanceFrequency\n");
  BOOL result_ = QueryPerformanceFrequency(lpFrequency);
  trace_print("QueryPerformanceFrequency returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ReadConsoleW_Wrapper(HANDLE hConsoleInput, void* lpBuffer, unsigned long nNumberOfCharsToRead, unsigned long* lpNumberOfCharsRead, CONSOLE_READCONSOLE_CONTROL* pInputControl) {
  trace_print("Calling ReadConsoleW\n");
  BOOL result_ = ReadConsoleW(hConsoleInput, lpBuffer, nNumberOfCharsToRead, lpNumberOfCharsRead, pInputControl);
  trace_print("ReadConsoleW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ReadConsoleInputW_Wrapper(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, unsigned long nLength, unsigned long* lpNumberOfEventsRead) {
  trace_print("Calling ReadConsoleInputW\n");
  BOOL result_ = ReadConsoleInputW(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);
  trace_print("ReadConsoleInputW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ReadFile_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToRead, unsigned long* lpNumberOfBytesRead, OVERLAPPED* lpOverlapped) {
  trace_print("Calling ReadFile\n");
  BOOL result_ = ReadFile(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);
  trace_print("ReadFile returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ReadFileEx_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToRead, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine) {
  trace_print("Calling ReadFileEx\n");
  BOOL result_ = ReadFileEx(hFile, lpBuffer, nNumberOfBytesToRead, lpOverlapped, lpCompletionRoutine);
  trace_print("ReadFileEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ReadFileScatter_Wrapper(HANDLE hFile, FILE_SEGMENT_ELEMENT* aSegmentArray, unsigned long nNumberOfBytesToRead, unsigned long* lpReserved, OVERLAPPED* lpOverlapped) {
  trace_print("Calling ReadFileScatter\n");
  BOOL result_ = ReadFileScatter(hFile, aSegmentArray, nNumberOfBytesToRead, lpReserved, lpOverlapped);
  trace_print("ReadFileScatter returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ReadProcessMemory_Wrapper(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, unsigned long long nSize, unsigned long long* lpNumberOfBytesRead) {
  trace_print("Calling ReadProcessMemory\n");
  BOOL result_ = ReadProcessMemory(hProcess, lpBaseAddress, lpBuffer, nSize, lpNumberOfBytesRead);
  trace_print("ReadProcessMemory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL RemoveDirectoryW_Wrapper(PCWSTR lpPathName) {
  trace_print("Calling RemoveDirectoryW\n");
  BOOL result_ = RemoveDirectoryW(lpPathName);
  trace_print("RemoveDirectoryW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL RemoveDllDirectory_Wrapper(void* cookie) {
  trace_print("Calling RemoveDllDirectory\n");
  BOOL result_ = RemoveDllDirectory(cookie);
  trace_print("RemoveDllDirectory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE ReOpenFile_Wrapper(HANDLE hOriginalFile, unsigned long dwDesiredAccess, DWORD dwShareMode, DWORD dwFlagsAndAttributes) {
  trace_print("Calling ReOpenFile\n");
  HANDLE result_ = ReOpenFile(hOriginalFile, dwDesiredAccess, dwShareMode, dwFlagsAndAttributes);
  trace_print("ReOpenFile returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ResetEvent_Wrapper(HANDLE hEvent) {
  trace_print("Calling ResetEvent\n");
  BOOL result_ = ResetEvent(hEvent);
  trace_print("ResetEvent returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ScrollConsoleScreenBufferW_Wrapper(HANDLE hConsoleOutput, SMALL_RECT* lpScrollRectangle, SMALL_RECT* lpClipRectangle, COORD dwDestinationOrigin, CHAR_INFO* lpFill) {
  trace_print("Calling ScrollConsoleScreenBufferW\n");
  BOOL result_ = ScrollConsoleScreenBufferW(hConsoleOutput, lpScrollRectangle, lpClipRectangle, dwDestinationOrigin, lpFill);
  trace_print("ScrollConsoleScreenBufferW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetCommBreak_Wrapper(HANDLE hFile) {
  trace_print("Calling SetCommBreak\n");
  BOOL result_ = SetCommBreak(hFile);
  trace_print("SetCommBreak returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetCommConfig_Wrapper(HANDLE hCommDev, COMMCONFIG* lpCC, unsigned long dwSize) {
  trace_print("Calling SetCommConfig\n");
  BOOL result_ = SetCommConfig(hCommDev, lpCC, dwSize);
  trace_print("SetCommConfig returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetCommMask_Wrapper(HANDLE hFile, DWORD dwEvtMask) {
  trace_print("Calling SetCommMask\n");
  BOOL result_ = SetCommMask(hFile, dwEvtMask);
  trace_print("SetCommMask returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetCommState_Wrapper(HANDLE hFile, DCB* lpDCB) {
  trace_print("Calling SetCommState\n");
  BOOL result_ = SetCommState(hFile, lpDCB);
  trace_print("SetCommState returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetCommTimeouts_Wrapper(HANDLE hFile, COMMTIMEOUTS* lpCommTimeouts) {
  trace_print("Calling SetCommTimeouts\n");
  BOOL result_ = SetCommTimeouts(hFile, lpCommTimeouts);
  trace_print("SetCommTimeouts returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetConsoleCtrlHandler_Wrapper(PHANDLER_ROUTINE handlerRoutine, BOOL add) {
  trace_print("Calling SetConsoleCtrlHandler\n");
  BOOL result_ = SetConsoleCtrlHandler(handlerRoutine, add);
  trace_print("SetConsoleCtrlHandler returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetConsoleCursorInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_CURSOR_INFO* lpConsoleCursorInfo) {
  trace_print("Calling SetConsoleCursorInfo\n");
  BOOL result_ = SetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);
  trace_print("SetConsoleCursorInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetConsoleCursorPosition_Wrapper(HANDLE hConsoleOutput, COORD dwCursorPosition) {
  trace_print("Calling SetConsoleCursorPosition\n");
  BOOL result_ = SetConsoleCursorPosition(hConsoleOutput, dwCursorPosition);
  trace_print("SetConsoleCursorPosition returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetConsoleDisplayMode_Wrapper(HANDLE hConsoleOutput, unsigned long dwFlags, COORD* lpNewScreenBufferDimensions) {
  trace_print("Calling SetConsoleDisplayMode\n");
  BOOL result_ = SetConsoleDisplayMode(hConsoleOutput, dwFlags, lpNewScreenBufferDimensions);
  trace_print("SetConsoleDisplayMode returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetConsoleMode_Wrapper(HANDLE hConsoleHandle, DWORD dwMode) {
  trace_print("Calling SetConsoleMode\n");
  BOOL result_ = SetConsoleMode(hConsoleHandle, dwMode);
  trace_print("SetConsoleMode returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetConsoleTextAttribute_Wrapper(HANDLE hConsoleOutput, USHORT wAttributes) {
  trace_print("Calling SetConsoleTextAttribute\n");
  BOOL result_ = SetConsoleTextAttribute(hConsoleOutput, wAttributes);
  trace_print("SetConsoleTextAttribute returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetConsoleWindowInfo_Wrapper(HANDLE hConsoleOutput, BOOL bAbsolute, SMALL_RECT* lpConsoleWindow) {
  trace_print("Calling SetConsoleWindowInfo\n");
  BOOL result_ = SetConsoleWindowInfo(hConsoleOutput, bAbsolute, lpConsoleWindow);
  trace_print("SetConsoleWindowInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetDefaultCommConfigW_Wrapper(PCWSTR lpszName, COMMCONFIG* lpCC, unsigned long dwSize) {
  trace_print("Calling SetDefaultCommConfigW\n");
  BOOL result_ = SetDefaultCommConfigW(lpszName, lpCC, dwSize);
  trace_print("SetDefaultCommConfigW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetDefaultDllDirectories_Wrapper(DWORD directoryFlags) {
  trace_print("Calling SetDefaultDllDirectories\n");
  BOOL result_ = SetDefaultDllDirectories(directoryFlags);
  trace_print("SetDefaultDllDirectories returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetEndOfFile_Wrapper(HANDLE hFile) {
  trace_print("Calling SetEndOfFile\n");
  BOOL result_ = SetEndOfFile(hFile);
  trace_print("SetEndOfFile returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpValue) {
  trace_print("Calling SetEnvironmentVariableW\n");
  BOOL result_ = SetEnvironmentVariableW(lpName, lpValue);
  trace_print("SetEnvironmentVariableW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetEvent_Wrapper(HANDLE hEvent) {
  trace_print("Calling SetEvent\n");
  BOOL result_ = SetEvent(hEvent);
  trace_print("SetEvent returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFileAttributesW_Wrapper(PCWSTR lpFileName, DWORD dwFileAttributes) {
  trace_print("Calling SetFileAttributesW\n");
  BOOL result_ = SetFileAttributesW(lpFileName, dwFileAttributes);
  trace_print("SetFileAttributesW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFileInformationByHandle_Wrapper(HANDLE hFile, LONG fileInformationClass, void* lpFileInformation, unsigned long dwBufferSize) {
  trace_print("Calling SetFileInformationByHandle\n");
  BOOL result_ = SetFileInformationByHandle(hFile, fileInformationClass, lpFileInformation, dwBufferSize);
  trace_print("SetFileInformationByHandle returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFileIoOverlappedRange_Wrapper(HANDLE fileHandle, unsigned char* overlappedRangeStart, unsigned long length) {
  trace_print("Calling SetFileIoOverlappedRange\n");
  BOOL result_ = SetFileIoOverlappedRange(fileHandle, overlappedRangeStart, length);
  trace_print("SetFileIoOverlappedRange returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long SetFilePointer_Wrapper(HANDLE hFile, int lDistanceToMove, int* lpDistanceToMoveHigh, DWORD dwMoveMethod) {
  trace_print("Calling SetFilePointer\n");
  unsigned long result_ = SetFilePointer(hFile, lDistanceToMove, lpDistanceToMoveHigh, dwMoveMethod);
  trace_print("SetFilePointer returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFilePointerEx_Wrapper(HANDLE hFile, LARGE_INTEGER liDistanceToMove, long long* lpNewFilePointer, DWORD dwMoveMethod) {
  trace_print("Calling SetFilePointerEx\n");
  BOOL result_ = SetFilePointerEx(hFile, liDistanceToMove, lpNewFilePointer, dwMoveMethod);
  trace_print("SetFilePointerEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFileShortNameW_Wrapper(HANDLE hFile, PCWSTR lpShortName) {
  trace_print("Calling SetFileShortNameW\n");
  BOOL result_ = SetFileShortNameW(hFile, lpShortName);
  trace_print("SetFileShortNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFileTime_Wrapper(HANDLE hFile, FILETIME* lpCreationTime, FILETIME* lpLastAccessTime, FILETIME* lpLastWriteTime) {
  trace_print("Calling SetFileTime\n");
  BOOL result_ = SetFileTime(hFile, lpCreationTime, lpLastAccessTime, lpLastWriteTime);
  trace_print("SetFileTime returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFileValidData_Wrapper(HANDLE hFile, long long validDataLength) {
  trace_print("Calling SetFileValidData\n");
  BOOL result_ = SetFileValidData(hFile, validDataLength);
  trace_print("SetFileValidData returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFirmwareEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpGuid, void* pValue, unsigned long nSize) {
  trace_print("Calling SetFirmwareEnvironmentVariableW\n");
  BOOL result_ = SetFirmwareEnvironmentVariableW(lpName, lpGuid, pValue, nSize);
  trace_print("SetFirmwareEnvironmentVariableW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetFirmwareEnvironmentVariableExW_Wrapper(PCWSTR lpName, PCWSTR lpGuid, void* pValue, unsigned long nSize, unsigned long dwAttributes) {
  trace_print("Calling SetFirmwareEnvironmentVariableExW\n");
  BOOL result_ = SetFirmwareEnvironmentVariableExW(lpName, lpGuid, pValue, nSize, dwAttributes);
  trace_print("SetFirmwareEnvironmentVariableExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetHandleInformation_Wrapper(HANDLE hObject, unsigned long dwMask, DWORD dwFlags) {
  trace_print("Calling SetHandleInformation\n");
  BOOL result_ = SetHandleInformation(hObject, dwMask, dwFlags);
  trace_print("SetHandleInformation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetInformationJobObject_Wrapper(HANDLE hJob, LONG jobObjectInformationClass, void* lpJobObjectInformation, unsigned long cbJobObjectInformationLength) {
  trace_print("Calling SetInformationJobObject\n");
  BOOL result_ = SetInformationJobObject(hJob, jobObjectInformationClass, lpJobObjectInformation, cbJobObjectInformationLength);
  trace_print("SetInformationJobObject returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long SetIoRateControlInformationJobObject_Wrapper(HANDLE hJob, JOBOBJECT_IO_RATE_CONTROL_INFORMATION* ioRateControlInfo) {
  trace_print("Calling SetIoRateControlInformationJobObject\n");
  unsigned long result_ = SetIoRateControlInformationJobObject(hJob, ioRateControlInfo);
  trace_print("SetIoRateControlInformationJobObject returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetNamedPipeHandleState_Wrapper(HANDLE hNamedPipe, DWORD* lpMode, unsigned long* lpMaxCollectionCount, unsigned long* lpCollectDataTimeout) {
  trace_print("Calling SetNamedPipeHandleState\n");
  BOOL result_ = SetNamedPipeHandleState(hNamedPipe, lpMode, lpMaxCollectionCount, lpCollectDataTimeout);
  trace_print("SetNamedPipeHandleState returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetProcessAffinityMask_Wrapper(HANDLE hProcess, unsigned long long dwProcessAffinityMask) {
  trace_print("Calling SetProcessAffinityMask\n");
  BOOL result_ = SetProcessAffinityMask(hProcess, dwProcessAffinityMask);
  trace_print("SetProcessAffinityMask returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetProcessPriorityBoost_Wrapper(HANDLE hProcess, BOOL bDisablePriorityBoost) {
  trace_print("Calling SetProcessPriorityBoost\n");
  BOOL result_ = SetProcessPriorityBoost(hProcess, bDisablePriorityBoost);
  trace_print("SetProcessPriorityBoost returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetProcessWorkingSetSize_Wrapper(HANDLE hProcess, unsigned long long dwMinimumWorkingSetSize, unsigned long long dwMaximumWorkingSetSize) {
  trace_print("Calling SetProcessWorkingSetSize\n");
  BOOL result_ = SetProcessWorkingSetSize(hProcess, dwMinimumWorkingSetSize, dwMaximumWorkingSetSize);
  trace_print("SetProcessWorkingSetSize returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetStdHandle_Wrapper(DWORD nStdHandle, HANDLE hHandle) {
  trace_print("Calling SetStdHandle\n");
  BOOL result_ = SetStdHandle(nStdHandle, hHandle);
  trace_print("SetStdHandle returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long SetThreadAffinityMask_Wrapper(HANDLE hThread, unsigned long long dwThreadAffinityMask) {
  trace_print("Calling SetThreadAffinityMask\n");
  unsigned long long result_ = SetThreadAffinityMask(hThread, dwThreadAffinityMask);
  trace_print("SetThreadAffinityMask returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetThreadErrorMode_Wrapper(DWORD dwNewMode, DWORD* lpOldMode) {
  trace_print("Calling SetThreadErrorMode\n");
  BOOL result_ = SetThreadErrorMode(dwNewMode, lpOldMode);
  trace_print("SetThreadErrorMode returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned short SetThreadUILanguage_Wrapper(unsigned short langId) {
  trace_print("Calling SetThreadUILanguage\n");
  unsigned short result_ = SetThreadUILanguage(langId);
  trace_print("SetThreadUILanguage returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetupComm_Wrapper(HANDLE hFile, unsigned long dwInQueue, unsigned long dwOutQueue) {
  trace_print("Calling SetupComm\n");
  BOOL result_ = SetupComm(hFile, dwInQueue, dwOutQueue);
  trace_print("SetupComm returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetVolumeLabelW_Wrapper(PCWSTR lpRootPathName, PCWSTR lpVolumeName) {
  trace_print("Calling SetVolumeLabelW\n");
  BOOL result_ = SetVolumeLabelW(lpRootPathName, lpVolumeName);
  trace_print("SetVolumeLabelW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long SizeofResource_Wrapper(HMODULE hModule, HRSRC hResInfo) {
  trace_print("Calling SizeofResource\n");
  unsigned long result_ = SizeofResource(hModule, hResInfo);
  trace_print("SizeofResource returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SystemTimeToFileTime_Wrapper(SYSTEMTIME* lpSystemTime, FILETIME* lpFileTime) {
  trace_print("Calling SystemTimeToFileTime\n");
  BOOL result_ = SystemTimeToFileTime(lpSystemTime, lpFileTime);
  trace_print("SystemTimeToFileTime returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL TerminateJobObject_Wrapper(HANDLE hJob, unsigned long uExitCode) {
  trace_print("Calling TerminateJobObject\n");
  BOOL result_ = TerminateJobObject(hJob, uExitCode);
  trace_print("TerminateJobObject returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL TerminateProcess_Wrapper(HANDLE hProcess, unsigned long uExitCode) {
  trace_print("Calling TerminateProcess\n");
  BOOL result_ = TerminateProcess(hProcess, uExitCode);
  trace_print("TerminateProcess returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL TerminateThread_Wrapper(HANDLE hThread, unsigned long dwExitCode) {
  trace_print("Calling TerminateThread\n");
  BOOL result_ = TerminateThread(hThread, dwExitCode);
  trace_print("TerminateThread returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL TransactNamedPipe_Wrapper(HANDLE hNamedPipe, void* lpInBuffer, unsigned long nInBufferSize, void* lpOutBuffer, unsigned long nOutBufferSize, unsigned long* lpBytesRead, OVERLAPPED* lpOverlapped) {
  trace_print("Calling TransactNamedPipe\n");
  BOOL result_ = TransactNamedPipe(hNamedPipe, lpInBuffer, nInBufferSize, lpOutBuffer, nOutBufferSize, lpBytesRead, lpOverlapped);
  trace_print("TransactNamedPipe returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL TransmitCommChar_Wrapper(HANDLE hFile, CHAR cChar) {
  trace_print("Calling TransmitCommChar\n");
  BOOL result_ = TransmitCommChar(hFile, cChar);
  trace_print("TransmitCommChar returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnlockFile_Wrapper(HANDLE hFile, unsigned long dwFileOffsetLow, unsigned long dwFileOffsetHigh, unsigned long nNumberOfBytesToUnlockLow, unsigned long nNumberOfBytesToUnlockHigh) {
  trace_print("Calling UnlockFile\n");
  BOOL result_ = UnlockFile(hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToUnlockLow, nNumberOfBytesToUnlockHigh);
  trace_print("UnlockFile returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnlockFileEx_Wrapper(HANDLE hFile, unsigned long dwReserved, unsigned long nNumberOfBytesToUnlockLow, unsigned long nNumberOfBytesToUnlockHigh, OVERLAPPED* lpOverlapped) {
  trace_print("Calling UnlockFileEx\n");
  BOOL result_ = UnlockFileEx(hFile, dwReserved, nNumberOfBytesToUnlockLow, nNumberOfBytesToUnlockHigh, lpOverlapped);
  trace_print("UnlockFileEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UpdateProcThreadAttribute_Wrapper(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long dwFlags, unsigned long long attribute, void* lpValue, unsigned long long cbSize, void* lpPreviousValue, unsigned long long* lpReturnSize) {
  trace_print("Calling UpdateProcThreadAttribute\n");
  BOOL result_ = UpdateProcThreadAttribute(lpAttributeList, dwFlags, attribute, lpValue, cbSize, lpPreviousValue, lpReturnSize);
  trace_print("UpdateProcThreadAttribute returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UpdateResourceW_Wrapper(HANDLE hUpdate, PCWSTR lpType, PCWSTR lpName, unsigned short wLanguage, void* lpData, unsigned long cb) {
  trace_print("Calling UpdateResourceW\n");
  BOOL result_ = UpdateResourceW(hUpdate, lpType, lpName, wLanguage, lpData, cb);
  trace_print("UpdateResourceW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL VerifyVersionInfoW_Wrapper(OSVERSIONINFOEXW* lpVersionInformation, DWORD dwTypeMask, unsigned long long dwlConditionMask) {
  trace_print("Calling VerifyVersionInfoW\n");
  BOOL result_ = VerifyVersionInfoW(lpVersionInformation, dwTypeMask, dwlConditionMask);
  trace_print("VerifyVersionInfoW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

void* VirtualAlloc_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD flAllocationType, DWORD flProtect) {
  trace_print("Calling VirtualAlloc\n");
  void* result_ = VirtualAlloc(lpAddress, dwSize, flAllocationType, flProtect);
  trace_print("VirtualAlloc returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

void* VirtualAllocEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD flAllocationType, DWORD flProtect) {
  trace_print("Calling VirtualAllocEx\n");
  void* result_ = VirtualAllocEx(hProcess, lpAddress, dwSize, flAllocationType, flProtect);
  trace_print("VirtualAllocEx returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL VirtualFree_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD dwFreeType) {
  trace_print("Calling VirtualFree\n");
  BOOL result_ = VirtualFree(lpAddress, dwSize, dwFreeType);
  trace_print("VirtualFree returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL VirtualFreeEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD dwFreeType) {
  trace_print("Calling VirtualFreeEx\n");
  BOOL result_ = VirtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType);
  trace_print("VirtualFreeEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL VirtualLock_Wrapper(void* lpAddress, unsigned long long dwSize) {
  trace_print("Calling VirtualLock\n");
  BOOL result_ = VirtualLock(lpAddress, dwSize);
  trace_print("VirtualLock returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL VirtualProtect_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD flNewProtect, DWORD* lpflOldProtect) {
  trace_print("Calling VirtualProtect\n");
  BOOL result_ = VirtualProtect(lpAddress, dwSize, flNewProtect, lpflOldProtect);
  trace_print("VirtualProtect returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL VirtualProtectEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD flNewProtect, DWORD* lpflOldProtect) {
  trace_print("Calling VirtualProtectEx\n");
  BOOL result_ = VirtualProtectEx(hProcess, lpAddress, dwSize, flNewProtect, lpflOldProtect);
  trace_print("VirtualProtectEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long VirtualQuery_Wrapper(void* lpAddress, MEMORY_BASIC_INFORMATION* lpBuffer, unsigned long long dwLength) {
  trace_print("Calling VirtualQuery\n");
  unsigned long long result_ = VirtualQuery(lpAddress, lpBuffer, dwLength);
  trace_print("VirtualQuery returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long VirtualQueryEx_Wrapper(HANDLE hProcess, void* lpAddress, MEMORY_BASIC_INFORMATION* lpBuffer, unsigned long long dwLength) {
  trace_print("Calling VirtualQueryEx\n");
  unsigned long long result_ = VirtualQueryEx(hProcess, lpAddress, lpBuffer, dwLength);
  trace_print("VirtualQueryEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL VirtualUnlock_Wrapper(void* lpAddress, unsigned long long dwSize) {
  trace_print("Calling VirtualUnlock\n");
  BOOL result_ = VirtualUnlock(lpAddress, dwSize);
  trace_print("VirtualUnlock returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL WaitCommEvent_Wrapper(HANDLE hFile, DWORD* lpEvtMask, OVERLAPPED* lpOverlapped) {
  trace_print("Calling WaitCommEvent\n");
  BOOL result_ = WaitCommEvent(hFile, lpEvtMask, lpOverlapped);
  trace_print("WaitCommEvent returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

DWORD WaitForSingleObject_Wrapper(HANDLE hHandle, unsigned long dwMilliseconds) {
  trace_print("Calling WaitForSingleObject\n");
  DWORD result_ = WaitForSingleObject(hHandle, dwMilliseconds);
  trace_print("WaitForSingleObject returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int WideCharToMultiByte_Wrapper(unsigned long codePage, unsigned long dwFlags, PCWSTR lpWideCharStr, int cchWideChar, PSTR lpMultiByteStr, int cbMultiByte, PCSTR lpDefaultChar, BOOL* lpUsedDefaultChar) {
  trace_print("Calling WideCharToMultiByte\n");
  int result_ = WideCharToMultiByte(codePage, dwFlags, lpWideCharStr, cchWideChar, lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar);
  trace_print("WideCharToMultiByte returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long Wow64SuspendThread_Wrapper(HANDLE hThread) {
  trace_print("Calling Wow64SuspendThread\n");
  unsigned long result_ = Wow64SuspendThread(hThread);
  trace_print("Wow64SuspendThread returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL WriteConsoleW_Wrapper(HANDLE hConsoleOutput, PCWSTR lpBuffer, unsigned long nNumberOfCharsToWrite, unsigned long* lpNumberOfCharsWritten, void* lpReserved) {
  trace_print("Calling WriteConsoleW\n");
  BOOL result_ = WriteConsoleW(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite, lpNumberOfCharsWritten, lpReserved);
  trace_print("WriteConsoleW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL WriteFile_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToWrite, unsigned long* lpNumberOfBytesWritten, OVERLAPPED* lpOverlapped) {
  trace_print("Calling WriteFile\n");
  BOOL result_ = WriteFile(hFile, lpBuffer, nNumberOfBytesToWrite, lpNumberOfBytesWritten, lpOverlapped);
  trace_print("WriteFile returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL WriteFileEx_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToWrite, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine) {
  trace_print("Calling WriteFileEx\n");
  BOOL result_ = WriteFileEx(hFile, lpBuffer, nNumberOfBytesToWrite, lpOverlapped, lpCompletionRoutine);
  trace_print("WriteFileEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL WriteFileGather_Wrapper(HANDLE hFile, FILE_SEGMENT_ELEMENT* aSegmentArray, unsigned long nNumberOfBytesToWrite, unsigned long* lpReserved, OVERLAPPED* lpOverlapped) {
  trace_print("Calling WriteFileGather\n");
  BOOL result_ = WriteFileGather(hFile, aSegmentArray, nNumberOfBytesToWrite, lpReserved, lpOverlapped);
  trace_print("WriteFileGather returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL WriteProcessMemory_Wrapper(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, unsigned long long nSize, unsigned long long* lpNumberOfBytesWritten) {
  trace_print("Calling WriteProcessMemory\n");
  BOOL result_ = WriteProcessMemory(hProcess, lpBaseAddress, lpBuffer, nSize, lpNumberOfBytesWritten);
  trace_print("WriteProcessMemory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

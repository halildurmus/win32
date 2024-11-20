// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"
#include <oobenotification.h>
#include <tlhelp32.h>

MYLIB_EXPORT Win32Result ActivateActCtx_Wrapper(HANDLE hActCtx, unsigned long long* lpCookie);

MYLIB_EXPORT Win32Result AddDllDirectory_Wrapper(PCWSTR newDirectory);

MYLIB_EXPORT Win32Result AllocConsole_Wrapper();

MYLIB_EXPORT Win32Result AssignProcessToJobObject_Wrapper(HANDLE hJob, HANDLE hProcess);

MYLIB_EXPORT Win32Result AttachConsole_Wrapper(unsigned long dwProcessId);

MYLIB_EXPORT Win32Result Beep_Wrapper(unsigned long dwFreq, unsigned long dwDuration);

MYLIB_EXPORT Win32Result BeginUpdateResourceW_Wrapper(PCWSTR pFileName, BOOL bDeleteExistingResources);

MYLIB_EXPORT Win32Result BuildCommDCBW_Wrapper(PCWSTR lpDef, DCB* lpDCB);

MYLIB_EXPORT Win32Result BuildCommDCBAndTimeoutsW_Wrapper(PCWSTR lpDef, DCB* lpDCB, COMMTIMEOUTS* lpCommTimeouts);

MYLIB_EXPORT Win32Result CancelIo_Wrapper(HANDLE hFile);

MYLIB_EXPORT Win32Result CancelIoEx_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result CancelSynchronousIo_Wrapper(HANDLE hThread);

MYLIB_EXPORT Win32Result CheckRemoteDebuggerPresent_Wrapper(HANDLE hProcess, BOOL* pbDebuggerPresent);

MYLIB_EXPORT Win32Result ClearCommBreak_Wrapper(HANDLE hFile);

MYLIB_EXPORT Win32Result ClearCommError_Wrapper(HANDLE hFile, DWORD* lpErrors, COMSTAT* lpStat);

MYLIB_EXPORT Win32Result CloseHandle_Wrapper(HANDLE hObject);

MYLIB_EXPORT Win32Result CommConfigDialogW_Wrapper(PCWSTR lpszName, HWND hWnd, COMMCONFIG* lpCC);

MYLIB_EXPORT Win32Result ConnectNamedPipe_Wrapper(HANDLE hNamedPipe, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result ContinueDebugEvent_Wrapper(unsigned long dwProcessId, unsigned long dwThreadId, NTSTATUS dwContinueStatus);

MYLIB_EXPORT Win32Result CopyFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, BOOL bFailIfExists);

MYLIB_EXPORT Win32Result CopyFileExW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, BOOL* pbCancel, DWORD dwCopyFlags);

MYLIB_EXPORT Win32Result CreateActCtxW_Wrapper(ACTCTXW* pActCtx);

MYLIB_EXPORT Win32Result CreateConsoleScreenBuffer_Wrapper(unsigned long dwDesiredAccess, unsigned long dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, unsigned long dwFlags, void* lpScreenBufferData);

MYLIB_EXPORT Win32Result CreateDirectoryW_Wrapper(PCWSTR lpPathName, SECURITY_ATTRIBUTES* lpSecurityAttributes);

MYLIB_EXPORT Win32Result CreateEventW_Wrapper(SECURITY_ATTRIBUTES* lpEventAttributes, BOOL bManualReset, BOOL bInitialState, PCWSTR lpName);

MYLIB_EXPORT Win32Result CreateEventExW_Wrapper(SECURITY_ATTRIBUTES* lpEventAttributes, PCWSTR lpName, DWORD dwFlags, unsigned long dwDesiredAccess);

MYLIB_EXPORT Win32Result CreateFileW_Wrapper(PCWSTR lpFileName, unsigned long dwDesiredAccess, DWORD dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile);

MYLIB_EXPORT Win32Result CreateFile2_Wrapper(PCWSTR lpFileName, unsigned long dwDesiredAccess, DWORD dwShareMode, DWORD dwCreationDisposition, CREATEFILE2_EXTENDED_PARAMETERS* pCreateExParams);

MYLIB_EXPORT Win32Result CreateIoCompletionPort_Wrapper(HANDLE fileHandle, HANDLE existingCompletionPort, unsigned long long completionKey, unsigned long numberOfConcurrentThreads);

MYLIB_EXPORT Win32Result CreateJobObjectW_Wrapper(SECURITY_ATTRIBUTES* lpJobAttributes, PCWSTR lpName);

MYLIB_EXPORT Win32Result CreatePipe_Wrapper(HANDLE* hReadPipe, HANDLE* hWritePipe, SECURITY_ATTRIBUTES* lpPipeAttributes, unsigned long nSize);

MYLIB_EXPORT Win32Result CreateProcessW_Wrapper(PCWSTR lpApplicationName, PWSTR lpCommandLine, SECURITY_ATTRIBUTES* lpProcessAttributes, SECURITY_ATTRIBUTES* lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags, void* lpEnvironment, PCWSTR lpCurrentDirectory, STARTUPINFOW* lpStartupInfo, PROCESS_INFORMATION* lpProcessInformation);

MYLIB_EXPORT Win32Result CreateRemoteThread_Wrapper(HANDLE hProcess, SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, unsigned long dwCreationFlags, unsigned long* lpThreadId);

MYLIB_EXPORT Win32Result CreateRemoteThreadEx_Wrapper(HANDLE hProcess, SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, unsigned long dwCreationFlags, LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long* lpThreadId);

MYLIB_EXPORT Win32Result CreateSymbolicLinkW_Wrapper(PCWSTR lpSymlinkFileName, PCWSTR lpTargetFileName, DWORD dwFlags);

MYLIB_EXPORT Win32Result CreateThread_Wrapper(SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, DWORD dwCreationFlags, unsigned long* lpThreadId);

MYLIB_EXPORT Win32Result DeactivateActCtx_Wrapper(unsigned long dwFlags, unsigned long long ulCookie);

MYLIB_EXPORT Win32Result DebugBreakProcess_Wrapper(HANDLE process);

MYLIB_EXPORT Win32Result DebugSetProcessKillOnExit_Wrapper(BOOL killOnExit);

MYLIB_EXPORT Win32Result DefineDosDeviceW_Wrapper(DWORD dwFlags, PCWSTR lpDeviceName, PCWSTR lpTargetPath);

MYLIB_EXPORT Win32Result DeleteFileW_Wrapper(PCWSTR lpFileName);

MYLIB_EXPORT Win32Result DeleteVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint);

MYLIB_EXPORT Win32Result DeviceIoControl_Wrapper(HANDLE hDevice, unsigned long dwIoControlCode, void* lpInBuffer, unsigned long nInBufferSize, void* lpOutBuffer, unsigned long nOutBufferSize, unsigned long* lpBytesReturned, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result DisableThreadLibraryCalls_Wrapper(HMODULE hLibModule);

MYLIB_EXPORT Win32Result DisconnectNamedPipe_Wrapper(HANDLE hNamedPipe);

MYLIB_EXPORT Win32Result DnsHostnameToComputerNameW_Wrapper(PCWSTR hostname, PWSTR computerName, unsigned long* nSize);

MYLIB_EXPORT Win32Result DosDateTimeToFileTime_Wrapper(unsigned short wFatDate, unsigned short wFatTime, FILETIME* lpFileTime);

MYLIB_EXPORT Win32Result DuplicateHandle_Wrapper(HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, HANDLE* lpTargetHandle, unsigned long dwDesiredAccess, BOOL bInheritHandle, DWORD dwOptions);

MYLIB_EXPORT Win32Result EndUpdateResourceW_Wrapper(HANDLE hUpdate, BOOL fDiscard);

MYLIB_EXPORT Win32Result EnumResourceTypesW_Wrapper(HMODULE hModule, ENUMRESTYPEPROCW lpEnumFunc, long long lParam);

MYLIB_EXPORT Win32Result EnumSystemFirmwareTables_Wrapper(DWORD firmwareTableProviderSignature, unsigned char* pFirmwareTableEnumBuffer, unsigned long bufferSize);

MYLIB_EXPORT Win32Result EscapeCommFunction_Wrapper(HANDLE hFile, DWORD dwFunc);

MYLIB_EXPORT Win32Result FileTimeToDosDateTime_Wrapper(FILETIME* lpFileTime, unsigned short* lpFatDate, unsigned short* lpFatTime);

MYLIB_EXPORT Win32Result FileTimeToSystemTime_Wrapper(FILETIME* lpFileTime, SYSTEMTIME* lpSystemTime);

MYLIB_EXPORT Win32Result FillConsoleOutputAttribute_Wrapper(HANDLE hConsoleOutput, unsigned short wAttribute, unsigned long nLength, COORD dwWriteCoord, unsigned long* lpNumberOfAttrsWritten);

MYLIB_EXPORT Win32Result FillConsoleOutputCharacterW_Wrapper(HANDLE hConsoleOutput, char cCharacter, unsigned long nLength, COORD dwWriteCoord, unsigned long* lpNumberOfCharsWritten);

MYLIB_EXPORT Win32Result FindClose_Wrapper(HANDLE hFindFile);

MYLIB_EXPORT Win32Result FindCloseChangeNotification_Wrapper(HANDLE hChangeHandle);

MYLIB_EXPORT Win32Result FindFirstChangeNotificationW_Wrapper(PCWSTR lpPathName, BOOL bWatchSubtree, DWORD dwNotifyFilter);

MYLIB_EXPORT Win32Result FindFirstFileW_Wrapper(PCWSTR lpFileName, WIN32_FIND_DATAW* lpFindFileData);

MYLIB_EXPORT Win32Result FindFirstFileExW_Wrapper(PCWSTR lpFileName, LONG fInfoLevelId, void* lpFindFileData, LONG fSearchOp, void* lpSearchFilter, DWORD dwAdditionalFlags);

MYLIB_EXPORT Win32Result FindFirstFileNameW_Wrapper(PCWSTR lpFileName, unsigned long dwFlags, unsigned long* stringLength, PWSTR linkName);

MYLIB_EXPORT Win32Result FindFirstStreamW_Wrapper(PCWSTR lpFileName, LONG infoLevel, void* lpFindStreamData, unsigned long dwFlags);

MYLIB_EXPORT Win32Result FindFirstVolumeW_Wrapper(PWSTR lpszVolumeName, unsigned long cchBufferLength);

MYLIB_EXPORT Win32Result FindNextChangeNotification_Wrapper(HANDLE hChangeHandle);

MYLIB_EXPORT Win32Result FindNextFileW_Wrapper(HANDLE hFindFile, WIN32_FIND_DATAW* lpFindFileData);

MYLIB_EXPORT Win32Result FindNextFileNameW_Wrapper(HANDLE hFindStream, unsigned long* stringLength, PWSTR linkName);

MYLIB_EXPORT Win32Result FindNextStreamW_Wrapper(HANDLE hFindStream, void* lpFindStreamData);

MYLIB_EXPORT Win32Result FindNextVolumeW_Wrapper(HANDLE hFindVolume, PWSTR lpszVolumeName, unsigned long cchBufferLength);

MYLIB_EXPORT Win32Result FindStringOrdinal_Wrapper(unsigned long dwFindStringOrdinalFlags, PCWSTR lpStringSource, int cchSource, PCWSTR lpStringValue, int cchValue, BOOL bIgnoreCase);

MYLIB_EXPORT Win32Result FindVolumeClose_Wrapper(HANDLE hFindVolume);

MYLIB_EXPORT Win32Result FlushConsoleInputBuffer_Wrapper(HANDLE hConsoleInput);

MYLIB_EXPORT Win32Result FlushFileBuffers_Wrapper(HANDLE hFile);

MYLIB_EXPORT Win32Result FormatMessageW_Wrapper(DWORD dwFlags, void* lpSource, unsigned long dwMessageId, unsigned long dwLanguageId, PWSTR lpBuffer, unsigned long nSize, signed char** arguments);

MYLIB_EXPORT Win32Result FreeConsole_Wrapper();

MYLIB_EXPORT Win32Result FreeLibrary_Wrapper(HMODULE hLibModule);

MYLIB_EXPORT Win32Result GetActiveProcessorCount_Wrapper(unsigned short groupNumber);

MYLIB_EXPORT Win32Result GetBinaryTypeW_Wrapper(PCWSTR lpApplicationName, unsigned long* lpBinaryType);

MYLIB_EXPORT Win32Result GetCommConfig_Wrapper(HANDLE hCommDev, COMMCONFIG* lpCC, unsigned long* lpdwSize);

MYLIB_EXPORT Win32Result GetCommMask_Wrapper(HANDLE hFile, DWORD* lpEvtMask);

MYLIB_EXPORT Win32Result GetCommModemStatus_Wrapper(HANDLE hFile, DWORD* lpModemStat);

MYLIB_EXPORT Win32Result GetCommProperties_Wrapper(HANDLE hFile, COMMPROP* lpCommProp);

MYLIB_EXPORT Win32Result GetCommState_Wrapper(HANDLE hFile, DCB* lpDCB);

MYLIB_EXPORT Win32Result GetCommTimeouts_Wrapper(HANDLE hFile, COMMTIMEOUTS* lpCommTimeouts);

MYLIB_EXPORT Win32Result GetCompressedFileSizeW_Wrapper(PCWSTR lpFileName, unsigned long* lpFileSizeHigh);

MYLIB_EXPORT Win32Result GetComputerNameW_Wrapper(PWSTR lpBuffer, unsigned long* nSize);

MYLIB_EXPORT Win32Result GetComputerNameExW_Wrapper(LONG nameType, PWSTR lpBuffer, unsigned long* nSize);

MYLIB_EXPORT Win32Result GetConsoleCP_Wrapper();

MYLIB_EXPORT Win32Result GetConsoleCursorInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_CURSOR_INFO* lpConsoleCursorInfo);

MYLIB_EXPORT Win32Result GetConsoleMode_Wrapper(HANDLE hConsoleHandle, DWORD* lpMode);

MYLIB_EXPORT Win32Result GetConsoleOutputCP_Wrapper();

MYLIB_EXPORT Win32Result GetConsoleScreenBufferInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_SCREEN_BUFFER_INFO* lpConsoleScreenBufferInfo);

MYLIB_EXPORT Win32Result GetConsoleSelectionInfo_Wrapper(CONSOLE_SELECTION_INFO* lpConsoleSelectionInfo);

MYLIB_EXPORT Win32Result GetConsoleTitleW_Wrapper(PWSTR lpConsoleTitle, unsigned long nSize);

MYLIB_EXPORT Win32Result GetCurrentActCtx_Wrapper(HANDLE* lphActCtx);

MYLIB_EXPORT Win32Result GetDefaultCommConfigW_Wrapper(PCWSTR lpszName, COMMCONFIG* lpCC, unsigned long* lpdwSize);

MYLIB_EXPORT Win32Result GetDiskFreeSpaceW_Wrapper(PCWSTR lpRootPathName, unsigned long* lpSectorsPerCluster, unsigned long* lpBytesPerSector, unsigned long* lpNumberOfFreeClusters, unsigned long* lpTotalNumberOfClusters);

MYLIB_EXPORT Win32Result GetDiskFreeSpaceExW_Wrapper(PCWSTR lpDirectoryName, unsigned long long* lpFreeBytesAvailableToCaller, unsigned long long* lpTotalNumberOfBytes, unsigned long long* lpTotalNumberOfFreeBytes);

MYLIB_EXPORT Win32Result GetDllDirectoryW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer);

MYLIB_EXPORT Win32Result GetEnvironmentVariableW_Wrapper(PCWSTR lpName, PWSTR lpBuffer, unsigned long nSize);

MYLIB_EXPORT Win32Result GetExitCodeProcess_Wrapper(HANDLE hProcess, unsigned long* lpExitCode);

MYLIB_EXPORT Win32Result GetFileAttributesW_Wrapper(PCWSTR lpFileName);

MYLIB_EXPORT Win32Result GetFileAttributesExW_Wrapper(PCWSTR lpFileName, LONG fInfoLevelId, void* lpFileInformation);

MYLIB_EXPORT Win32Result GetFileInformationByHandle_Wrapper(HANDLE hFile, BY_HANDLE_FILE_INFORMATION* lpFileInformation);

MYLIB_EXPORT Win32Result GetFileSize_Wrapper(HANDLE hFile, unsigned long* lpFileSizeHigh);

MYLIB_EXPORT Win32Result GetFileSizeEx_Wrapper(HANDLE hFile, long long* lpFileSize);

MYLIB_EXPORT Win32Result GetFileType_Wrapper(HANDLE hFile);

MYLIB_EXPORT Win32Result GetFinalPathNameByHandleW_Wrapper(HANDLE hFile, PWSTR lpszFilePath, unsigned long cchFilePath, DWORD dwFlags);

MYLIB_EXPORT Win32Result GetFullPathNameW_Wrapper(PCWSTR lpFileName, unsigned long nBufferLength, PWSTR lpBuffer, PWSTR* lpFilePart);

MYLIB_EXPORT Win32Result GetHandleInformation_Wrapper(HANDLE hObject, unsigned long* lpdwFlags);

MYLIB_EXPORT Win32Result GetLargestConsoleWindowSize_Wrapper(HANDLE hConsoleOutput);

MYLIB_EXPORT Win32Result GetLocaleInfoEx_Wrapper(PCWSTR lpLocaleName, unsigned long lCType, PWSTR lpLCData, int cchData);

MYLIB_EXPORT Win32Result GetLogicalDrives_Wrapper();

MYLIB_EXPORT Win32Result GetLogicalDriveStringsW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer);

MYLIB_EXPORT Win32Result GetLogicalProcessorInformation_Wrapper(SYSTEM_LOGICAL_PROCESSOR_INFORMATION* buffer, unsigned long* returnedLength);

MYLIB_EXPORT Win32Result GetLongPathNameW_Wrapper(PCWSTR lpszShortPath, PWSTR lpszLongPath, unsigned long cchBuffer);

MYLIB_EXPORT Win32Result GetMaximumProcessorCount_Wrapper(unsigned short groupNumber);

MYLIB_EXPORT Win32Result GetModuleFileNameW_Wrapper(HMODULE hModule, PWSTR lpFilename, unsigned long nSize);

MYLIB_EXPORT Win32Result GetModuleHandleW_Wrapper(PCWSTR lpModuleName);

MYLIB_EXPORT Win32Result GetModuleHandleExW_Wrapper(unsigned long dwFlags, PCWSTR lpModuleName, HMODULE* phModule);

MYLIB_EXPORT Win32Result GetNamedPipeClientProcessId_Wrapper(HANDLE pipe, unsigned long* clientProcessId);

MYLIB_EXPORT Win32Result GetNamedPipeClientSessionId_Wrapper(HANDLE pipe, unsigned long* clientSessionId);

MYLIB_EXPORT Win32Result GetNamedPipeInfo_Wrapper(HANDLE hNamedPipe, DWORD* lpFlags, unsigned long* lpOutBufferSize, unsigned long* lpInBufferSize, unsigned long* lpMaxInstances);

MYLIB_EXPORT Win32Result GetNumberOfConsoleInputEvents_Wrapper(HANDLE hConsoleInput, unsigned long* lpNumberOfEvents);

MYLIB_EXPORT Win32Result GetOverlappedResult_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped, unsigned long* lpNumberOfBytesTransferred, BOOL bWait);

MYLIB_EXPORT Win32Result GetOverlappedResultEx_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped, unsigned long* lpNumberOfBytesTransferred, unsigned long dwMilliseconds, BOOL bAlertable);

MYLIB_EXPORT Win32Result GetPhysicallyInstalledSystemMemory_Wrapper(unsigned long long* totalMemoryInKilobytes);

MYLIB_EXPORT Win32Result GetProcAddress_Wrapper(HMODULE hModule, PCSTR lpProcName);

MYLIB_EXPORT Win32Result GetProcessHeap_Wrapper();

MYLIB_EXPORT Win32Result GetProcessHeaps_Wrapper(unsigned long numberOfHeaps, HANDLE* processHeaps);

MYLIB_EXPORT Win32Result GetProcessId_Wrapper(HANDLE process);

MYLIB_EXPORT Win32Result GetProcessShutdownParameters_Wrapper(unsigned long* lpdwLevel, unsigned long* lpdwFlags);

MYLIB_EXPORT Win32Result GetProcessTimes_Wrapper(HANDLE hProcess, FILETIME* lpCreationTime, FILETIME* lpExitTime, FILETIME* lpKernelTime, FILETIME* lpUserTime);

MYLIB_EXPORT Win32Result GetProcessVersion_Wrapper(unsigned long processId);

MYLIB_EXPORT Win32Result GetProcessWorkingSetSize_Wrapper(HANDLE hProcess, unsigned long long* lpMinimumWorkingSetSize, unsigned long long* lpMaximumWorkingSetSize);

MYLIB_EXPORT Win32Result GetQueuedCompletionStatus_Wrapper(HANDLE completionPort, unsigned long* lpNumberOfBytesTransferred, unsigned long long* lpCompletionKey, OVERLAPPED** lpOverlapped, unsigned long dwMilliseconds);

MYLIB_EXPORT Win32Result GetQueuedCompletionStatusEx_Wrapper(HANDLE completionPort, OVERLAPPED_ENTRY* lpCompletionPortEntries, unsigned long ulCount, unsigned long* ulNumEntriesRemoved, unsigned long dwMilliseconds, BOOL fAlertable);

MYLIB_EXPORT Win32Result GetShortPathNameW_Wrapper(PCWSTR lpszLongPath, PWSTR lpszShortPath, unsigned long cchBuffer);

MYLIB_EXPORT Win32Result GetStdHandle_Wrapper(DWORD nStdHandle);

MYLIB_EXPORT Win32Result GetSystemDefaultLocaleName_Wrapper(PWSTR lpLocaleName, int cchLocaleName);

MYLIB_EXPORT Win32Result GetSystemDirectoryW_Wrapper(PWSTR lpBuffer, unsigned long uSize);

MYLIB_EXPORT Win32Result GetSystemPowerStatus_Wrapper(SYSTEM_POWER_STATUS* lpSystemPowerStatus);

MYLIB_EXPORT Win32Result GetSystemTimeAdjustment_Wrapper(unsigned long* lpTimeAdjustment, unsigned long* lpTimeIncrement, BOOL* lpTimeAdjustmentDisabled);

MYLIB_EXPORT Win32Result GetSystemTimes_Wrapper(FILETIME* lpIdleTime, FILETIME* lpKernelTime, FILETIME* lpUserTime);

MYLIB_EXPORT Win32Result GetTempFileNameW_Wrapper(PCWSTR lpPathName, PCWSTR lpPrefixString, unsigned long uUnique, PWSTR lpTempFileName);

MYLIB_EXPORT Win32Result GetTempPathW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer);

MYLIB_EXPORT Win32Result GetThreadId_Wrapper(HANDLE thread);

MYLIB_EXPORT Win32Result GetThreadTimes_Wrapper(HANDLE hThread, FILETIME* lpCreationTime, FILETIME* lpExitTime, FILETIME* lpKernelTime, FILETIME* lpUserTime);

MYLIB_EXPORT Win32Result GetUserDefaultLocaleName_Wrapper(PWSTR lpLocaleName, int cchLocaleName);

MYLIB_EXPORT Win32Result GetVolumeInformationW_Wrapper(PCWSTR lpRootPathName, PWSTR lpVolumeNameBuffer, unsigned long nVolumeNameSize, unsigned long* lpVolumeSerialNumber, unsigned long* lpMaximumComponentLength, unsigned long* lpFileSystemFlags, PWSTR lpFileSystemNameBuffer, unsigned long nFileSystemNameSize);

MYLIB_EXPORT Win32Result GetVolumeInformationByHandleW_Wrapper(HANDLE hFile, PWSTR lpVolumeNameBuffer, unsigned long nVolumeNameSize, unsigned long* lpVolumeSerialNumber, unsigned long* lpMaximumComponentLength, unsigned long* lpFileSystemFlags, PWSTR lpFileSystemNameBuffer, unsigned long nFileSystemNameSize);

MYLIB_EXPORT Win32Result GetVolumeNameForVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint, PWSTR lpszVolumeName, unsigned long cchBufferLength);

MYLIB_EXPORT Win32Result GetVolumePathNameW_Wrapper(PCWSTR lpszFileName, PWSTR lpszVolumePathName, unsigned long cchBufferLength);

MYLIB_EXPORT Win32Result GetVolumePathNamesForVolumeNameW_Wrapper(PCWSTR lpszVolumeName, PWSTR lpszVolumePathNames, unsigned long cchBufferLength, unsigned long* lpcchReturnLength);

MYLIB_EXPORT Win32Result GlobalAlloc_Wrapper(DWORD uFlags, unsigned long long dwBytes);

MYLIB_EXPORT Win32Result GlobalFree_Wrapper(HGLOBAL hMem);

MYLIB_EXPORT Win32Result GlobalLock_Wrapper(HGLOBAL hMem);

MYLIB_EXPORT Win32Result GlobalMemoryStatusEx_Wrapper(MEMORYSTATUSEX* lpBuffer);

MYLIB_EXPORT Win32Result GlobalSize_Wrapper(HGLOBAL hMem);

MYLIB_EXPORT Win32Result GlobalUnlock_Wrapper(HGLOBAL hMem);

MYLIB_EXPORT Win32Result HeapCompact_Wrapper(HANDLE hHeap, DWORD dwFlags);

MYLIB_EXPORT Win32Result HeapCreate_Wrapper(DWORD flOptions, unsigned long long dwInitialSize, unsigned long long dwMaximumSize);

MYLIB_EXPORT Win32Result HeapDestroy_Wrapper(HANDLE hHeap);

MYLIB_EXPORT Win32Result HeapFree_Wrapper(HANDLE hHeap, DWORD dwFlags, void* lpMem);

MYLIB_EXPORT Win32Result HeapLock_Wrapper(HANDLE hHeap);

MYLIB_EXPORT Win32Result HeapQueryInformation_Wrapper(HANDLE heapHandle, LONG heapInformationClass, void* heapInformation, unsigned long long heapInformationLength, unsigned long long* returnLength);

MYLIB_EXPORT Win32Result HeapSetInformation_Wrapper(HANDLE heapHandle, LONG heapInformationClass, void* heapInformation, unsigned long long heapInformationLength);

MYLIB_EXPORT Win32Result HeapUnlock_Wrapper(HANDLE hHeap);

MYLIB_EXPORT Win32Result HeapWalk_Wrapper(HANDLE hHeap, PROCESS_HEAP_ENTRY* lpEntry);

MYLIB_EXPORT Win32Result InitializeProcThreadAttributeList_Wrapper(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long dwAttributeCount, unsigned long dwFlags, unsigned long long* lpSize);

MYLIB_EXPORT Win32Result IsNativeVhdBoot_Wrapper(BOOL* nativeVhdBoot);

MYLIB_EXPORT Win32Result IsProcessInJob_Wrapper(HANDLE processHandle, HANDLE jobHandle, BOOL* result);

MYLIB_EXPORT Win32Result IsWow64Process2_Wrapper(HANDLE hProcess, USHORT* pProcessMachine, USHORT* pNativeMachine);

MYLIB_EXPORT Win32Result LoadLibraryW_Wrapper(PCWSTR lpLibFileName);

MYLIB_EXPORT Win32Result LoadLibraryExW_Wrapper(PCWSTR lpLibFileName, HANDLE hFile, DWORD dwFlags);

MYLIB_EXPORT Win32Result LoadResource_Wrapper(HMODULE hModule, HRSRC hResInfo);

MYLIB_EXPORT Win32Result LocalAlloc_Wrapper(DWORD uFlags, unsigned long long uBytes);

MYLIB_EXPORT Win32Result LocalFree_Wrapper(HLOCAL hMem);

MYLIB_EXPORT Win32Result LockFile_Wrapper(HANDLE hFile, unsigned long dwFileOffsetLow, unsigned long dwFileOffsetHigh, unsigned long nNumberOfBytesToLockLow, unsigned long nNumberOfBytesToLockHigh);

MYLIB_EXPORT Win32Result LockFileEx_Wrapper(HANDLE hFile, DWORD dwFlags, unsigned long dwReserved, unsigned long nNumberOfBytesToLockLow, unsigned long nNumberOfBytesToLockHigh, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result MoveFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName);

MYLIB_EXPORT Win32Result MoveFileExW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, DWORD dwFlags);

MYLIB_EXPORT Win32Result OpenEventW_Wrapper(DWORD dwDesiredAccess, BOOL bInheritHandle, PCWSTR lpName);

MYLIB_EXPORT Win32Result OpenJobObjectW_Wrapper(unsigned long dwDesiredAccess, BOOL bInheritHandle, PCWSTR lpName);

MYLIB_EXPORT Win32Result OpenProcess_Wrapper(DWORD dwDesiredAccess, BOOL bInheritHandle, unsigned long dwProcessId);

MYLIB_EXPORT Win32Result PeekConsoleInputW_Wrapper(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, unsigned long nLength, unsigned long* lpNumberOfEventsRead);

MYLIB_EXPORT Win32Result PeekNamedPipe_Wrapper(HANDLE hNamedPipe, void* lpBuffer, unsigned long nBufferSize, unsigned long* lpBytesRead, unsigned long* lpTotalBytesAvail, unsigned long* lpBytesLeftThisMessage);

MYLIB_EXPORT Win32Result PostQueuedCompletionStatus_Wrapper(HANDLE completionPort, unsigned long dwNumberOfBytesTransferred, unsigned long long dwCompletionKey, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result ProcessIdToSessionId_Wrapper(unsigned long dwProcessId, unsigned long* pSessionId);

MYLIB_EXPORT Win32Result PurgeComm_Wrapper(HANDLE hFile, DWORD dwFlags);

MYLIB_EXPORT Win32Result QueryDosDeviceW_Wrapper(PCWSTR lpDeviceName, PWSTR lpTargetPath, unsigned long ucchMax);

MYLIB_EXPORT Win32Result QueryFullProcessImageNameW_Wrapper(HANDLE hProcess, DWORD dwFlags, PWSTR lpExeName, unsigned long* lpdwSize);

MYLIB_EXPORT Win32Result QueryInformationJobObject_Wrapper(HANDLE hJob, LONG jobObjectInformationClass, void* lpJobObjectInformation, unsigned long cbJobObjectInformationLength, unsigned long* lpReturnLength);

MYLIB_EXPORT Win32Result QueryIoRateControlInformationJobObject_Wrapper(HANDLE hJob, PCWSTR volumeName, JOBOBJECT_IO_RATE_CONTROL_INFORMATION** infoBlocks, unsigned long* infoBlockCount);

MYLIB_EXPORT Win32Result QueryPerformanceCounter_Wrapper(long long* lpPerformanceCount);

MYLIB_EXPORT Win32Result QueryPerformanceFrequency_Wrapper(long long* lpFrequency);

MYLIB_EXPORT Win32Result ReadConsoleW_Wrapper(HANDLE hConsoleInput, void* lpBuffer, unsigned long nNumberOfCharsToRead, unsigned long* lpNumberOfCharsRead, CONSOLE_READCONSOLE_CONTROL* pInputControl);

MYLIB_EXPORT Win32Result ReadConsoleInputW_Wrapper(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, unsigned long nLength, unsigned long* lpNumberOfEventsRead);

MYLIB_EXPORT Win32Result ReadFile_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToRead, unsigned long* lpNumberOfBytesRead, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result ReadFileEx_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToRead, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);

MYLIB_EXPORT Win32Result ReadFileScatter_Wrapper(HANDLE hFile, FILE_SEGMENT_ELEMENT* aSegmentArray, unsigned long nNumberOfBytesToRead, unsigned long* lpReserved, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result ReadProcessMemory_Wrapper(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, unsigned long long nSize, unsigned long long* lpNumberOfBytesRead);

MYLIB_EXPORT Win32Result RemoveDirectoryW_Wrapper(PCWSTR lpPathName);

MYLIB_EXPORT Win32Result RemoveDllDirectory_Wrapper(void* cookie);

MYLIB_EXPORT Win32Result ReOpenFile_Wrapper(HANDLE hOriginalFile, unsigned long dwDesiredAccess, DWORD dwShareMode, DWORD dwFlagsAndAttributes);

MYLIB_EXPORT Win32Result ResetEvent_Wrapper(HANDLE hEvent);

MYLIB_EXPORT Win32Result ScrollConsoleScreenBufferW_Wrapper(HANDLE hConsoleOutput, SMALL_RECT* lpScrollRectangle, SMALL_RECT* lpClipRectangle, COORD dwDestinationOrigin, CHAR_INFO* lpFill);

MYLIB_EXPORT Win32Result SetCommBreak_Wrapper(HANDLE hFile);

MYLIB_EXPORT Win32Result SetCommConfig_Wrapper(HANDLE hCommDev, COMMCONFIG* lpCC, unsigned long dwSize);

MYLIB_EXPORT Win32Result SetCommMask_Wrapper(HANDLE hFile, DWORD dwEvtMask);

MYLIB_EXPORT Win32Result SetCommState_Wrapper(HANDLE hFile, DCB* lpDCB);

MYLIB_EXPORT Win32Result SetCommTimeouts_Wrapper(HANDLE hFile, COMMTIMEOUTS* lpCommTimeouts);

MYLIB_EXPORT Win32Result SetConsoleCtrlHandler_Wrapper(PHANDLER_ROUTINE handlerRoutine, BOOL add);

MYLIB_EXPORT Win32Result SetConsoleCursorInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_CURSOR_INFO* lpConsoleCursorInfo);

MYLIB_EXPORT Win32Result SetConsoleCursorPosition_Wrapper(HANDLE hConsoleOutput, COORD dwCursorPosition);

MYLIB_EXPORT Win32Result SetConsoleDisplayMode_Wrapper(HANDLE hConsoleOutput, unsigned long dwFlags, COORD* lpNewScreenBufferDimensions);

MYLIB_EXPORT Win32Result SetConsoleMode_Wrapper(HANDLE hConsoleHandle, DWORD dwMode);

MYLIB_EXPORT Win32Result SetConsoleTextAttribute_Wrapper(HANDLE hConsoleOutput, USHORT wAttributes);

MYLIB_EXPORT Win32Result SetConsoleWindowInfo_Wrapper(HANDLE hConsoleOutput, BOOL bAbsolute, SMALL_RECT* lpConsoleWindow);

MYLIB_EXPORT Win32Result SetDefaultCommConfigW_Wrapper(PCWSTR lpszName, COMMCONFIG* lpCC, unsigned long dwSize);

MYLIB_EXPORT Win32Result SetDefaultDllDirectories_Wrapper(DWORD directoryFlags);

MYLIB_EXPORT Win32Result SetEndOfFile_Wrapper(HANDLE hFile);

MYLIB_EXPORT Win32Result SetEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpValue);

MYLIB_EXPORT Win32Result SetEvent_Wrapper(HANDLE hEvent);

MYLIB_EXPORT Win32Result SetFileAttributesW_Wrapper(PCWSTR lpFileName, DWORD dwFileAttributes);

MYLIB_EXPORT Win32Result SetFileInformationByHandle_Wrapper(HANDLE hFile, LONG fileInformationClass, void* lpFileInformation, unsigned long dwBufferSize);

MYLIB_EXPORT Win32Result SetFileIoOverlappedRange_Wrapper(HANDLE fileHandle, unsigned char* overlappedRangeStart, unsigned long length);

MYLIB_EXPORT Win32Result SetFilePointer_Wrapper(HANDLE hFile, int lDistanceToMove, int* lpDistanceToMoveHigh, DWORD dwMoveMethod);

MYLIB_EXPORT Win32Result SetFilePointerEx_Wrapper(HANDLE hFile, LARGE_INTEGER liDistanceToMove, long long* lpNewFilePointer, DWORD dwMoveMethod);

MYLIB_EXPORT Win32Result SetFileShortNameW_Wrapper(HANDLE hFile, PCWSTR lpShortName);

MYLIB_EXPORT Win32Result SetFileTime_Wrapper(HANDLE hFile, FILETIME* lpCreationTime, FILETIME* lpLastAccessTime, FILETIME* lpLastWriteTime);

MYLIB_EXPORT Win32Result SetFileValidData_Wrapper(HANDLE hFile, long long validDataLength);

MYLIB_EXPORT Win32Result SetFirmwareEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpGuid, void* pValue, unsigned long nSize);

MYLIB_EXPORT Win32Result SetFirmwareEnvironmentVariableExW_Wrapper(PCWSTR lpName, PCWSTR lpGuid, void* pValue, unsigned long nSize, unsigned long dwAttributes);

MYLIB_EXPORT Win32Result SetHandleInformation_Wrapper(HANDLE hObject, unsigned long dwMask, DWORD dwFlags);

MYLIB_EXPORT Win32Result SetInformationJobObject_Wrapper(HANDLE hJob, LONG jobObjectInformationClass, void* lpJobObjectInformation, unsigned long cbJobObjectInformationLength);

MYLIB_EXPORT Win32Result SetIoRateControlInformationJobObject_Wrapper(HANDLE hJob, JOBOBJECT_IO_RATE_CONTROL_INFORMATION* ioRateControlInfo);

MYLIB_EXPORT Win32Result SetNamedPipeHandleState_Wrapper(HANDLE hNamedPipe, DWORD* lpMode, unsigned long* lpMaxCollectionCount, unsigned long* lpCollectDataTimeout);

MYLIB_EXPORT Win32Result SetProcessAffinityMask_Wrapper(HANDLE hProcess, unsigned long long dwProcessAffinityMask);

MYLIB_EXPORT Win32Result SetProcessPriorityBoost_Wrapper(HANDLE hProcess, BOOL bDisablePriorityBoost);

MYLIB_EXPORT Win32Result SetProcessWorkingSetSize_Wrapper(HANDLE hProcess, unsigned long long dwMinimumWorkingSetSize, unsigned long long dwMaximumWorkingSetSize);

MYLIB_EXPORT Win32Result SetStdHandle_Wrapper(DWORD nStdHandle, HANDLE hHandle);

MYLIB_EXPORT Win32Result SetThreadAffinityMask_Wrapper(HANDLE hThread, unsigned long long dwThreadAffinityMask);

MYLIB_EXPORT Win32Result SetThreadErrorMode_Wrapper(DWORD dwNewMode, DWORD* lpOldMode);

MYLIB_EXPORT Win32Result SetThreadUILanguage_Wrapper(unsigned short langId);

MYLIB_EXPORT Win32Result SetupComm_Wrapper(HANDLE hFile, unsigned long dwInQueue, unsigned long dwOutQueue);

MYLIB_EXPORT Win32Result SetVolumeLabelW_Wrapper(PCWSTR lpRootPathName, PCWSTR lpVolumeName);

MYLIB_EXPORT Win32Result SizeofResource_Wrapper(HMODULE hModule, HRSRC hResInfo);

MYLIB_EXPORT Win32Result SystemTimeToFileTime_Wrapper(SYSTEMTIME* lpSystemTime, FILETIME* lpFileTime);

MYLIB_EXPORT Win32Result TerminateJobObject_Wrapper(HANDLE hJob, unsigned long uExitCode);

MYLIB_EXPORT Win32Result TerminateProcess_Wrapper(HANDLE hProcess, unsigned long uExitCode);

MYLIB_EXPORT Win32Result TerminateThread_Wrapper(HANDLE hThread, unsigned long dwExitCode);

MYLIB_EXPORT Win32Result TransactNamedPipe_Wrapper(HANDLE hNamedPipe, void* lpInBuffer, unsigned long nInBufferSize, void* lpOutBuffer, unsigned long nOutBufferSize, unsigned long* lpBytesRead, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result TransmitCommChar_Wrapper(HANDLE hFile, CHAR cChar);

MYLIB_EXPORT Win32Result UnlockFile_Wrapper(HANDLE hFile, unsigned long dwFileOffsetLow, unsigned long dwFileOffsetHigh, unsigned long nNumberOfBytesToUnlockLow, unsigned long nNumberOfBytesToUnlockHigh);

MYLIB_EXPORT Win32Result UnlockFileEx_Wrapper(HANDLE hFile, unsigned long dwReserved, unsigned long nNumberOfBytesToUnlockLow, unsigned long nNumberOfBytesToUnlockHigh, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result UpdateProcThreadAttribute_Wrapper(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long dwFlags, unsigned long long attribute, void* lpValue, unsigned long long cbSize, void* lpPreviousValue, unsigned long long* lpReturnSize);

MYLIB_EXPORT Win32Result UpdateResourceW_Wrapper(HANDLE hUpdate, PCWSTR lpType, PCWSTR lpName, unsigned short wLanguage, void* lpData, unsigned long cb);

MYLIB_EXPORT Win32Result VerifyVersionInfoW_Wrapper(OSVERSIONINFOEXW* lpVersionInformation, DWORD dwTypeMask, unsigned long long dwlConditionMask);

MYLIB_EXPORT Win32Result VirtualAlloc_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD flAllocationType, DWORD flProtect);

MYLIB_EXPORT Win32Result VirtualAllocEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD flAllocationType, DWORD flProtect);

MYLIB_EXPORT Win32Result VirtualFree_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD dwFreeType);

MYLIB_EXPORT Win32Result VirtualFreeEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD dwFreeType);

MYLIB_EXPORT Win32Result VirtualLock_Wrapper(void* lpAddress, unsigned long long dwSize);

MYLIB_EXPORT Win32Result VirtualProtect_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD flNewProtect, DWORD* lpflOldProtect);

MYLIB_EXPORT Win32Result VirtualProtectEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD flNewProtect, DWORD* lpflOldProtect);

MYLIB_EXPORT Win32Result VirtualQuery_Wrapper(void* lpAddress, MEMORY_BASIC_INFORMATION* lpBuffer, unsigned long long dwLength);

MYLIB_EXPORT Win32Result VirtualQueryEx_Wrapper(HANDLE hProcess, void* lpAddress, MEMORY_BASIC_INFORMATION* lpBuffer, unsigned long long dwLength);

MYLIB_EXPORT Win32Result VirtualUnlock_Wrapper(void* lpAddress, unsigned long long dwSize);

MYLIB_EXPORT Win32Result WaitCommEvent_Wrapper(HANDLE hFile, DWORD* lpEvtMask, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result WaitForMultipleObjects_Wrapper(unsigned long nCount, HANDLE* lpHandles, BOOL bWaitAll, unsigned long dwMilliseconds);

MYLIB_EXPORT Win32Result WaitForSingleObject_Wrapper(HANDLE hHandle, unsigned long dwMilliseconds);

MYLIB_EXPORT Win32Result WideCharToMultiByte_Wrapper(unsigned long codePage, unsigned long dwFlags, PCWSTR lpWideCharStr, int cchWideChar, PSTR lpMultiByteStr, int cbMultiByte, PCSTR lpDefaultChar, BOOL* lpUsedDefaultChar);

MYLIB_EXPORT Win32Result Wow64SuspendThread_Wrapper(HANDLE hThread);

MYLIB_EXPORT Win32Result WriteConsoleW_Wrapper(HANDLE hConsoleOutput, PCWSTR lpBuffer, unsigned long nNumberOfCharsToWrite, unsigned long* lpNumberOfCharsWritten, void* lpReserved);

MYLIB_EXPORT Win32Result WriteFile_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToWrite, unsigned long* lpNumberOfBytesWritten, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result WriteFileEx_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToWrite, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);

MYLIB_EXPORT Win32Result WriteFileGather_Wrapper(HANDLE hFile, FILE_SEGMENT_ELEMENT* aSegmentArray, unsigned long nNumberOfBytesToWrite, unsigned long* lpReserved, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT Win32Result WriteProcessMemory_Wrapper(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, unsigned long long nSize, unsigned long long* lpNumberOfBytesWritten);

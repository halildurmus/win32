// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"

MYLIB_EXPORT BOOL ActivateActCtx_Wrapper(HANDLE hActCtx, unsigned long long* lpCookie);

MYLIB_EXPORT void* AddDllDirectory_Wrapper(PCWSTR newDirectory);

MYLIB_EXPORT BOOL AllocConsole_Wrapper();

MYLIB_EXPORT BOOL AssignProcessToJobObject_Wrapper(HANDLE hJob, HANDLE hProcess);

MYLIB_EXPORT BOOL AttachConsole_Wrapper(unsigned long dwProcessId);

MYLIB_EXPORT BOOL Beep_Wrapper(unsigned long dwFreq, unsigned long dwDuration);

MYLIB_EXPORT HANDLE BeginUpdateResourceW_Wrapper(PCWSTR pFileName, BOOL bDeleteExistingResources);

MYLIB_EXPORT BOOL BuildCommDCBW_Wrapper(PCWSTR lpDef, DCB* lpDCB);

MYLIB_EXPORT BOOL BuildCommDCBAndTimeoutsW_Wrapper(PCWSTR lpDef, DCB* lpDCB, COMMTIMEOUTS* lpCommTimeouts);

MYLIB_EXPORT BOOL CancelIo_Wrapper(HANDLE hFile);

MYLIB_EXPORT BOOL CancelIoEx_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL CancelSynchronousIo_Wrapper(HANDLE hThread);

MYLIB_EXPORT BOOL CheckRemoteDebuggerPresent_Wrapper(HANDLE hProcess, BOOL* pbDebuggerPresent);

MYLIB_EXPORT BOOL ClearCommBreak_Wrapper(HANDLE hFile);

MYLIB_EXPORT BOOL ClearCommError_Wrapper(HANDLE hFile, DWORD* lpErrors, COMSTAT* lpStat);

MYLIB_EXPORT BOOL CloseHandle_Wrapper(HANDLE hObject);

MYLIB_EXPORT BOOL CommConfigDialogW_Wrapper(PCWSTR lpszName, HWND hWnd, COMMCONFIG* lpCC);

MYLIB_EXPORT BOOL ConnectNamedPipe_Wrapper(HANDLE hNamedPipe, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL ContinueDebugEvent_Wrapper(unsigned long dwProcessId, unsigned long dwThreadId, NTSTATUS dwContinueStatus);

MYLIB_EXPORT BOOL CopyFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, BOOL bFailIfExists);

MYLIB_EXPORT BOOL CopyFileExW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, LPPROGRESS_ROUTINE lpProgressRoutine, void* lpData, BOOL* pbCancel, DWORD dwCopyFlags);

MYLIB_EXPORT HANDLE CreateActCtxW_Wrapper(ACTCTXW* pActCtx);

MYLIB_EXPORT HANDLE CreateConsoleScreenBuffer_Wrapper(unsigned long dwDesiredAccess, unsigned long dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, unsigned long dwFlags, void* lpScreenBufferData);

MYLIB_EXPORT BOOL CreateDirectoryW_Wrapper(PCWSTR lpPathName, SECURITY_ATTRIBUTES* lpSecurityAttributes);

MYLIB_EXPORT HANDLE CreateEventW_Wrapper(SECURITY_ATTRIBUTES* lpEventAttributes, BOOL bManualReset, BOOL bInitialState, PCWSTR lpName);

MYLIB_EXPORT HANDLE CreateEventExW_Wrapper(SECURITY_ATTRIBUTES* lpEventAttributes, PCWSTR lpName, DWORD dwFlags, unsigned long dwDesiredAccess);

MYLIB_EXPORT HANDLE CreateFileW_Wrapper(PCWSTR lpFileName, unsigned long dwDesiredAccess, DWORD dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile);

MYLIB_EXPORT HANDLE CreateFile2_Wrapper(PCWSTR lpFileName, unsigned long dwDesiredAccess, DWORD dwShareMode, DWORD dwCreationDisposition, CREATEFILE2_EXTENDED_PARAMETERS* pCreateExParams);

MYLIB_EXPORT HANDLE CreateIoCompletionPort_Wrapper(HANDLE fileHandle, HANDLE existingCompletionPort, unsigned long long completionKey, unsigned long numberOfConcurrentThreads);

MYLIB_EXPORT HANDLE CreateJobObjectW_Wrapper(SECURITY_ATTRIBUTES* lpJobAttributes, PCWSTR lpName);

MYLIB_EXPORT BOOL CreatePipe_Wrapper(HANDLE* hReadPipe, HANDLE* hWritePipe, SECURITY_ATTRIBUTES* lpPipeAttributes, unsigned long nSize);

MYLIB_EXPORT BOOL CreateProcessW_Wrapper(PCWSTR lpApplicationName, PWSTR lpCommandLine, SECURITY_ATTRIBUTES* lpProcessAttributes, SECURITY_ATTRIBUTES* lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags, void* lpEnvironment, PCWSTR lpCurrentDirectory, STARTUPINFOW* lpStartupInfo, PROCESS_INFORMATION* lpProcessInformation);

MYLIB_EXPORT HANDLE CreateRemoteThread_Wrapper(HANDLE hProcess, SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, unsigned long dwCreationFlags, unsigned long* lpThreadId);

MYLIB_EXPORT HANDLE CreateRemoteThreadEx_Wrapper(HANDLE hProcess, SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, unsigned long dwCreationFlags, LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long* lpThreadId);

MYLIB_EXPORT BOOLEAN CreateSymbolicLinkW_Wrapper(PCWSTR lpSymlinkFileName, PCWSTR lpTargetFileName, DWORD dwFlags);

MYLIB_EXPORT HANDLE CreateThread_Wrapper(SECURITY_ATTRIBUTES* lpThreadAttributes, unsigned long long dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, void* lpParameter, DWORD dwCreationFlags, unsigned long* lpThreadId);

MYLIB_EXPORT BOOL DeactivateActCtx_Wrapper(unsigned long dwFlags, unsigned long long ulCookie);

MYLIB_EXPORT BOOL DebugBreakProcess_Wrapper(HANDLE process);

MYLIB_EXPORT BOOL DebugSetProcessKillOnExit_Wrapper(BOOL killOnExit);

MYLIB_EXPORT BOOL DefineDosDeviceW_Wrapper(DWORD dwFlags, PCWSTR lpDeviceName, PCWSTR lpTargetPath);

MYLIB_EXPORT BOOL DeleteFileW_Wrapper(PCWSTR lpFileName);

MYLIB_EXPORT BOOL DeleteVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint);

MYLIB_EXPORT BOOL DeviceIoControl_Wrapper(HANDLE hDevice, unsigned long dwIoControlCode, void* lpInBuffer, unsigned long nInBufferSize, void* lpOutBuffer, unsigned long nOutBufferSize, unsigned long* lpBytesReturned, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL DisableThreadLibraryCalls_Wrapper(HMODULE hLibModule);

MYLIB_EXPORT BOOL DisconnectNamedPipe_Wrapper(HANDLE hNamedPipe);

MYLIB_EXPORT BOOL DnsHostnameToComputerNameW_Wrapper(PCWSTR hostname, PWSTR computerName, unsigned long* nSize);

MYLIB_EXPORT BOOL DosDateTimeToFileTime_Wrapper(unsigned short wFatDate, unsigned short wFatTime, FILETIME* lpFileTime);

MYLIB_EXPORT BOOL DuplicateHandle_Wrapper(HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, HANDLE* lpTargetHandle, unsigned long dwDesiredAccess, BOOL bInheritHandle, DWORD dwOptions);

MYLIB_EXPORT BOOL EndUpdateResourceW_Wrapper(HANDLE hUpdate, BOOL fDiscard);

MYLIB_EXPORT BOOL EnumResourceTypesW_Wrapper(HMODULE hModule, ENUMRESTYPEPROCW lpEnumFunc, long long lParam);

MYLIB_EXPORT unsigned long EnumSystemFirmwareTables_Wrapper(DWORD firmwareTableProviderSignature, unsigned char* pFirmwareTableEnumBuffer, unsigned long bufferSize);

MYLIB_EXPORT BOOL EscapeCommFunction_Wrapper(HANDLE hFile, DWORD dwFunc);

MYLIB_EXPORT BOOL FileTimeToDosDateTime_Wrapper(FILETIME* lpFileTime, unsigned short* lpFatDate, unsigned short* lpFatTime);

MYLIB_EXPORT BOOL FileTimeToSystemTime_Wrapper(FILETIME* lpFileTime, SYSTEMTIME* lpSystemTime);

MYLIB_EXPORT BOOL FillConsoleOutputAttribute_Wrapper(HANDLE hConsoleOutput, unsigned short wAttribute, unsigned long nLength, COORD dwWriteCoord, unsigned long* lpNumberOfAttrsWritten);

MYLIB_EXPORT BOOL FillConsoleOutputCharacterW_Wrapper(HANDLE hConsoleOutput, char cCharacter, unsigned long nLength, COORD dwWriteCoord, unsigned long* lpNumberOfCharsWritten);

MYLIB_EXPORT BOOL FindClose_Wrapper(HANDLE hFindFile);

MYLIB_EXPORT BOOL FindCloseChangeNotification_Wrapper(HANDLE hChangeHandle);

MYLIB_EXPORT HANDLE FindFirstChangeNotificationW_Wrapper(PCWSTR lpPathName, BOOL bWatchSubtree, DWORD dwNotifyFilter);

MYLIB_EXPORT HANDLE FindFirstFileW_Wrapper(PCWSTR lpFileName, WIN32_FIND_DATAW* lpFindFileData);

MYLIB_EXPORT HANDLE FindFirstFileExW_Wrapper(PCWSTR lpFileName, LONG fInfoLevelId, void* lpFindFileData, LONG fSearchOp, void* lpSearchFilter, DWORD dwAdditionalFlags);

MYLIB_EXPORT HANDLE FindFirstFileNameW_Wrapper(PCWSTR lpFileName, unsigned long dwFlags, unsigned long* stringLength, PWSTR linkName);

MYLIB_EXPORT HANDLE FindFirstStreamW_Wrapper(PCWSTR lpFileName, LONG infoLevel, void* lpFindStreamData, unsigned long dwFlags);

MYLIB_EXPORT HANDLE FindFirstVolumeW_Wrapper(PWSTR lpszVolumeName, unsigned long cchBufferLength);

MYLIB_EXPORT BOOL FindNextChangeNotification_Wrapper(HANDLE hChangeHandle);

MYLIB_EXPORT BOOL FindNextFileW_Wrapper(HANDLE hFindFile, WIN32_FIND_DATAW* lpFindFileData);

MYLIB_EXPORT BOOL FindNextFileNameW_Wrapper(HANDLE hFindStream, unsigned long* stringLength, PWSTR linkName);

MYLIB_EXPORT BOOL FindNextStreamW_Wrapper(HANDLE hFindStream, void* lpFindStreamData);

MYLIB_EXPORT BOOL FindNextVolumeW_Wrapper(HANDLE hFindVolume, PWSTR lpszVolumeName, unsigned long cchBufferLength);

MYLIB_EXPORT int FindStringOrdinal_Wrapper(unsigned long dwFindStringOrdinalFlags, PCWSTR lpStringSource, int cchSource, PCWSTR lpStringValue, int cchValue, BOOL bIgnoreCase);

MYLIB_EXPORT BOOL FindVolumeClose_Wrapper(HANDLE hFindVolume);

MYLIB_EXPORT BOOL FlushConsoleInputBuffer_Wrapper(HANDLE hConsoleInput);

MYLIB_EXPORT BOOL FlushFileBuffers_Wrapper(HANDLE hFile);

MYLIB_EXPORT unsigned long FormatMessageW_Wrapper(DWORD dwFlags, void* lpSource, unsigned long dwMessageId, unsigned long dwLanguageId, PWSTR lpBuffer, unsigned long nSize, signed char** arguments);

MYLIB_EXPORT BOOL FreeConsole_Wrapper();

MYLIB_EXPORT BOOL FreeLibrary_Wrapper(HMODULE hLibModule);

MYLIB_EXPORT unsigned long GetActiveProcessorCount_Wrapper(unsigned short groupNumber);

MYLIB_EXPORT BOOL GetBinaryTypeW_Wrapper(PCWSTR lpApplicationName, unsigned long* lpBinaryType);

MYLIB_EXPORT BOOL GetCommConfig_Wrapper(HANDLE hCommDev, COMMCONFIG* lpCC, unsigned long* lpdwSize);

MYLIB_EXPORT BOOL GetCommMask_Wrapper(HANDLE hFile, DWORD* lpEvtMask);

MYLIB_EXPORT BOOL GetCommModemStatus_Wrapper(HANDLE hFile, DWORD* lpModemStat);

MYLIB_EXPORT BOOL GetCommProperties_Wrapper(HANDLE hFile, COMMPROP* lpCommProp);

MYLIB_EXPORT BOOL GetCommState_Wrapper(HANDLE hFile, DCB* lpDCB);

MYLIB_EXPORT BOOL GetCommTimeouts_Wrapper(HANDLE hFile, COMMTIMEOUTS* lpCommTimeouts);

MYLIB_EXPORT unsigned long GetCompressedFileSizeW_Wrapper(PCWSTR lpFileName, unsigned long* lpFileSizeHigh);

MYLIB_EXPORT BOOL GetComputerNameW_Wrapper(PWSTR lpBuffer, unsigned long* nSize);

MYLIB_EXPORT BOOL GetComputerNameExW_Wrapper(LONG nameType, PWSTR lpBuffer, unsigned long* nSize);

MYLIB_EXPORT unsigned long GetConsoleCP_Wrapper();

MYLIB_EXPORT BOOL GetConsoleCursorInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_CURSOR_INFO* lpConsoleCursorInfo);

MYLIB_EXPORT BOOL GetConsoleMode_Wrapper(HANDLE hConsoleHandle, DWORD* lpMode);

MYLIB_EXPORT unsigned long GetConsoleOutputCP_Wrapper();

MYLIB_EXPORT BOOL GetConsoleScreenBufferInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_SCREEN_BUFFER_INFO* lpConsoleScreenBufferInfo);

MYLIB_EXPORT BOOL GetConsoleSelectionInfo_Wrapper(CONSOLE_SELECTION_INFO* lpConsoleSelectionInfo);

MYLIB_EXPORT unsigned long GetConsoleTitleW_Wrapper(PWSTR lpConsoleTitle, unsigned long nSize);

MYLIB_EXPORT BOOL GetCurrentActCtx_Wrapper(HANDLE* lphActCtx);

MYLIB_EXPORT BOOL GetDefaultCommConfigW_Wrapper(PCWSTR lpszName, COMMCONFIG* lpCC, unsigned long* lpdwSize);

MYLIB_EXPORT BOOL GetDiskFreeSpaceW_Wrapper(PCWSTR lpRootPathName, unsigned long* lpSectorsPerCluster, unsigned long* lpBytesPerSector, unsigned long* lpNumberOfFreeClusters, unsigned long* lpTotalNumberOfClusters);

MYLIB_EXPORT BOOL GetDiskFreeSpaceExW_Wrapper(PCWSTR lpDirectoryName, unsigned long long* lpFreeBytesAvailableToCaller, unsigned long long* lpTotalNumberOfBytes, unsigned long long* lpTotalNumberOfFreeBytes);

MYLIB_EXPORT unsigned long GetDllDirectoryW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer);

MYLIB_EXPORT unsigned long GetEnvironmentVariableW_Wrapper(PCWSTR lpName, PWSTR lpBuffer, unsigned long nSize);

MYLIB_EXPORT BOOL GetExitCodeProcess_Wrapper(HANDLE hProcess, unsigned long* lpExitCode);

MYLIB_EXPORT unsigned long GetFileAttributesW_Wrapper(PCWSTR lpFileName);

MYLIB_EXPORT BOOL GetFileAttributesExW_Wrapper(PCWSTR lpFileName, LONG fInfoLevelId, void* lpFileInformation);

MYLIB_EXPORT BOOL GetFileInformationByHandle_Wrapper(HANDLE hFile, BY_HANDLE_FILE_INFORMATION* lpFileInformation);

MYLIB_EXPORT unsigned long GetFileSize_Wrapper(HANDLE hFile, unsigned long* lpFileSizeHigh);

MYLIB_EXPORT BOOL GetFileSizeEx_Wrapper(HANDLE hFile, long long* lpFileSize);

MYLIB_EXPORT DWORD GetFileType_Wrapper(HANDLE hFile);

MYLIB_EXPORT unsigned long GetFinalPathNameByHandleW_Wrapper(HANDLE hFile, PWSTR lpszFilePath, unsigned long cchFilePath, DWORD dwFlags);

MYLIB_EXPORT unsigned long GetFullPathNameW_Wrapper(PCWSTR lpFileName, unsigned long nBufferLength, PWSTR lpBuffer, PWSTR* lpFilePart);

MYLIB_EXPORT BOOL GetHandleInformation_Wrapper(HANDLE hObject, unsigned long* lpdwFlags);

MYLIB_EXPORT COORD GetLargestConsoleWindowSize_Wrapper(HANDLE hConsoleOutput);

MYLIB_EXPORT int GetLocaleInfoEx_Wrapper(PCWSTR lpLocaleName, unsigned long lCType, PWSTR lpLCData, int cchData);

MYLIB_EXPORT unsigned long GetLogicalDrives_Wrapper();

MYLIB_EXPORT unsigned long GetLogicalDriveStringsW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer);

MYLIB_EXPORT BOOL GetLogicalProcessorInformation_Wrapper(SYSTEM_LOGICAL_PROCESSOR_INFORMATION* buffer, unsigned long* returnedLength);

MYLIB_EXPORT unsigned long GetLongPathNameW_Wrapper(PCWSTR lpszShortPath, PWSTR lpszLongPath, unsigned long cchBuffer);

MYLIB_EXPORT unsigned long GetMaximumProcessorCount_Wrapper(unsigned short groupNumber);

MYLIB_EXPORT unsigned long GetModuleFileNameW_Wrapper(HMODULE hModule, PWSTR lpFilename, unsigned long nSize);

MYLIB_EXPORT HMODULE GetModuleHandleW_Wrapper(PCWSTR lpModuleName);

MYLIB_EXPORT BOOL GetModuleHandleExW_Wrapper(unsigned long dwFlags, PCWSTR lpModuleName, HMODULE* phModule);

MYLIB_EXPORT BOOL GetNamedPipeClientProcessId_Wrapper(HANDLE pipe, unsigned long* clientProcessId);

MYLIB_EXPORT BOOL GetNamedPipeClientSessionId_Wrapper(HANDLE pipe, unsigned long* clientSessionId);

MYLIB_EXPORT BOOL GetNamedPipeInfo_Wrapper(HANDLE hNamedPipe, DWORD* lpFlags, unsigned long* lpOutBufferSize, unsigned long* lpInBufferSize, unsigned long* lpMaxInstances);

MYLIB_EXPORT BOOL GetNumberOfConsoleInputEvents_Wrapper(HANDLE hConsoleInput, unsigned long* lpNumberOfEvents);

MYLIB_EXPORT BOOL GetOverlappedResult_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped, unsigned long* lpNumberOfBytesTransferred, BOOL bWait);

MYLIB_EXPORT BOOL GetOverlappedResultEx_Wrapper(HANDLE hFile, OVERLAPPED* lpOverlapped, unsigned long* lpNumberOfBytesTransferred, unsigned long dwMilliseconds, BOOL bAlertable);

MYLIB_EXPORT BOOL GetPhysicallyInstalledSystemMemory_Wrapper(unsigned long long* totalMemoryInKilobytes);

MYLIB_EXPORT FARPROC GetProcAddress_Wrapper(HMODULE hModule, PCSTR lpProcName);

MYLIB_EXPORT HANDLE GetProcessHeap_Wrapper();

MYLIB_EXPORT unsigned long GetProcessHeaps_Wrapper(unsigned long numberOfHeaps, HANDLE* processHeaps);

MYLIB_EXPORT unsigned long GetProcessId_Wrapper(HANDLE process);

MYLIB_EXPORT BOOL GetProcessShutdownParameters_Wrapper(unsigned long* lpdwLevel, unsigned long* lpdwFlags);

MYLIB_EXPORT BOOL GetProcessTimes_Wrapper(HANDLE hProcess, FILETIME* lpCreationTime, FILETIME* lpExitTime, FILETIME* lpKernelTime, FILETIME* lpUserTime);

MYLIB_EXPORT unsigned long GetProcessVersion_Wrapper(unsigned long processId);

MYLIB_EXPORT BOOL GetProcessWorkingSetSize_Wrapper(HANDLE hProcess, unsigned long long* lpMinimumWorkingSetSize, unsigned long long* lpMaximumWorkingSetSize);

MYLIB_EXPORT BOOL GetQueuedCompletionStatus_Wrapper(HANDLE completionPort, unsigned long* lpNumberOfBytesTransferred, unsigned long long* lpCompletionKey, OVERLAPPED** lpOverlapped, unsigned long dwMilliseconds);

MYLIB_EXPORT BOOL GetQueuedCompletionStatusEx_Wrapper(HANDLE completionPort, OVERLAPPED_ENTRY* lpCompletionPortEntries, unsigned long ulCount, unsigned long* ulNumEntriesRemoved, unsigned long dwMilliseconds, BOOL fAlertable);

MYLIB_EXPORT unsigned long GetShortPathNameW_Wrapper(PCWSTR lpszLongPath, PWSTR lpszShortPath, unsigned long cchBuffer);

MYLIB_EXPORT HANDLE GetStdHandle_Wrapper(DWORD nStdHandle);

MYLIB_EXPORT int GetSystemDefaultLocaleName_Wrapper(PWSTR lpLocaleName, int cchLocaleName);

MYLIB_EXPORT unsigned long GetSystemDirectoryW_Wrapper(PWSTR lpBuffer, unsigned long uSize);

MYLIB_EXPORT BOOL GetSystemPowerStatus_Wrapper(SYSTEM_POWER_STATUS* lpSystemPowerStatus);

MYLIB_EXPORT BOOL GetSystemTimeAdjustment_Wrapper(unsigned long* lpTimeAdjustment, unsigned long* lpTimeIncrement, BOOL* lpTimeAdjustmentDisabled);

MYLIB_EXPORT BOOL GetSystemTimes_Wrapper(FILETIME* lpIdleTime, FILETIME* lpKernelTime, FILETIME* lpUserTime);

MYLIB_EXPORT unsigned long GetTempFileNameW_Wrapper(PCWSTR lpPathName, PCWSTR lpPrefixString, unsigned long uUnique, PWSTR lpTempFileName);

MYLIB_EXPORT unsigned long GetTempPathW_Wrapper(unsigned long nBufferLength, PWSTR lpBuffer);

MYLIB_EXPORT unsigned long GetThreadId_Wrapper(HANDLE thread);

MYLIB_EXPORT BOOL GetThreadTimes_Wrapper(HANDLE hThread, FILETIME* lpCreationTime, FILETIME* lpExitTime, FILETIME* lpKernelTime, FILETIME* lpUserTime);

MYLIB_EXPORT int GetUserDefaultLocaleName_Wrapper(PWSTR lpLocaleName, int cchLocaleName);

MYLIB_EXPORT BOOL GetVolumeInformationW_Wrapper(PCWSTR lpRootPathName, PWSTR lpVolumeNameBuffer, unsigned long nVolumeNameSize, unsigned long* lpVolumeSerialNumber, unsigned long* lpMaximumComponentLength, unsigned long* lpFileSystemFlags, PWSTR lpFileSystemNameBuffer, unsigned long nFileSystemNameSize);

MYLIB_EXPORT BOOL GetVolumeInformationByHandleW_Wrapper(HANDLE hFile, PWSTR lpVolumeNameBuffer, unsigned long nVolumeNameSize, unsigned long* lpVolumeSerialNumber, unsigned long* lpMaximumComponentLength, unsigned long* lpFileSystemFlags, PWSTR lpFileSystemNameBuffer, unsigned long nFileSystemNameSize);

MYLIB_EXPORT BOOL GetVolumeNameForVolumeMountPointW_Wrapper(PCWSTR lpszVolumeMountPoint, PWSTR lpszVolumeName, unsigned long cchBufferLength);

MYLIB_EXPORT BOOL GetVolumePathNameW_Wrapper(PCWSTR lpszFileName, PWSTR lpszVolumePathName, unsigned long cchBufferLength);

MYLIB_EXPORT BOOL GetVolumePathNamesForVolumeNameW_Wrapper(PCWSTR lpszVolumeName, PWSTR lpszVolumePathNames, unsigned long cchBufferLength, unsigned long* lpcchReturnLength);

MYLIB_EXPORT HGLOBAL GlobalAlloc_Wrapper(DWORD uFlags, unsigned long long dwBytes);

MYLIB_EXPORT HGLOBAL GlobalFree_Wrapper(HGLOBAL hMem);

MYLIB_EXPORT void* GlobalLock_Wrapper(HGLOBAL hMem);

MYLIB_EXPORT BOOL GlobalMemoryStatusEx_Wrapper(MEMORYSTATUSEX* lpBuffer);

MYLIB_EXPORT unsigned long long GlobalSize_Wrapper(HGLOBAL hMem);

MYLIB_EXPORT BOOL GlobalUnlock_Wrapper(HGLOBAL hMem);

MYLIB_EXPORT unsigned long long HeapCompact_Wrapper(HANDLE hHeap, DWORD dwFlags);

MYLIB_EXPORT HANDLE HeapCreate_Wrapper(DWORD flOptions, unsigned long long dwInitialSize, unsigned long long dwMaximumSize);

MYLIB_EXPORT BOOL HeapDestroy_Wrapper(HANDLE hHeap);

MYLIB_EXPORT BOOL HeapFree_Wrapper(HANDLE hHeap, DWORD dwFlags, void* lpMem);

MYLIB_EXPORT BOOL HeapLock_Wrapper(HANDLE hHeap);

MYLIB_EXPORT BOOL HeapQueryInformation_Wrapper(HANDLE heapHandle, LONG heapInformationClass, void* heapInformation, unsigned long long heapInformationLength, unsigned long long* returnLength);

MYLIB_EXPORT BOOL HeapSetInformation_Wrapper(HANDLE heapHandle, LONG heapInformationClass, void* heapInformation, unsigned long long heapInformationLength);

MYLIB_EXPORT BOOL HeapUnlock_Wrapper(HANDLE hHeap);

MYLIB_EXPORT BOOL HeapWalk_Wrapper(HANDLE hHeap, PROCESS_HEAP_ENTRY* lpEntry);

MYLIB_EXPORT BOOL InitializeProcThreadAttributeList_Wrapper(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long dwAttributeCount, unsigned long dwFlags, unsigned long long* lpSize);

MYLIB_EXPORT BOOL IsNativeVhdBoot_Wrapper(BOOL* nativeVhdBoot);

MYLIB_EXPORT BOOL IsProcessInJob_Wrapper(HANDLE processHandle, HANDLE jobHandle, BOOL* result);

MYLIB_EXPORT BOOL IsWow64Process2_Wrapper(HANDLE hProcess, USHORT* pProcessMachine, USHORT* pNativeMachine);

MYLIB_EXPORT HMODULE LoadLibraryW_Wrapper(PCWSTR lpLibFileName);

MYLIB_EXPORT HMODULE LoadLibraryExW_Wrapper(PCWSTR lpLibFileName, HANDLE hFile, DWORD dwFlags);

MYLIB_EXPORT HGLOBAL LoadResource_Wrapper(HMODULE hModule, HRSRC hResInfo);

MYLIB_EXPORT HLOCAL LocalAlloc_Wrapper(DWORD uFlags, unsigned long long uBytes);

MYLIB_EXPORT HLOCAL LocalFree_Wrapper(HLOCAL hMem);

MYLIB_EXPORT BOOL LockFile_Wrapper(HANDLE hFile, unsigned long dwFileOffsetLow, unsigned long dwFileOffsetHigh, unsigned long nNumberOfBytesToLockLow, unsigned long nNumberOfBytesToLockHigh);

MYLIB_EXPORT BOOL LockFileEx_Wrapper(HANDLE hFile, DWORD dwFlags, unsigned long dwReserved, unsigned long nNumberOfBytesToLockLow, unsigned long nNumberOfBytesToLockHigh, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL MoveFileW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName);

MYLIB_EXPORT BOOL MoveFileExW_Wrapper(PCWSTR lpExistingFileName, PCWSTR lpNewFileName, DWORD dwFlags);

MYLIB_EXPORT HANDLE OpenEventW_Wrapper(DWORD dwDesiredAccess, BOOL bInheritHandle, PCWSTR lpName);

MYLIB_EXPORT HANDLE OpenJobObjectW_Wrapper(unsigned long dwDesiredAccess, BOOL bInheritHandle, PCWSTR lpName);

MYLIB_EXPORT HANDLE OpenProcess_Wrapper(DWORD dwDesiredAccess, BOOL bInheritHandle, unsigned long dwProcessId);

MYLIB_EXPORT BOOL PeekConsoleInputW_Wrapper(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, unsigned long nLength, unsigned long* lpNumberOfEventsRead);

MYLIB_EXPORT BOOL PeekNamedPipe_Wrapper(HANDLE hNamedPipe, void* lpBuffer, unsigned long nBufferSize, unsigned long* lpBytesRead, unsigned long* lpTotalBytesAvail, unsigned long* lpBytesLeftThisMessage);

MYLIB_EXPORT BOOL PostQueuedCompletionStatus_Wrapper(HANDLE completionPort, unsigned long dwNumberOfBytesTransferred, unsigned long long dwCompletionKey, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL PurgeComm_Wrapper(HANDLE hFile, DWORD dwFlags);

MYLIB_EXPORT unsigned long QueryDosDeviceW_Wrapper(PCWSTR lpDeviceName, PWSTR lpTargetPath, unsigned long ucchMax);

MYLIB_EXPORT BOOL QueryFullProcessImageNameW_Wrapper(HANDLE hProcess, DWORD dwFlags, PWSTR lpExeName, unsigned long* lpdwSize);

MYLIB_EXPORT BOOL QueryInformationJobObject_Wrapper(HANDLE hJob, LONG jobObjectInformationClass, void* lpJobObjectInformation, unsigned long cbJobObjectInformationLength, unsigned long* lpReturnLength);

MYLIB_EXPORT unsigned long QueryIoRateControlInformationJobObject_Wrapper(HANDLE hJob, PCWSTR volumeName, JOBOBJECT_IO_RATE_CONTROL_INFORMATION** infoBlocks, unsigned long* infoBlockCount);

MYLIB_EXPORT BOOL QueryPerformanceCounter_Wrapper(long long* lpPerformanceCount);

MYLIB_EXPORT BOOL QueryPerformanceFrequency_Wrapper(long long* lpFrequency);

MYLIB_EXPORT BOOL ReadConsoleW_Wrapper(HANDLE hConsoleInput, void* lpBuffer, unsigned long nNumberOfCharsToRead, unsigned long* lpNumberOfCharsRead, CONSOLE_READCONSOLE_CONTROL* pInputControl);

MYLIB_EXPORT BOOL ReadConsoleInputW_Wrapper(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, unsigned long nLength, unsigned long* lpNumberOfEventsRead);

MYLIB_EXPORT BOOL ReadFile_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToRead, unsigned long* lpNumberOfBytesRead, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL ReadFileEx_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToRead, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);

MYLIB_EXPORT BOOL ReadFileScatter_Wrapper(HANDLE hFile, FILE_SEGMENT_ELEMENT* aSegmentArray, unsigned long nNumberOfBytesToRead, unsigned long* lpReserved, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL ReadProcessMemory_Wrapper(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, unsigned long long nSize, unsigned long long* lpNumberOfBytesRead);

MYLIB_EXPORT BOOL RemoveDirectoryW_Wrapper(PCWSTR lpPathName);

MYLIB_EXPORT BOOL RemoveDllDirectory_Wrapper(void* cookie);

MYLIB_EXPORT HANDLE ReOpenFile_Wrapper(HANDLE hOriginalFile, unsigned long dwDesiredAccess, DWORD dwShareMode, DWORD dwFlagsAndAttributes);

MYLIB_EXPORT BOOL ResetEvent_Wrapper(HANDLE hEvent);

MYLIB_EXPORT BOOL ScrollConsoleScreenBufferW_Wrapper(HANDLE hConsoleOutput, SMALL_RECT* lpScrollRectangle, SMALL_RECT* lpClipRectangle, COORD dwDestinationOrigin, CHAR_INFO* lpFill);

MYLIB_EXPORT BOOL SetCommBreak_Wrapper(HANDLE hFile);

MYLIB_EXPORT BOOL SetCommConfig_Wrapper(HANDLE hCommDev, COMMCONFIG* lpCC, unsigned long dwSize);

MYLIB_EXPORT BOOL SetCommMask_Wrapper(HANDLE hFile, DWORD dwEvtMask);

MYLIB_EXPORT BOOL SetCommState_Wrapper(HANDLE hFile, DCB* lpDCB);

MYLIB_EXPORT BOOL SetCommTimeouts_Wrapper(HANDLE hFile, COMMTIMEOUTS* lpCommTimeouts);

MYLIB_EXPORT BOOL SetConsoleCtrlHandler_Wrapper(PHANDLER_ROUTINE handlerRoutine, BOOL add);

MYLIB_EXPORT BOOL SetConsoleCursorInfo_Wrapper(HANDLE hConsoleOutput, CONSOLE_CURSOR_INFO* lpConsoleCursorInfo);

MYLIB_EXPORT BOOL SetConsoleCursorPosition_Wrapper(HANDLE hConsoleOutput, COORD dwCursorPosition);

MYLIB_EXPORT BOOL SetConsoleDisplayMode_Wrapper(HANDLE hConsoleOutput, unsigned long dwFlags, COORD* lpNewScreenBufferDimensions);

MYLIB_EXPORT BOOL SetConsoleMode_Wrapper(HANDLE hConsoleHandle, DWORD dwMode);

MYLIB_EXPORT BOOL SetConsoleTextAttribute_Wrapper(HANDLE hConsoleOutput, USHORT wAttributes);

MYLIB_EXPORT BOOL SetConsoleWindowInfo_Wrapper(HANDLE hConsoleOutput, BOOL bAbsolute, SMALL_RECT* lpConsoleWindow);

MYLIB_EXPORT BOOL SetDefaultCommConfigW_Wrapper(PCWSTR lpszName, COMMCONFIG* lpCC, unsigned long dwSize);

MYLIB_EXPORT BOOL SetDefaultDllDirectories_Wrapper(DWORD directoryFlags);

MYLIB_EXPORT BOOL SetEndOfFile_Wrapper(HANDLE hFile);

MYLIB_EXPORT BOOL SetEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpValue);

MYLIB_EXPORT BOOL SetEvent_Wrapper(HANDLE hEvent);

MYLIB_EXPORT BOOL SetFileAttributesW_Wrapper(PCWSTR lpFileName, DWORD dwFileAttributes);

MYLIB_EXPORT BOOL SetFileInformationByHandle_Wrapper(HANDLE hFile, LONG fileInformationClass, void* lpFileInformation, unsigned long dwBufferSize);

MYLIB_EXPORT BOOL SetFileIoOverlappedRange_Wrapper(HANDLE fileHandle, unsigned char* overlappedRangeStart, unsigned long length);

MYLIB_EXPORT unsigned long SetFilePointer_Wrapper(HANDLE hFile, int lDistanceToMove, int* lpDistanceToMoveHigh, DWORD dwMoveMethod);

MYLIB_EXPORT BOOL SetFilePointerEx_Wrapper(HANDLE hFile, LARGE_INTEGER liDistanceToMove, long long* lpNewFilePointer, DWORD dwMoveMethod);

MYLIB_EXPORT BOOL SetFileShortNameW_Wrapper(HANDLE hFile, PCWSTR lpShortName);

MYLIB_EXPORT BOOL SetFileTime_Wrapper(HANDLE hFile, FILETIME* lpCreationTime, FILETIME* lpLastAccessTime, FILETIME* lpLastWriteTime);

MYLIB_EXPORT BOOL SetFileValidData_Wrapper(HANDLE hFile, long long validDataLength);

MYLIB_EXPORT BOOL SetFirmwareEnvironmentVariableW_Wrapper(PCWSTR lpName, PCWSTR lpGuid, void* pValue, unsigned long nSize);

MYLIB_EXPORT BOOL SetFirmwareEnvironmentVariableExW_Wrapper(PCWSTR lpName, PCWSTR lpGuid, void* pValue, unsigned long nSize, unsigned long dwAttributes);

MYLIB_EXPORT BOOL SetHandleInformation_Wrapper(HANDLE hObject, unsigned long dwMask, DWORD dwFlags);

MYLIB_EXPORT BOOL SetInformationJobObject_Wrapper(HANDLE hJob, LONG jobObjectInformationClass, void* lpJobObjectInformation, unsigned long cbJobObjectInformationLength);

MYLIB_EXPORT unsigned long SetIoRateControlInformationJobObject_Wrapper(HANDLE hJob, JOBOBJECT_IO_RATE_CONTROL_INFORMATION* ioRateControlInfo);

MYLIB_EXPORT BOOL SetNamedPipeHandleState_Wrapper(HANDLE hNamedPipe, DWORD* lpMode, unsigned long* lpMaxCollectionCount, unsigned long* lpCollectDataTimeout);

MYLIB_EXPORT BOOL SetProcessAffinityMask_Wrapper(HANDLE hProcess, unsigned long long dwProcessAffinityMask);

MYLIB_EXPORT BOOL SetProcessPriorityBoost_Wrapper(HANDLE hProcess, BOOL bDisablePriorityBoost);

MYLIB_EXPORT BOOL SetProcessWorkingSetSize_Wrapper(HANDLE hProcess, unsigned long long dwMinimumWorkingSetSize, unsigned long long dwMaximumWorkingSetSize);

MYLIB_EXPORT BOOL SetStdHandle_Wrapper(DWORD nStdHandle, HANDLE hHandle);

MYLIB_EXPORT unsigned long long SetThreadAffinityMask_Wrapper(HANDLE hThread, unsigned long long dwThreadAffinityMask);

MYLIB_EXPORT BOOL SetThreadErrorMode_Wrapper(DWORD dwNewMode, DWORD* lpOldMode);

MYLIB_EXPORT unsigned short SetThreadUILanguage_Wrapper(unsigned short langId);

MYLIB_EXPORT BOOL SetupComm_Wrapper(HANDLE hFile, unsigned long dwInQueue, unsigned long dwOutQueue);

MYLIB_EXPORT BOOL SetVolumeLabelW_Wrapper(PCWSTR lpRootPathName, PCWSTR lpVolumeName);

MYLIB_EXPORT unsigned long SizeofResource_Wrapper(HMODULE hModule, HRSRC hResInfo);

MYLIB_EXPORT BOOL SystemTimeToFileTime_Wrapper(SYSTEMTIME* lpSystemTime, FILETIME* lpFileTime);

MYLIB_EXPORT BOOL TerminateJobObject_Wrapper(HANDLE hJob, unsigned long uExitCode);

MYLIB_EXPORT BOOL TerminateProcess_Wrapper(HANDLE hProcess, unsigned long uExitCode);

MYLIB_EXPORT BOOL TerminateThread_Wrapper(HANDLE hThread, unsigned long dwExitCode);

MYLIB_EXPORT BOOL TransactNamedPipe_Wrapper(HANDLE hNamedPipe, void* lpInBuffer, unsigned long nInBufferSize, void* lpOutBuffer, unsigned long nOutBufferSize, unsigned long* lpBytesRead, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL TransmitCommChar_Wrapper(HANDLE hFile, CHAR cChar);

MYLIB_EXPORT BOOL UnlockFile_Wrapper(HANDLE hFile, unsigned long dwFileOffsetLow, unsigned long dwFileOffsetHigh, unsigned long nNumberOfBytesToUnlockLow, unsigned long nNumberOfBytesToUnlockHigh);

MYLIB_EXPORT BOOL UnlockFileEx_Wrapper(HANDLE hFile, unsigned long dwReserved, unsigned long nNumberOfBytesToUnlockLow, unsigned long nNumberOfBytesToUnlockHigh, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL UpdateProcThreadAttribute_Wrapper(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList, unsigned long dwFlags, unsigned long long attribute, void* lpValue, unsigned long long cbSize, void* lpPreviousValue, unsigned long long* lpReturnSize);

MYLIB_EXPORT BOOL UpdateResourceW_Wrapper(HANDLE hUpdate, PCWSTR lpType, PCWSTR lpName, unsigned short wLanguage, void* lpData, unsigned long cb);

MYLIB_EXPORT BOOL VerifyVersionInfoW_Wrapper(OSVERSIONINFOEXW* lpVersionInformation, DWORD dwTypeMask, unsigned long long dwlConditionMask);

MYLIB_EXPORT void* VirtualAlloc_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD flAllocationType, DWORD flProtect);

MYLIB_EXPORT void* VirtualAllocEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD flAllocationType, DWORD flProtect);

MYLIB_EXPORT BOOL VirtualFree_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD dwFreeType);

MYLIB_EXPORT BOOL VirtualFreeEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD dwFreeType);

MYLIB_EXPORT BOOL VirtualLock_Wrapper(void* lpAddress, unsigned long long dwSize);

MYLIB_EXPORT BOOL VirtualProtect_Wrapper(void* lpAddress, unsigned long long dwSize, DWORD flNewProtect, DWORD* lpflOldProtect);

MYLIB_EXPORT BOOL VirtualProtectEx_Wrapper(HANDLE hProcess, void* lpAddress, unsigned long long dwSize, DWORD flNewProtect, DWORD* lpflOldProtect);

MYLIB_EXPORT unsigned long long VirtualQuery_Wrapper(void* lpAddress, MEMORY_BASIC_INFORMATION* lpBuffer, unsigned long long dwLength);

MYLIB_EXPORT unsigned long long VirtualQueryEx_Wrapper(HANDLE hProcess, void* lpAddress, MEMORY_BASIC_INFORMATION* lpBuffer, unsigned long long dwLength);

MYLIB_EXPORT BOOL VirtualUnlock_Wrapper(void* lpAddress, unsigned long long dwSize);

MYLIB_EXPORT BOOL WaitCommEvent_Wrapper(HANDLE hFile, DWORD* lpEvtMask, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT DWORD WaitForSingleObject_Wrapper(HANDLE hHandle, unsigned long dwMilliseconds);

MYLIB_EXPORT int WideCharToMultiByte_Wrapper(unsigned long codePage, unsigned long dwFlags, PCWSTR lpWideCharStr, int cchWideChar, PSTR lpMultiByteStr, int cbMultiByte, PCSTR lpDefaultChar, BOOL* lpUsedDefaultChar);

MYLIB_EXPORT unsigned long Wow64SuspendThread_Wrapper(HANDLE hThread);

MYLIB_EXPORT BOOL WriteConsoleW_Wrapper(HANDLE hConsoleOutput, PCWSTR lpBuffer, unsigned long nNumberOfCharsToWrite, unsigned long* lpNumberOfCharsWritten, void* lpReserved);

MYLIB_EXPORT BOOL WriteFile_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToWrite, unsigned long* lpNumberOfBytesWritten, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL WriteFileEx_Wrapper(HANDLE hFile, unsigned char* lpBuffer, unsigned long nNumberOfBytesToWrite, OVERLAPPED* lpOverlapped, LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);

MYLIB_EXPORT BOOL WriteFileGather_Wrapper(HANDLE hFile, FILE_SEGMENT_ELEMENT* aSegmentArray, unsigned long nNumberOfBytesToWrite, unsigned long* lpReserved, OVERLAPPED* lpOverlapped);

MYLIB_EXPORT BOOL WriteProcessMemory_Wrapper(HANDLE hProcess, void* lpBaseAddress, void* lpBuffer, unsigned long long nSize, unsigned long long* lpNumberOfBytesWritten);

import 'version.dart';

// In v2, we have friendly names for callbacks.

const callbackTypeMapping = win32Version == 2
    ? <String, String>{
        // Callbacks
        'FARPROC': 'Pointer',
        'PROC': 'Pointer',
        'NEARPROC': 'Pointer',
        'LPCCHOOKPROC': 'Pointer<NativeFunction<CCHookProc>>',
        'LPCFHOOKPROC': 'Pointer<NativeFunction<CFHookProc>>',
        'LPFRHOOKPROC': 'Pointer<NativeFunction<FRHookProc>>',
        'LPOFNHOOKPROC': 'Pointer<NativeFunction<OFNHookProc>>',
        'DLGPROC': 'Pointer<NativeFunction<DlgProc>>',
        'DRAWSTATEPROC': 'Pointer<NativeFunction<DrawStateProc>>',
        'WNDPROC': 'Pointer<NativeFunction<WindowProc>>',
        'HOOKPROC': 'Pointer<NativeFunction<CallWndProc>>',
        'WNDENUMPROC': 'Pointer<NativeFunction<EnumWindowsProc>>',
        'FONTENUMPROCW': 'Pointer<NativeFunction<EnumFontFamExProc>>',
        'ENUMRESNAMEPROCW': 'Pointer<NativeFunction<EnumResNameProc>>',
        'ENUMRESTYPEPROCW': 'Pointer<NativeFunction<EnumResTypeProc>>',
        'MONITORENUMPROC': 'Pointer<NativeFunction<MonitorEnumProc>>',
        'GRAYSTRINGPROC': 'Pointer<NativeFunction<OutputProc>>',
        'SENDASYNCPROC': 'Pointer<NativeFunction<SendAsyncProc>>',
        'SUBCLASSPROC': 'Pointer<NativeFunction<SubclassProc>>',
        'DTT_CALLBACK_PROC': 'Pointer<NativeFunction<DrawTextCallback>>',
        'PHANDLER_ROUTINE': 'Pointer<NativeFunction<HandlerRoutine>>',
        'LPOCNCHKPROC': 'Pointer<NativeFunction<OpenCardCheckProc>>',
        'LPOCNCONNPROCW': 'Pointer<NativeFunction<OpenCardConnProc>>',
        'LPOCNDSCPROC': 'Pointer<NativeFunction<OpenCardDisconnProc>>',
        'LPTHREAD_START_ROUTINE': 'Pointer<NativeFunction<ThreadProc>>',
        'TIMERPROC': 'Pointer<NativeFunction<TimerProc>>',
        'MagImageScalingCallback':
            'Pointer<NativeFunction<MagImageScalingCallback>>',
        'PFN_AUTHENTICATION_CALLBACK_EX':
            'Pointer<NativeFunction<PfnAuthenticationCallbackEx>>',
        'PFNBLUETOOTH_GATT_EVENT_CALLBACK':
            'Pointer<NativeFunction<PfnbluetoothGattEventCallback>>',
        'PSYM_ENUMERATESYMBOLS_CALLBACKW':
            'Pointer<NativeFunction<SymEnumSymbolsProc>>',
        'LPEXCEPFINO_DEFERRED_FILLIN': 'Pointer<NativeFunction<ExcepInfoProc>>',
        'WLAN_NOTIFICATION_CALLBACK':
            'Pointer<NativeFunction<WlanNotificationCallback>>',
        'PFTASKDIALOGCALLBACK':
            'Pointer<NativeFunction<TaskDialogCallbackProc>>',
        'SPNOTIFYCALLBACK': 'Pointer<NativeFunction<SpNotifyCallback>>',
      }
    : <String, String>{};

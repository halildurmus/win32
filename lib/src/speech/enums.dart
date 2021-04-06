/// {@category Enum}
class DISPIDSPRG {
  static const DISPID_SRGId = 0x00000001;
  static const DISPID_SRGRecoContext = 0x00000002;
  static const DISPID_SRGState = 0x00000003;
  static const DISPID_SRGRules = 0x00000004;
  static const DISPID_SRGReset = 0x00000005;
  static const DISPID_SRGCommit = 0x00000006;
  static const DISPID_SRGCmdLoadFromFile = 0x00000007;
  static const DISPID_SRGCmdLoadFromObject = 0x00000008;
  static const DISPID_SRGCmdLoadFromResource = 0x00000009;
  static const DISPID_SRGCmdLoadFromMemory = 0x0000000a;
  static const DISPID_SRGCmdLoadFromProprietaryGrammar = 0x0000000b;
  static const DISPID_SRGCmdSetRuleState = 0x0000000c;
  static const DISPID_SRGCmdSetRuleIdState = 0x0000000d;
  static const DISPID_SRGDictationLoad = 0x0000000e;
  static const DISPID_SRGDictationUnload = 0x0000000f;
  static const DISPID_SRGDictationSetState = 0x00000010;
  static const DISPID_SRGSetWordSequenceData = 0x00000011;
  static const DISPID_SRGSetTextSelection = 0x00000012;
  static const DISPID_SRGIsPronounceable = 0x00000013;
}

/// {@category Enum}
class DISPIDSPTSI {
  static const DISPIDSPTSI_ActiveOffset = 0x00000001;
  static const DISPIDSPTSI_ActiveLength = 0x00000002;
  static const DISPIDSPTSI_SelectionOffset = 0x00000003;
  static const DISPIDSPTSI_SelectionLength = 0x00000004;
}

/// {@category Enum}
class DISPID_SpeechAudio {
  static const DISPID_SAStatus = 0x000000c8;
  static const DISPID_SABufferInfo = 0x000000c9;
  static const DISPID_SADefaultFormat = 0x000000ca;
  static const DISPID_SAVolume = 0x000000cb;
  static const DISPID_SABufferNotifySize = 0x000000cc;
  static const DISPID_SAEventHandle = 0x000000cd;
  static const DISPID_SASetState = 0x000000ce;
}

/// {@category Enum}
class DISPID_SpeechAudioBufferInfo {
  static const DISPID_SABIMinNotification = 0x00000001;
  static const DISPID_SABIBufferSize = 0x00000002;
  static const DISPID_SABIEventBias = 0x00000003;
}

/// {@category Enum}
class DISPID_SpeechAudioFormat {
  static const DISPID_SAFType = 0x00000001;
  static const DISPID_SAFGuid = 0x00000002;
  static const DISPID_SAFGetWaveFormatEx = 0x00000003;
  static const DISPID_SAFSetWaveFormatEx = 0x00000004;
}

/// {@category Enum}
class DISPID_SpeechAudioStatus {
  static const DISPID_SASFreeBufferSpace = 0x00000001;
  static const DISPID_SASNonBlockingIO = 0x00000002;
  static const DISPID_SASState = 0x00000003;
  static const DISPID_SASCurrentSeekPosition = 0x00000004;
  static const DISPID_SASCurrentDevicePosition = 0x00000005;
}

/// {@category Enum}
class DISPID_SpeechBaseStream {
  static const DISPID_SBSFormat = 0x00000001;
  static const DISPID_SBSRead = 0x00000002;
  static const DISPID_SBSWrite = 0x00000003;
  static const DISPID_SBSSeek = 0x00000004;
}

/// {@category Enum}
class DISPID_SpeechCustomStream {
  static const DISPID_SCSBaseStream = 0x00000064;
}

/// {@category Enum}
class DISPID_SpeechDataKey {
  static const DISPID_SDKSetBinaryValue = 0x00000001;
  static const DISPID_SDKGetBinaryValue = 0x00000002;
  static const DISPID_SDKSetStringValue = 0x00000003;
  static const DISPID_SDKGetStringValue = 0x00000004;
  static const DISPID_SDKSetLongValue = 0x00000005;
  static const DISPID_SDKGetlongValue = 0x00000006;
  static const DISPID_SDKOpenKey = 0x00000007;
  static const DISPID_SDKCreateKey = 0x00000008;
  static const DISPID_SDKDeleteKey = 0x00000009;
  static const DISPID_SDKDeleteValue = 0x0000000a;
  static const DISPID_SDKEnumKeys = 0x0000000b;
  static const DISPID_SDKEnumValues = 0x0000000c;
}

/// {@category Enum}
class DISPID_SpeechFileStream {
  static const DISPID_SFSOpen = 0x00000064;
  static const DISPID_SFSClose = 0x00000065;
}

/// {@category Enum}
class DISPID_SpeechGrammarRule {
  static const DISPID_SGRAttributes = 0x00000001;
  static const DISPID_SGRInitialState = 0x00000002;
  static const DISPID_SGRName = 0x00000003;
  static const DISPID_SGRId = 0x00000004;
  static const DISPID_SGRClear = 0x00000005;
  static const DISPID_SGRAddResource = 0x00000006;
  static const DISPID_SGRAddState = 0x00000007;
}

/// {@category Enum}
class DISPID_SpeechGrammarRuleState {
  static const DISPID_SGRSRule = 0x00000001;
  static const DISPID_SGRSTransitions = 0x00000002;
  static const DISPID_SGRSAddWordTransition = 0x00000003;
  static const DISPID_SGRSAddRuleTransition = 0x00000004;
  static const DISPID_SGRSAddSpecialTransition = 0x00000005;
}

/// {@category Enum}
class DISPID_SpeechGrammarRuleStateTransition {
  static const DISPID_SGRSTType = 0x00000001;
  static const DISPID_SGRSTText = 0x00000002;
  static const DISPID_SGRSTRule = 0x00000003;
  static const DISPID_SGRSTWeight = 0x00000004;
  static const DISPID_SGRSTPropertyName = 0x00000005;
  static const DISPID_SGRSTPropertyId = 0x00000006;
  static const DISPID_SGRSTPropertyValue = 0x00000007;
  static const DISPID_SGRSTNextState = 0x00000008;
}

/// {@category Enum}
class DISPID_SpeechGrammarRuleStateTransitions {
  static const DISPID_SGRSTsCount = 0x00000001;
  static const DISPID_SGRSTsItem = 0x00000000;
  static const DISPID_SGRSTs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechGrammarRules {
  static const DISPID_SGRsCount = 0x00000001;
  static const DISPID_SGRsDynamic = 0x00000002;
  static const DISPID_SGRsAdd = 0x00000003;
  static const DISPID_SGRsCommit = 0x00000004;
  static const DISPID_SGRsCommitAndSave = 0x00000005;
  static const DISPID_SGRsFindRule = 0x00000006;
  static const DISPID_SGRsItem = 0x00000000;
  static const DISPID_SGRs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechLexicon {
  static const DISPID_SLGenerationId = 0x00000001;
  static const DISPID_SLGetWords = 0x00000002;
  static const DISPID_SLAddPronunciation = 0x00000003;
  static const DISPID_SLAddPronunciationByPhoneIds = 0x00000004;
  static const DISPID_SLRemovePronunciation = 0x00000005;
  static const DISPID_SLRemovePronunciationByPhoneIds = 0x00000006;
  static const DISPID_SLGetPronunciations = 0x00000007;
  static const DISPID_SLGetGenerationChange = 0x00000008;
}

/// {@category Enum}
class DISPID_SpeechLexiconProns {
  static const DISPID_SLPsCount = 0x00000001;
  static const DISPID_SLPsItem = 0x00000000;
  static const DISPID_SLPs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechLexiconPronunciation {
  static const DISPID_SLPType = 0x00000001;
  static const DISPID_SLPLangId = 0x00000002;
  static const DISPID_SLPPartOfSpeech = 0x00000003;
  static const DISPID_SLPPhoneIds = 0x00000004;
  static const DISPID_SLPSymbolic = 0x00000005;
}

/// {@category Enum}
class DISPID_SpeechLexiconWord {
  static const DISPID_SLWLangId = 0x00000001;
  static const DISPID_SLWType = 0x00000002;
  static const DISPID_SLWWord = 0x00000003;
  static const DISPID_SLWPronunciations = 0x00000004;
}

/// {@category Enum}
class DISPID_SpeechLexiconWords {
  static const DISPID_SLWsCount = 0x00000001;
  static const DISPID_SLWsItem = 0x00000000;
  static const DISPID_SLWs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechMMSysAudio {
  static const DISPID_SMSADeviceId = 0x0000012c;
  static const DISPID_SMSALineId = 0x0000012d;
  static const DISPID_SMSAMMHandle = 0x0000012e;
}

/// {@category Enum}
class DISPID_SpeechMemoryStream {
  static const DISPID_SMSSetData = 0x00000064;
  static const DISPID_SMSGetData = 0x00000065;
}

/// {@category Enum}
class DISPID_SpeechObjectToken {
  static const DISPID_SOTId = 0x00000001;
  static const DISPID_SOTDataKey = 0x00000002;
  static const DISPID_SOTCategory = 0x00000003;
  static const DISPID_SOTGetDescription = 0x00000004;
  static const DISPID_SOTSetId = 0x00000005;
  static const DISPID_SOTGetAttribute = 0x00000006;
  static const DISPID_SOTCreateInstance = 0x00000007;
  static const DISPID_SOTRemove = 0x00000008;
  static const DISPID_SOTGetStorageFileName = 0x00000009;
  static const DISPID_SOTRemoveStorageFileName = 0x0000000a;
  static const DISPID_SOTIsUISupported = 0x0000000b;
  static const DISPID_SOTDisplayUI = 0x0000000c;
  static const DISPID_SOTMatchesAttributes = 0x0000000d;
}

/// {@category Enum}
class DISPID_SpeechObjectTokenCategory {
  static const DISPID_SOTCId = 0x00000001;
  static const DISPID_SOTCDefault = 0x00000002;
  static const DISPID_SOTCSetId = 0x00000003;
  static const DISPID_SOTCGetDataKey = 0x00000004;
  static const DISPID_SOTCEnumerateTokens = 0x00000005;
}

/// {@category Enum}
class DISPID_SpeechObjectTokens {
  static const DISPID_SOTsCount = 0x00000001;
  static const DISPID_SOTsItem = 0x00000000;
  static const DISPID_SOTs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechPhoneConverter {
  static const DISPID_SPCLangId = 0x00000001;
  static const DISPID_SPCPhoneToId = 0x00000002;
  static const DISPID_SPCIdToPhone = 0x00000003;
}

/// {@category Enum}
class DISPID_SpeechPhraseAlternate {
  static const DISPID_SPARecoResult = 0x00000001;
  static const DISPID_SPAStartElementInResult = 0x00000002;
  static const DISPID_SPANumberOfElementsInResult = 0x00000003;
  static const DISPID_SPAPhraseInfo = 0x00000004;
  static const DISPID_SPACommit = 0x00000005;
}

/// {@category Enum}
class DISPID_SpeechPhraseAlternates {
  static const DISPID_SPAsCount = 0x00000001;
  static const DISPID_SPAsItem = 0x00000000;
  static const DISPID_SPAs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechPhraseBuilder {
  static const DISPID_SPPBRestorePhraseFromMemory = 0x00000001;
}

/// {@category Enum}
class DISPID_SpeechPhraseElement {
  static const DISPID_SPEAudioTimeOffset = 0x00000001;
  static const DISPID_SPEAudioSizeTime = 0x00000002;
  static const DISPID_SPEAudioStreamOffset = 0x00000003;
  static const DISPID_SPEAudioSizeBytes = 0x00000004;
  static const DISPID_SPERetainedStreamOffset = 0x00000005;
  static const DISPID_SPERetainedSizeBytes = 0x00000006;
  static const DISPID_SPEDisplayText = 0x00000007;
  static const DISPID_SPELexicalForm = 0x00000008;
  static const DISPID_SPEPronunciation = 0x00000009;
  static const DISPID_SPEDisplayAttributes = 0x0000000a;
  static const DISPID_SPERequiredConfidence = 0x0000000b;
  static const DISPID_SPEActualConfidence = 0x0000000c;
  static const DISPID_SPEEngineConfidence = 0x0000000d;
}

/// {@category Enum}
class DISPID_SpeechPhraseElements {
  static const DISPID_SPEsCount = 0x00000001;
  static const DISPID_SPEsItem = 0x00000000;
  static const DISPID_SPEs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechPhraseInfo {
  static const DISPID_SPILanguageId = 0x00000001;
  static const DISPID_SPIGrammarId = 0x00000002;
  static const DISPID_SPIStartTime = 0x00000003;
  static const DISPID_SPIAudioStreamPosition = 0x00000004;
  static const DISPID_SPIAudioSizeBytes = 0x00000005;
  static const DISPID_SPIRetainedSizeBytes = 0x00000006;
  static const DISPID_SPIAudioSizeTime = 0x00000007;
  static const DISPID_SPIRule = 0x00000008;
  static const DISPID_SPIProperties = 0x00000009;
  static const DISPID_SPIElements = 0x0000000a;
  static const DISPID_SPIReplacements = 0x0000000b;
  static const DISPID_SPIEngineId = 0x0000000c;
  static const DISPID_SPIEnginePrivateData = 0x0000000d;
  static const DISPID_SPISaveToMemory = 0x0000000e;
  static const DISPID_SPIGetText = 0x0000000f;
  static const DISPID_SPIGetDisplayAttributes = 0x00000010;
}

/// {@category Enum}
class DISPID_SpeechPhraseProperties {
  static const DISPID_SPPsCount = 0x00000001;
  static const DISPID_SPPsItem = 0x00000000;
  static const DISPID_SPPs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechPhraseProperty {
  static const DISPID_SPPName = 0x00000001;
  static const DISPID_SPPId = 0x00000002;
  static const DISPID_SPPValue = 0x00000003;
  static const DISPID_SPPFirstElement = 0x00000004;
  static const DISPID_SPPNumberOfElements = 0x00000005;
  static const DISPID_SPPEngineConfidence = 0x00000006;
  static const DISPID_SPPConfidence = 0x00000007;
  static const DISPID_SPPParent = 0x00000008;
  static const DISPID_SPPChildren = 0x00000009;
}

/// {@category Enum}
class DISPID_SpeechPhraseReplacement {
  static const DISPID_SPRDisplayAttributes = 0x00000001;
  static const DISPID_SPRText = 0x00000002;
  static const DISPID_SPRFirstElement = 0x00000003;
  static const DISPID_SPRNumberOfElements = 0x00000004;
}

/// {@category Enum}
class DISPID_SpeechPhraseReplacements {
  static const DISPID_SPRsCount = 0x00000001;
  static const DISPID_SPRsItem = 0x00000000;
  static const DISPID_SPRs_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechPhraseRule {
  static const DISPID_SPRuleName = 0x00000001;
  static const DISPID_SPRuleId = 0x00000002;
  static const DISPID_SPRuleFirstElement = 0x00000003;
  static const DISPID_SPRuleNumberOfElements = 0x00000004;
  static const DISPID_SPRuleParent = 0x00000005;
  static const DISPID_SPRuleChildren = 0x00000006;
  static const DISPID_SPRuleConfidence = 0x00000007;
  static const DISPID_SPRuleEngineConfidence = 0x00000008;
}

/// {@category Enum}
class DISPID_SpeechPhraseRules {
  static const DISPID_SPRulesCount = 0x00000001;
  static const DISPID_SPRulesItem = 0x00000000;
  static const DISPID_SPRules_NewEnum = 0xfffffffc;
}

/// {@category Enum}
class DISPID_SpeechRecoContext {
  static const DISPID_SRCRecognizer = 0x00000001;
  static const DISPID_SRCAudioInInterferenceStatus = 0x00000002;
  static const DISPID_SRCRequestedUIType = 0x00000003;
  static const DISPID_SRCVoice = 0x00000004;
  static const DISPID_SRAllowVoiceFormatMatchingOnNextSet = 0x00000005;
  static const DISPID_SRCVoicePurgeEvent = 0x00000006;
  static const DISPID_SRCEventInterests = 0x00000007;
  static const DISPID_SRCCmdMaxAlternates = 0x00000008;
  static const DISPID_SRCState = 0x00000009;
  static const DISPID_SRCRetainedAudio = 0x0000000a;
  static const DISPID_SRCRetainedAudioFormat = 0x0000000b;
  static const DISPID_SRCPause = 0x0000000c;
  static const DISPID_SRCResume = 0x0000000d;
  static const DISPID_SRCCreateGrammar = 0x0000000e;
  static const DISPID_SRCCreateResultFromMemory = 0x0000000f;
  static const DISPID_SRCBookmark = 0x00000010;
  static const DISPID_SRCSetAdaptationData = 0x00000011;
}

/// {@category Enum}
class DISPID_SpeechRecoContextEvents {
  static const DISPID_SRCEStartStream = 0x00000001;
  static const DISPID_SRCEEndStream = 0x00000002;
  static const DISPID_SRCEBookmark = 0x00000003;
  static const DISPID_SRCESoundStart = 0x00000004;
  static const DISPID_SRCESoundEnd = 0x00000005;
  static const DISPID_SRCEPhraseStart = 0x00000006;
  static const DISPID_SRCERecognition = 0x00000007;
  static const DISPID_SRCEHypothesis = 0x00000008;
  static const DISPID_SRCEPropertyNumberChange = 0x00000009;
  static const DISPID_SRCEPropertyStringChange = 0x0000000a;
  static const DISPID_SRCEFalseRecognition = 0x0000000b;
  static const DISPID_SRCEInterference = 0x0000000c;
  static const DISPID_SRCERequestUI = 0x0000000d;
  static const DISPID_SRCERecognizerStateChange = 0x0000000e;
  static const DISPID_SRCEAdaptation = 0x0000000f;
  static const DISPID_SRCERecognitionForOtherContext = 0x00000010;
  static const DISPID_SRCEAudioLevel = 0x00000011;
  static const DISPID_SRCEEnginePrivate = 0x00000012;
}

/// {@category Enum}
class DISPID_SpeechRecoResult {
  static const DISPID_SRRRecoContext = 0x00000001;
  static const DISPID_SRRTimes = 0x00000002;
  static const DISPID_SRRAudioFormat = 0x00000003;
  static const DISPID_SRRPhraseInfo = 0x00000004;
  static const DISPID_SRRAlternates = 0x00000005;
  static const DISPID_SRRAudio = 0x00000006;
  static const DISPID_SRRSpeakAudio = 0x00000007;
  static const DISPID_SRRSaveToMemory = 0x00000008;
  static const DISPID_SRRDiscardResultInfo = 0x00000009;
}

/// {@category Enum}
class DISPID_SpeechRecoResult2 {
  static const DISPID_SRRSetTextFeedback = 0x0000000c;
}

/// {@category Enum}
class DISPID_SpeechRecoResultTimes {
  static const DISPID_SRRTStreamTime = 0x00000001;
  static const DISPID_SRRTLength = 0x00000002;
  static const DISPID_SRRTTickCount = 0x00000003;
  static const DISPID_SRRTOffsetFromStart = 0x00000004;
}

/// {@category Enum}
class DISPID_SpeechRecognizer {
  static const DISPID_SRRecognizer = 0x00000001;
  static const DISPID_SRAllowAudioInputFormatChangesOnNextSet = 0x00000002;
  static const DISPID_SRAudioInput = 0x00000003;
  static const DISPID_SRAudioInputStream = 0x00000004;
  static const DISPID_SRIsShared = 0x00000005;
  static const DISPID_SRState = 0x00000006;
  static const DISPID_SRStatus = 0x00000007;
  static const DISPID_SRProfile = 0x00000008;
  static const DISPID_SREmulateRecognition = 0x00000009;
  static const DISPID_SRCreateRecoContext = 0x0000000a;
  static const DISPID_SRGetFormat = 0x0000000b;
  static const DISPID_SRSetPropertyNumber = 0x0000000c;
  static const DISPID_SRGetPropertyNumber = 0x0000000d;
  static const DISPID_SRSetPropertyString = 0x0000000e;
  static const DISPID_SRGetPropertyString = 0x0000000f;
  static const DISPID_SRIsUISupported = 0x00000010;
  static const DISPID_SRDisplayUI = 0x00000011;
  static const DISPID_SRGetRecognizers = 0x00000012;
  static const DISPID_SVGetAudioInputs = 0x00000013;
  static const DISPID_SVGetProfiles = 0x00000014;
}

/// {@category Enum}
class DISPID_SpeechRecognizerStatus {
  static const DISPID_SRSAudioStatus = 0x00000001;
  static const DISPID_SRSCurrentStreamPosition = 0x00000002;
  static const DISPID_SRSCurrentStreamNumber = 0x00000003;
  static const DISPID_SRSNumberOfActiveRules = 0x00000004;
  static const DISPID_SRSClsidEngine = 0x00000005;
  static const DISPID_SRSSupportedLanguages = 0x00000006;
}

/// {@category Enum}
class DISPID_SpeechVoice {
  static const DISPID_SVStatus = 0x00000001;
  static const DISPID_SVVoice = 0x00000002;
  static const DISPID_SVAudioOutput = 0x00000003;
  static const DISPID_SVAudioOutputStream = 0x00000004;
  static const DISPID_SVRate = 0x00000005;
  static const DISPID_SVVolume = 0x00000006;
  static const DISPID_SVAllowAudioOuputFormatChangesOnNextSet = 0x00000007;
  static const DISPID_SVEventInterests = 0x00000008;
  static const DISPID_SVPriority = 0x00000009;
  static const DISPID_SVAlertBoundary = 0x0000000a;
  static const DISPID_SVSyncronousSpeakTimeout = 0x0000000b;
  static const DISPID_SVSpeak = 0x0000000c;
  static const DISPID_SVSpeakStream = 0x0000000d;
  static const DISPID_SVPause = 0x0000000e;
  static const DISPID_SVResume = 0x0000000f;
  static const DISPID_SVSkip = 0x00000010;
  static const DISPID_SVGetVoices = 0x00000011;
  static const DISPID_SVGetAudioOutputs = 0x00000012;
  static const DISPID_SVWaitUntilDone = 0x00000013;
  static const DISPID_SVSpeakCompleteEvent = 0x00000014;
  static const DISPID_SVIsUISupported = 0x00000015;
  static const DISPID_SVDisplayUI = 0x00000016;
}

/// {@category Enum}
class DISPID_SpeechVoiceEvent {
  static const DISPID_SVEStreamStart = 0x00000001;
  static const DISPID_SVEStreamEnd = 0x00000002;
  static const DISPID_SVEVoiceChange = 0x00000003;
  static const DISPID_SVEBookmark = 0x00000004;
  static const DISPID_SVEWord = 0x00000005;
  static const DISPID_SVEPhoneme = 0x00000006;
  static const DISPID_SVESentenceBoundary = 0x00000007;
  static const DISPID_SVEViseme = 0x00000008;
  static const DISPID_SVEAudioLevel = 0x00000009;
  static const DISPID_SVEEnginePrivate = 0x0000000a;
}

/// {@category Enum}
class DISPID_SpeechVoiceStatus {
  static const DISPID_SVSCurrentStreamNumber = 0x00000001;
  static const DISPID_SVSLastStreamNumberQueued = 0x00000002;
  static const DISPID_SVSLastResult = 0x00000003;
  static const DISPID_SVSRunningState = 0x00000004;
  static const DISPID_SVSInputWordPosition = 0x00000005;
  static const DISPID_SVSInputWordLength = 0x00000006;
  static const DISPID_SVSInputSentencePosition = 0x00000007;
  static const DISPID_SVSInputSentenceLength = 0x00000008;
  static const DISPID_SVSLastBookmark = 0x00000009;
  static const DISPID_SVSLastBookmarkId = 0x0000000a;
  static const DISPID_SVSPhonemeId = 0x0000000b;
  static const DISPID_SVSVisemeId = 0x0000000c;
}

/// {@category Enum}
class DISPID_SpeechWaveFormatEx {
  static const DISPID_SWFEFormatTag = 0x00000001;
  static const DISPID_SWFEChannels = 0x00000002;
  static const DISPID_SWFESamplesPerSec = 0x00000003;
  static const DISPID_SWFEAvgBytesPerSec = 0x00000004;
  static const DISPID_SWFEBlockAlign = 0x00000005;
  static const DISPID_SWFEBitsPerSample = 0x00000006;
  static const DISPID_SWFEExtraData = 0x00000007;
}

/// {@category Enum}
class DISPID_SpeechXMLRecoResult {
  static const DISPID_SRRGetXMLResult = 0x0000000a;
  static const DISPID_SRRGetXMLErrorInfo = 0x0000000b;
}

/// {@category Enum}
class PHONETICALPHABET {
  static const PA_Ipa = 0x00000000;
  static const PA_Ups = 0x00000001;
  static const PA_Sapi = 0x00000002;
}

/// {@category Enum}
class SPADAPTATIONRELEVANCE {
  static const SPAR_Unknown = 0x00000000;
  static const SPAR_Low = 0x00000001;
  static const SPAR_Medium = 0x00000002;
  static const SPAR_High = 0x00000003;
}

/// {@category Enum}
class SPADAPTATIONSETTINGS {
  static const SPADS_Default = 0x00000000;
  static const SPADS_CurrentRecognizer = 0x00000001;
  static const SPADS_RecoProfile = 0x00000002;
  static const SPADS_Immediate = 0x00000004;
  static const SPADS_Reset = 0x00000008;
  static const SPADS_HighVolumeDataSource = 0x00000010;
}

/// {@category Enum}
class SPAUDIOOPTIONS {
  static const SPAO_NONE = 0x00000000;
  static const SPAO_RETAIN_AUDIO = 0x00000001;
}

/// {@category Enum}
class SPAUDIOSTATE {
  static const SPAS_CLOSED = 0x00000000;
  static const SPAS_STOP = 0x00000001;
  static const SPAS_PAUSE = 0x00000002;
  static const SPAS_RUN = 0x00000003;
}

/// {@category Enum}
class SPBOOKMARKOPTIONS {
  static const SPBO_NONE = 0x00000000;
  static const SPBO_PAUSE = 0x00000001;
  static const SPBO_AHEAD = 0x00000002;
  static const SPBO_TIME_UNITS = 0x00000004;
}

/// {@category Enum}
class SPCFGRULEATTRIBUTES {
  static const SPRAF_TopLevel = 0x00000001;
  static const SPRAF_Active = 0x00000002;
  static const SPRAF_Export = 0x00000004;
  static const SPRAF_Import = 0x00000008;
  static const SPRAF_Interpreter = 0x00000010;
  static const SPRAF_Dynamic = 0x00000020;
  static const SPRAF_Root = 0x00000040;
  static const SPRAF_AutoPause = 0x00010000;
  static const SPRAF_UserDelimited = 0x00020000;
}

/// {@category Enum}
class SPCOMMITFLAGS {
  static const SPCF_NONE = 0x00000000;
  static const SPCF_ADD_TO_USER_LEXICON = 0x00000001;
  static const SPCF_DEFINITE_CORRECTION = 0x00000002;
}

/// {@category Enum}
class SPCONTEXTSTATE {
  static const SPCS_DISABLED = 0x00000000;
  static const SPCS_ENABLED = 0x00000001;
}

/// {@category Enum}
class SPDATAKEYLOCATION {
  static const SPDKL_DefaultLocation = 0x00000000;
  static const SPDKL_CurrentUser = 0x00000001;
  static const SPDKL_LocalMachine = 0x00000002;
  static const SPDKL_CurrentConfig = 0x00000005;
}

/// {@category Enum}
class SPDISPLYATTRIBUTES {
  static const SPAF_ONE_TRAILING_SPACE = 0x00000002;
  static const SPAF_TWO_TRAILING_SPACES = 0x00000004;
  static const SPAF_CONSUME_LEADING_SPACES = 0x00000008;
  static const SPAF_BUFFER_POSITION = 0x00000010;
  static const SPAF_ALL = 0x0000001f;
  static const SPAF_USER_SPECIFIED = 0x00000080;
}

/// {@category Enum}
class SPEAKFLAGS {
  static const SPF_DEFAULT = 0x00000000;
  static const SPF_ASYNC = 0x00000001;
  static const SPF_PURGEBEFORESPEAK = 0x00000002;
  static const SPF_IS_FILENAME = 0x00000004;
  static const SPF_IS_XML = 0x00000008;
  static const SPF_IS_NOT_XML = 0x00000010;
  static const SPF_PERSIST_XML = 0x00000020;
  static const SPF_NLP_SPEAK_PUNC = 0x00000040;
  static const SPF_PARSE_SAPI = 0x00000080;
  static const SPF_PARSE_SSML = 0x00000100;
  static const SPF_PARSE_AUTODETECT = 0x00000000;
  static const SPF_NLP_MASK = 0x00000040;
  static const SPF_PARSE_MASK = 0x00000180;
  static const SPF_VOICE_MASK = 0x000001ff;
  static const SPF_UNUSED_FLAGS = 0xfffffe00;
}

/// {@category Enum}
class SPENDSRSTREAMFLAGS {
  static const SPESF_NONE = 0x00000000;
  static const SPESF_STREAM_RELEASED = 0x00000001;
  static const SPESF_EMULATED = 0x00000002;
}

/// {@category Enum}
class SPEVENTENUM {
  static const SPEI_UNDEFINED = 0x00000000;
  static const SPEI_START_INPUT_STREAM = 0x00000001;
  static const SPEI_END_INPUT_STREAM = 0x00000002;
  static const SPEI_VOICE_CHANGE = 0x00000003;
  static const SPEI_TTS_BOOKMARK = 0x00000004;
  static const SPEI_WORD_BOUNDARY = 0x00000005;
  static const SPEI_PHONEME = 0x00000006;
  static const SPEI_SENTENCE_BOUNDARY = 0x00000007;
  static const SPEI_VISEME = 0x00000008;
  static const SPEI_TTS_AUDIO_LEVEL = 0x00000009;
  static const SPEI_TTS_PRIVATE = 0x0000000f;
  static const SPEI_MIN_TTS = 0x00000001;
  static const SPEI_MAX_TTS = 0x0000000f;
  static const SPEI_END_SR_STREAM = 0x00000022;
  static const SPEI_SOUND_START = 0x00000023;
  static const SPEI_SOUND_END = 0x00000024;
  static const SPEI_PHRASE_START = 0x00000025;
  static const SPEI_RECOGNITION = 0x00000026;
  static const SPEI_HYPOTHESIS = 0x00000027;
  static const SPEI_SR_BOOKMARK = 0x00000028;
  static const SPEI_PROPERTY_NUM_CHANGE = 0x00000029;
  static const SPEI_PROPERTY_STRING_CHANGE = 0x0000002a;
  static const SPEI_FALSE_RECOGNITION = 0x0000002b;
  static const SPEI_INTERFERENCE = 0x0000002c;
  static const SPEI_REQUEST_UI = 0x0000002d;
  static const SPEI_RECO_STATE_CHANGE = 0x0000002e;
  static const SPEI_ADAPTATION = 0x0000002f;
  static const SPEI_START_SR_STREAM = 0x00000030;
  static const SPEI_RECO_OTHER_CONTEXT = 0x00000031;
  static const SPEI_SR_AUDIO_LEVEL = 0x00000032;
  static const SPEI_SR_RETAINEDAUDIO = 0x00000033;
  static const SPEI_SR_PRIVATE = 0x00000034;
  static const SPEI_RESERVED4 = 0x00000035;
  static const SPEI_RESERVED5 = 0x00000036;
  static const SPEI_RESERVED6 = 0x00000037;
  static const SPEI_MIN_SR = 0x00000022;
  static const SPEI_MAX_SR = 0x00000037;
  static const SPEI_RESERVED1 = 0x0000001e;
  static const SPEI_RESERVED2 = 0x00000021;
  static const SPEI_RESERVED3 = 0x0000003f;
}

/// {@category Enum}
class SPEVENTLPARAMTYPE {
  static const SPET_LPARAM_IS_UNDEFINED = 0x00000000;
  static const SPET_LPARAM_IS_TOKEN = 0x00000001;
  static const SPET_LPARAM_IS_OBJECT = 0x00000002;
  static const SPET_LPARAM_IS_POINTER = 0x00000003;
  static const SPET_LPARAM_IS_STRING = 0x00000004;
}

/// {@category Enum}
class SPFILEMODE {
  static const SPFM_OPEN_READONLY = 0x00000000;
  static const SPFM_OPEN_READWRITE = 0x00000001;
  static const SPFM_CREATE = 0x00000002;
  static const SPFM_CREATE_ALWAYS = 0x00000003;
  static const SPFM_NUM_MODES = 0x00000004;
}

/// {@category Enum}
class SPGRAMMAROPTIONS {
  static const SPGO_SAPI = 0x00000001;
  static const SPGO_SRGS = 0x00000002;
  static const SPGO_UPS = 0x00000004;
  static const SPGO_SRGS_MS_SCRIPT = 0x00000008;
  static const SPGO_SRGS_W3C_SCRIPT = 0x00000100;
  static const SPGO_SRGS_STG_SCRIPT = 0x00000200;
  static const SPGO_SRGS_SCRIPT = 0x0000030a;
  static const SPGO_FILE = 0x00000010;
  static const SPGO_HTTP = 0x00000020;
  static const SPGO_RES = 0x00000040;
  static const SPGO_OBJECT = 0x00000080;
  static const SPGO_DEFAULT = 0x000003fb;
  static const SPGO_ALL = 0x000003ff;
}

/// {@category Enum}
class SPGRAMMARSTATE {
  static const SPGS_DISABLED = 0x00000000;
  static const SPGS_ENABLED = 0x00000001;
  static const SPGS_EXCLUSIVE = 0x00000003;
}

/// {@category Enum}
class SPGRAMMARWORDTYPE {
  static const SPWT_DISPLAY = 0x00000000;
  static const SPWT_LEXICAL = 0x00000001;
  static const SPWT_PRONUNCIATION = 0x00000002;
  static const SPWT_LEXICAL_NO_SPECIAL_CHARS = 0x00000003;
}

/// {@category Enum}
class SPINTERFERENCE {
  static const SPINTERFERENCE_NONE = 0x00000000;
  static const SPINTERFERENCE_NOISE = 0x00000001;
  static const SPINTERFERENCE_NOSIGNAL = 0x00000002;
  static const SPINTERFERENCE_TOOLOUD = 0x00000003;
  static const SPINTERFERENCE_TOOQUIET = 0x00000004;
  static const SPINTERFERENCE_TOOFAST = 0x00000005;
  static const SPINTERFERENCE_TOOSLOW = 0x00000006;
  static const SPINTERFERENCE_LATENCY_WARNING = 0x00000007;
  static const SPINTERFERENCE_LATENCY_TRUNCATE_BEGIN = 0x00000008;
  static const SPINTERFERENCE_LATENCY_TRUNCATE_END = 0x00000009;
}

/// {@category Enum}
class SPLEXICONTYPE {
  static const eLEXTYPE_USER = 0x00000001;
  static const eLEXTYPE_APP = 0x00000002;
  static const eLEXTYPE_VENDORLEXICON = 0x00000004;
  static const eLEXTYPE_LETTERTOSOUND = 0x00000008;
  static const eLEXTYPE_MORPHOLOGY = 0x00000010;
  static const eLEXTYPE_RESERVED4 = 0x00000020;
  static const eLEXTYPE_USER_SHORTCUT = 0x00000040;
  static const eLEXTYPE_RESERVED6 = 0x00000080;
  static const eLEXTYPE_RESERVED7 = 0x00000100;
  static const eLEXTYPE_RESERVED8 = 0x00000200;
  static const eLEXTYPE_RESERVED9 = 0x00000400;
  static const eLEXTYPE_RESERVED10 = 0x00000800;
  static const eLEXTYPE_PRIVATE1 = 0x00001000;
  static const eLEXTYPE_PRIVATE2 = 0x00002000;
  static const eLEXTYPE_PRIVATE3 = 0x00004000;
  static const eLEXTYPE_PRIVATE4 = 0x00008000;
  static const eLEXTYPE_PRIVATE5 = 0x00010000;
  static const eLEXTYPE_PRIVATE6 = 0x00020000;
  static const eLEXTYPE_PRIVATE7 = 0x00040000;
  static const eLEXTYPE_PRIVATE8 = 0x00080000;
  static const eLEXTYPE_PRIVATE9 = 0x00100000;
  static const eLEXTYPE_PRIVATE10 = 0x00200000;
  static const eLEXTYPE_PRIVATE11 = 0x00400000;
  static const eLEXTYPE_PRIVATE12 = 0x00800000;
  static const eLEXTYPE_PRIVATE13 = 0x01000000;
  static const eLEXTYPE_PRIVATE14 = 0x02000000;
  static const eLEXTYPE_PRIVATE15 = 0x04000000;
  static const eLEXTYPE_PRIVATE16 = 0x08000000;
  static const eLEXTYPE_PRIVATE17 = 0x10000000;
  static const eLEXTYPE_PRIVATE18 = 0x20000000;
  static const eLEXTYPE_PRIVATE19 = 0x40000000;
  static const eLEXTYPE_PRIVATE20 = 0x80000000;
}

/// {@category Enum}
class SPLOADOPTIONS {
  static const SPLO_STATIC = 0x00000000;
  static const SPLO_DYNAMIC = 0x00000001;
}

/// {@category Enum}
class SPMATCHINGMODE {
  static const AllWords = 0x00000000;
  static const Subsequence = 0x00000001;
  static const OrderedSubset = 0x00000003;
  static const SubsequenceContentRequired = 0x00000005;
  static const OrderedSubsetContentRequired = 0x00000007;
}

/// {@category Enum}
class SPPARTOFSPEECH {
  static const SPPS_NotOverriden = 0xffffffff;
  static const SPPS_Unknown = 0x00000000;
  static const SPPS_Noun = 0x00001000;
  static const SPPS_Verb = 0x00002000;
  static const SPPS_Modifier = 0x00003000;
  static const SPPS_Function = 0x00004000;
  static const SPPS_Interjection = 0x00005000;
  static const SPPS_Noncontent = 0x00006000;
  static const SPPS_LMA = 0x00007000;
  static const SPPS_SuppressWord = 0x0000f000;
}

/// {@category Enum}
class SPPHRASEPROPERTYUNIONTYPE {
  static const SPPPUT_UNUSED = 0x00000000;
  static const SPPPUT_ARRAY_INDEX = 0x00000001;
}

/// {@category Enum}
class SPPHRASERNG {
  static const SPPR_ALL_ELEMENTS = 0xffffffff;
}

/// {@category Enum}
class SPPRONUNCIATIONFLAGS {
  static const ePRONFLAG_USED = 0x00000001;
}

/// {@category Enum}
class SPRECOEVENTFLAGS {
  static const SPREF_AutoPause = 0x00000001;
  static const SPREF_Emulated = 0x00000002;
  static const SPREF_SMLTimeout = 0x00000004;
  static const SPREF_ExtendableParse = 0x00000008;
  static const SPREF_ReSent = 0x00000010;
  static const SPREF_Hypothesis = 0x00000020;
  static const SPREF_FalseRecognition = 0x00000040;
}

/// {@category Enum}
class SPRECOSTATE {
  static const SPRST_INACTIVE = 0x00000000;
  static const SPRST_ACTIVE = 0x00000001;
  static const SPRST_ACTIVE_ALWAYS = 0x00000002;
  static const SPRST_INACTIVE_WITH_PURGE = 0x00000003;
  static const SPRST_NUM_STATES = 0x00000004;
}

/// {@category Enum}
class SPRULESTATE {
  static const SPRS_INACTIVE = 0x00000000;
  static const SPRS_ACTIVE = 0x00000001;
  static const SPRS_ACTIVE_WITH_AUTO_PAUSE = 0x00000003;
  static const SPRS_ACTIVE_USER_DELIMITED = 0x00000004;
}

/// {@category Enum}
class SPRUNSTATE {
  static const SPRS_DONE = 0x00000001;
  static const SPRS_IS_SPEAKING = 0x00000002;
}

/// {@category Enum}
class SPSEMANTICFORMAT {
  static const SPSMF_SAPI_PROPERTIES = 0x00000000;
  static const SPSMF_SRGS_SEMANTICINTERPRETATION_MS = 0x00000001;
  static const SPSMF_SRGS_SAPIPROPERTIES = 0x00000002;
  static const SPSMF_UPS = 0x00000004;
  static const SPSMF_SRGS_SEMANTICINTERPRETATION_W3C = 0x00000008;
}

/// {@category Enum}
class SPSHORTCUTTYPE {
  static const SPSHT_NotOverriden = 0xffffffff;
  static const SPSHT_Unknown = 0x00000000;
  static const SPSHT_EMAIL = 0x00001000;
  static const SPSHT_OTHER = 0x00002000;
  static const SPPS_RESERVED1 = 0x00003000;
  static const SPPS_RESERVED2 = 0x00004000;
  static const SPPS_RESERVED3 = 0x00005000;
  static const SPPS_RESERVED4 = 0x0000f000;
}

/// {@category Enum}
class SPSTREAMFORMAT {
  static const SPSF_Default = 0xffffffff;
  static const SPSF_NoAssignedFormat = 0x00000000;
  static const SPSF_Text = 0x00000001;
  static const SPSF_NonStandardFormat = 0x00000002;
  static const SPSF_ExtendedAudioFormat = 0x00000003;
  static const SPSF_8kHz8BitMono = 0x00000004;
  static const SPSF_8kHz8BitStereo = 0x00000005;
  static const SPSF_8kHz16BitMono = 0x00000006;
  static const SPSF_8kHz16BitStereo = 0x00000007;
  static const SPSF_11kHz8BitMono = 0x00000008;
  static const SPSF_11kHz8BitStereo = 0x00000009;
  static const SPSF_11kHz16BitMono = 0x0000000a;
  static const SPSF_11kHz16BitStereo = 0x0000000b;
  static const SPSF_12kHz8BitMono = 0x0000000c;
  static const SPSF_12kHz8BitStereo = 0x0000000d;
  static const SPSF_12kHz16BitMono = 0x0000000e;
  static const SPSF_12kHz16BitStereo = 0x0000000f;
  static const SPSF_16kHz8BitMono = 0x00000010;
  static const SPSF_16kHz8BitStereo = 0x00000011;
  static const SPSF_16kHz16BitMono = 0x00000012;
  static const SPSF_16kHz16BitStereo = 0x00000013;
  static const SPSF_22kHz8BitMono = 0x00000014;
  static const SPSF_22kHz8BitStereo = 0x00000015;
  static const SPSF_22kHz16BitMono = 0x00000016;
  static const SPSF_22kHz16BitStereo = 0x00000017;
  static const SPSF_24kHz8BitMono = 0x00000018;
  static const SPSF_24kHz8BitStereo = 0x00000019;
  static const SPSF_24kHz16BitMono = 0x0000001a;
  static const SPSF_24kHz16BitStereo = 0x0000001b;
  static const SPSF_32kHz8BitMono = 0x0000001c;
  static const SPSF_32kHz8BitStereo = 0x0000001d;
  static const SPSF_32kHz16BitMono = 0x0000001e;
  static const SPSF_32kHz16BitStereo = 0x0000001f;
  static const SPSF_44kHz8BitMono = 0x00000020;
  static const SPSF_44kHz8BitStereo = 0x00000021;
  static const SPSF_44kHz16BitMono = 0x00000022;
  static const SPSF_44kHz16BitStereo = 0x00000023;
  static const SPSF_48kHz8BitMono = 0x00000024;
  static const SPSF_48kHz8BitStereo = 0x00000025;
  static const SPSF_48kHz16BitMono = 0x00000026;
  static const SPSF_48kHz16BitStereo = 0x00000027;
  static const SPSF_TrueSpeech_8kHz1BitMono = 0x00000028;
  static const SPSF_CCITT_ALaw_8kHzMono = 0x00000029;
  static const SPSF_CCITT_ALaw_8kHzStereo = 0x0000002a;
  static const SPSF_CCITT_ALaw_11kHzMono = 0x0000002b;
  static const SPSF_CCITT_ALaw_11kHzStereo = 0x0000002c;
  static const SPSF_CCITT_ALaw_22kHzMono = 0x0000002d;
  static const SPSF_CCITT_ALaw_22kHzStereo = 0x0000002e;
  static const SPSF_CCITT_ALaw_44kHzMono = 0x0000002f;
  static const SPSF_CCITT_ALaw_44kHzStereo = 0x00000030;
  static const SPSF_CCITT_uLaw_8kHzMono = 0x00000031;
  static const SPSF_CCITT_uLaw_8kHzStereo = 0x00000032;
  static const SPSF_CCITT_uLaw_11kHzMono = 0x00000033;
  static const SPSF_CCITT_uLaw_11kHzStereo = 0x00000034;
  static const SPSF_CCITT_uLaw_22kHzMono = 0x00000035;
  static const SPSF_CCITT_uLaw_22kHzStereo = 0x00000036;
  static const SPSF_CCITT_uLaw_44kHzMono = 0x00000037;
  static const SPSF_CCITT_uLaw_44kHzStereo = 0x00000038;
  static const SPSF_ADPCM_8kHzMono = 0x00000039;
  static const SPSF_ADPCM_8kHzStereo = 0x0000003a;
  static const SPSF_ADPCM_11kHzMono = 0x0000003b;
  static const SPSF_ADPCM_11kHzStereo = 0x0000003c;
  static const SPSF_ADPCM_22kHzMono = 0x0000003d;
  static const SPSF_ADPCM_22kHzStereo = 0x0000003e;
  static const SPSF_ADPCM_44kHzMono = 0x0000003f;
  static const SPSF_ADPCM_44kHzStereo = 0x00000040;
  static const SPSF_GSM610_8kHzMono = 0x00000041;
  static const SPSF_GSM610_11kHzMono = 0x00000042;
  static const SPSF_GSM610_22kHzMono = 0x00000043;
  static const SPSF_GSM610_44kHzMono = 0x00000044;
  static const SPSF_NUM_FORMATS = 0x00000045;
}

/// {@category Enum}
class SPVACTIONS {
  static const SPVA_Speak = 0x00000000;
  static const SPVA_Silence = 0x00000001;
  static const SPVA_Pronounce = 0x00000002;
  static const SPVA_Bookmark = 0x00000003;
  static const SPVA_SpellOut = 0x00000004;
  static const SPVA_Section = 0x00000005;
  static const SPVA_ParseUnknownTag = 0x00000006;
}

/// {@category Enum}
class SPVALUETYPE {
  static const SPDF_PROPERTY = 0x00000001;
  static const SPDF_REPLACEMENT = 0x00000002;
  static const SPDF_RULE = 0x00000004;
  static const SPDF_DISPLAYTEXT = 0x00000008;
  static const SPDF_LEXICALFORM = 0x00000010;
  static const SPDF_PRONUNCIATION = 0x00000020;
  static const SPDF_AUDIO = 0x00000040;
  static const SPDF_ALTERNATES = 0x00000080;
  static const SPDF_ALL = 0x000000ff;
}

/// {@category Enum}
class SPVFEATURE {
  static const SPVFEATURE_STRESSED = 0x00000001;
  static const SPVFEATURE_EMPHASIS = 0x00000002;
}

/// {@category Enum}
class SPVISEMES {
  static const SP_VISEME_0 = 0x00000000;
  static const SP_VISEME_1 = 0x00000001;
  static const SP_VISEME_2 = 0x00000002;
  static const SP_VISEME_3 = 0x00000003;
  static const SP_VISEME_4 = 0x00000004;
  static const SP_VISEME_5 = 0x00000005;
  static const SP_VISEME_6 = 0x00000006;
  static const SP_VISEME_7 = 0x00000007;
  static const SP_VISEME_8 = 0x00000008;
  static const SP_VISEME_9 = 0x00000009;
  static const SP_VISEME_10 = 0x0000000a;
  static const SP_VISEME_11 = 0x0000000b;
  static const SP_VISEME_12 = 0x0000000c;
  static const SP_VISEME_13 = 0x0000000d;
  static const SP_VISEME_14 = 0x0000000e;
  static const SP_VISEME_15 = 0x0000000f;
  static const SP_VISEME_16 = 0x00000010;
  static const SP_VISEME_17 = 0x00000011;
  static const SP_VISEME_18 = 0x00000012;
  static const SP_VISEME_19 = 0x00000013;
  static const SP_VISEME_20 = 0x00000014;
  static const SP_VISEME_21 = 0x00000015;
}

/// {@category Enum}
class SPVLIMITS {
  static const SPMIN_VOLUME = 0x00000000;
  static const SPMAX_VOLUME = 0x00000064;
  static const SPMIN_RATE = 0xfffffff6;
  static const SPMAX_RATE = 0x0000000a;
}

/// {@category Enum}
class SPVPRIORITY {
  static const SPVPRI_NORMAL = 0x00000000;
  static const SPVPRI_ALERT = 0x00000001;
  static const SPVPRI_OVER = 0x00000002;
}

/// {@category Enum}
class SPWAVEFORMATTYPE {
  static const SPWF_INPUT = 0x00000000;
  static const SPWF_SRENGINE = 0x00000001;
}

/// {@category Enum}
class SPWORDPRONOUNCEABLE {
  static const SPWP_UNKNOWN_WORD_UNPRONOUNCEABLE = 0x00000000;
  static const SPWP_UNKNOWN_WORD_PRONOUNCEABLE = 0x00000001;
  static const SPWP_KNOWN_WORD_PRONOUNCEABLE = 0x00000002;
}

/// {@category Enum}
class SPWORDTYPE {
  static const eWORDTYPE_ADDED = 0x00000001;
  static const eWORDTYPE_DELETED = 0x00000002;
}

/// {@category Enum}
class SPXMLRESULTOPTIONS {
  static const SPXRO_SML = 0x00000000;
  static const SPXRO_Alternates_SML = 0x00000001;
}

/// {@category Enum}
class SpeechAudioFormatType {
  static const SAFTDefault = 0xffffffff;
  static const SAFTNoAssignedFormat = 0x00000000;
  static const SAFTText = 0x00000001;
  static const SAFTNonStandardFormat = 0x00000002;
  static const SAFTExtendedAudioFormat = 0x00000003;
  static const SAFT8kHz8BitMono = 0x00000004;
  static const SAFT8kHz8BitStereo = 0x00000005;
  static const SAFT8kHz16BitMono = 0x00000006;
  static const SAFT8kHz16BitStereo = 0x00000007;
  static const SAFT11kHz8BitMono = 0x00000008;
  static const SAFT11kHz8BitStereo = 0x00000009;
  static const SAFT11kHz16BitMono = 0x0000000a;
  static const SAFT11kHz16BitStereo = 0x0000000b;
  static const SAFT12kHz8BitMono = 0x0000000c;
  static const SAFT12kHz8BitStereo = 0x0000000d;
  static const SAFT12kHz16BitMono = 0x0000000e;
  static const SAFT12kHz16BitStereo = 0x0000000f;
  static const SAFT16kHz8BitMono = 0x00000010;
  static const SAFT16kHz8BitStereo = 0x00000011;
  static const SAFT16kHz16BitMono = 0x00000012;
  static const SAFT16kHz16BitStereo = 0x00000013;
  static const SAFT22kHz8BitMono = 0x00000014;
  static const SAFT22kHz8BitStereo = 0x00000015;
  static const SAFT22kHz16BitMono = 0x00000016;
  static const SAFT22kHz16BitStereo = 0x00000017;
  static const SAFT24kHz8BitMono = 0x00000018;
  static const SAFT24kHz8BitStereo = 0x00000019;
  static const SAFT24kHz16BitMono = 0x0000001a;
  static const SAFT24kHz16BitStereo = 0x0000001b;
  static const SAFT32kHz8BitMono = 0x0000001c;
  static const SAFT32kHz8BitStereo = 0x0000001d;
  static const SAFT32kHz16BitMono = 0x0000001e;
  static const SAFT32kHz16BitStereo = 0x0000001f;
  static const SAFT44kHz8BitMono = 0x00000020;
  static const SAFT44kHz8BitStereo = 0x00000021;
  static const SAFT44kHz16BitMono = 0x00000022;
  static const SAFT44kHz16BitStereo = 0x00000023;
  static const SAFT48kHz8BitMono = 0x00000024;
  static const SAFT48kHz8BitStereo = 0x00000025;
  static const SAFT48kHz16BitMono = 0x00000026;
  static const SAFT48kHz16BitStereo = 0x00000027;
  static const SAFTTrueSpeech_8kHz1BitMono = 0x00000028;
  static const SAFTCCITT_ALaw_8kHzMono = 0x00000029;
  static const SAFTCCITT_ALaw_8kHzStereo = 0x0000002a;
  static const SAFTCCITT_ALaw_11kHzMono = 0x0000002b;
  static const SAFTCCITT_ALaw_11kHzStereo = 0x0000002c;
  static const SAFTCCITT_ALaw_22kHzMono = 0x0000002d;
  static const SAFTCCITT_ALaw_22kHzStereo = 0x0000002e;
  static const SAFTCCITT_ALaw_44kHzMono = 0x0000002f;
  static const SAFTCCITT_ALaw_44kHzStereo = 0x00000030;
  static const SAFTCCITT_uLaw_8kHzMono = 0x00000031;
  static const SAFTCCITT_uLaw_8kHzStereo = 0x00000032;
  static const SAFTCCITT_uLaw_11kHzMono = 0x00000033;
  static const SAFTCCITT_uLaw_11kHzStereo = 0x00000034;
  static const SAFTCCITT_uLaw_22kHzMono = 0x00000035;
  static const SAFTCCITT_uLaw_22kHzStereo = 0x00000036;
  static const SAFTCCITT_uLaw_44kHzMono = 0x00000037;
  static const SAFTCCITT_uLaw_44kHzStereo = 0x00000038;
  static const SAFTADPCM_8kHzMono = 0x00000039;
  static const SAFTADPCM_8kHzStereo = 0x0000003a;
  static const SAFTADPCM_11kHzMono = 0x0000003b;
  static const SAFTADPCM_11kHzStereo = 0x0000003c;
  static const SAFTADPCM_22kHzMono = 0x0000003d;
  static const SAFTADPCM_22kHzStereo = 0x0000003e;
  static const SAFTADPCM_44kHzMono = 0x0000003f;
  static const SAFTADPCM_44kHzStereo = 0x00000040;
  static const SAFTGSM610_8kHzMono = 0x00000041;
  static const SAFTGSM610_11kHzMono = 0x00000042;
  static const SAFTGSM610_22kHzMono = 0x00000043;
  static const SAFTGSM610_44kHzMono = 0x00000044;
}

/// {@category Enum}
class SpeechAudioState {
  static const SASClosed = 0x00000000;
  static const SASStop = 0x00000001;
  static const SASPause = 0x00000002;
  static const SASRun = 0x00000003;
}

/// {@category Enum}
class SpeechBookmarkOptions {
  static const SBONone = 0x00000000;
  static const SBOPause = 0x00000001;
}

/// {@category Enum}
class SpeechDataKeyLocation {
  static const SDKLDefaultLocation = 0x00000000;
  static const SDKLCurrentUser = 0x00000001;
  static const SDKLLocalMachine = 0x00000002;
  static const SDKLCurrentConfig = 0x00000005;
}

/// {@category Enum}
class SpeechDiscardType {
  static const SDTProperty = 0x00000001;
  static const SDTReplacement = 0x00000002;
  static const SDTRule = 0x00000004;
  static const SDTDisplayText = 0x00000008;
  static const SDTLexicalForm = 0x00000010;
  static const SDTPronunciation = 0x00000020;
  static const SDTAudio = 0x00000040;
  static const SDTAlternates = 0x00000080;
  static const SDTAll = 0x000000ff;
}

/// {@category Enum}
class SpeechDisplayAttributes {
  static const SDA_No_Trailing_Space = 0x00000000;
  static const SDA_One_Trailing_Space = 0x00000002;
  static const SDA_Two_Trailing_Spaces = 0x00000004;
  static const SDA_Consume_Leading_Spaces = 0x00000008;
}

/// {@category Enum}
class SpeechEmulationCompareFlags {
  static const SECFIgnoreCase = 0x00000001;
  static const SECFIgnoreKanaType = 0x00010000;
  static const SECFIgnoreWidth = 0x00020000;
  static const SECFNoSpecialChars = 0x20000000;
  static const SECFEmulateResult = 0x40000000;
  static const SECFDefault = 0x00030001;
}

/// {@category Enum}
class SpeechEngineConfidence {
  static const SECLowConfidence = 0xffffffff;
  static const SECNormalConfidence = 0x00000000;
  static const SECHighConfidence = 0x00000001;
}

/// {@category Enum}
class SpeechFormatType {
  static const SFTInput = 0x00000000;
  static const SFTSREngine = 0x00000001;
}

/// {@category Enum}
class SpeechGrammarRuleStateTransitionType {
  static const SGRSTTEpsilon = 0x00000000;
  static const SGRSTTWord = 0x00000001;
  static const SGRSTTRule = 0x00000002;
  static const SGRSTTDictation = 0x00000003;
  static const SGRSTTWildcard = 0x00000004;
  static const SGRSTTTextBuffer = 0x00000005;
}

/// {@category Enum}
class SpeechGrammarState {
  static const SGSEnabled = 0x00000001;
  static const SGSDisabled = 0x00000000;
  static const SGSExclusive = 0x00000003;
}

/// {@category Enum}
class SpeechGrammarWordType {
  static const SGDisplay = 0x00000000;
  static const SGLexical = 0x00000001;
  static const SGPronounciation = 0x00000002;
  static const SGLexicalNoSpecialChars = 0x00000003;
}

/// {@category Enum}
class SpeechInterference {
  static const SINone = 0x00000000;
  static const SINoise = 0x00000001;
  static const SINoSignal = 0x00000002;
  static const SITooLoud = 0x00000003;
  static const SITooQuiet = 0x00000004;
  static const SITooFast = 0x00000005;
  static const SITooSlow = 0x00000006;
}

/// {@category Enum}
class SpeechLexiconType {
  static const SLTUser = 0x00000001;
  static const SLTApp = 0x00000002;
}

/// {@category Enum}
class SpeechLoadOption {
  static const SLOStatic = 0x00000000;
  static const SLODynamic = 0x00000001;
}

/// {@category Enum}
class SpeechPartOfSpeech {
  static const SPSNotOverriden = 0xffffffff;
  static const SPSUnknown = 0x00000000;
  static const SPSNoun = 0x00001000;
  static const SPSVerb = 0x00002000;
  static const SPSModifier = 0x00003000;
  static const SPSFunction = 0x00004000;
  static const SPSInterjection = 0x00005000;
  static const SPSLMA = 0x00007000;
  static const SPSSuppressWord = 0x0000f000;
}

/// {@category Enum}
class SpeechRecoContextState {
  static const SRCS_Disabled = 0x00000000;
  static const SRCS_Enabled = 0x00000001;
}

/// {@category Enum}
class SpeechRecoEvents {
  static const SREStreamEnd = 0x00000001;
  static const SRESoundStart = 0x00000002;
  static const SRESoundEnd = 0x00000004;
  static const SREPhraseStart = 0x00000008;
  static const SRERecognition = 0x00000010;
  static const SREHypothesis = 0x00000020;
  static const SREBookmark = 0x00000040;
  static const SREPropertyNumChange = 0x00000080;
  static const SREPropertyStringChange = 0x00000100;
  static const SREFalseRecognition = 0x00000200;
  static const SREInterference = 0x00000400;
  static const SRERequestUI = 0x00000800;
  static const SREStateChange = 0x00001000;
  static const SREAdaptation = 0x00002000;
  static const SREStreamStart = 0x00004000;
  static const SRERecoOtherContext = 0x00008000;
  static const SREAudioLevel = 0x00010000;
  static const SREPrivate = 0x00040000;
  static const SREAllEvents = 0x0005ffff;
}

/// {@category Enum}
class SpeechRecognitionType {
  static const SRTStandard = 0x00000000;
  static const SRTAutopause = 0x00000001;
  static const SRTEmulated = 0x00000002;
  static const SRTSMLTimeout = 0x00000004;
  static const SRTExtendableParse = 0x00000008;
  static const SRTReSent = 0x00000010;
}

/// {@category Enum}
class SpeechRecognizerState {
  static const SRSInactive = 0x00000000;
  static const SRSActive = 0x00000001;
  static const SRSActiveAlways = 0x00000002;
  static const SRSInactiveWithPurge = 0x00000003;
}

/// {@category Enum}
class SpeechRetainedAudioOptions {
  static const SRAONone = 0x00000000;
  static const SRAORetainAudio = 0x00000001;
}

/// {@category Enum}
class SpeechRuleAttributes {
  static const SRATopLevel = 0x00000001;
  static const SRADefaultToActive = 0x00000002;
  static const SRAExport = 0x00000004;
  static const SRAImport = 0x00000008;
  static const SRAInterpreter = 0x00000010;
  static const SRADynamic = 0x00000020;
  static const SRARoot = 0x00000040;
}

/// {@category Enum}
class SpeechRuleState {
  static const SGDSInactive = 0x00000000;
  static const SGDSActive = 0x00000001;
  static const SGDSActiveWithAutoPause = 0x00000003;
  static const SGDSActiveUserDelimited = 0x00000004;
}

/// {@category Enum}
class SpeechRunState {
  static const SRSEDone = 0x00000001;
  static const SRSEIsSpeaking = 0x00000002;
}

/// {@category Enum}
class SpeechSpecialTransitionType {
  static const SSTTWildcard = 0x00000001;
  static const SSTTDictation = 0x00000002;
  static const SSTTTextBuffer = 0x00000003;
}

/// {@category Enum}
class SpeechStreamFileMode {
  static const SSFMOpenForRead = 0x00000000;
  static const SSFMOpenReadWrite = 0x00000001;
  static const SSFMCreate = 0x00000002;
  static const SSFMCreateForWrite = 0x00000003;
}

/// {@category Enum}
class SpeechStreamSeekPositionType {
  static const SSSPTRelativeToStart = 0x00000000;
  static const SSSPTRelativeToCurrentPosition = 0x00000001;
  static const SSSPTRelativeToEnd = 0x00000002;
}

/// {@category Enum}
class SpeechTokenContext {
  static const STCInprocServer = 0x00000001;
  static const STCInprocHandler = 0x00000002;
  static const STCLocalServer = 0x00000004;
  static const STCRemoteServer = 0x00000010;
  static const STCAll = 0x00000017;
}

/// {@category Enum}
class SpeechTokenShellFolder {
  static const STSF_AppData = 0x0000001a;
  static const STSF_LocalAppData = 0x0000001c;
  static const STSF_CommonAppData = 0x00000023;
  static const STSF_FlagCreate = 0x00008000;
}

/// {@category Enum}
class SpeechVisemeFeature {
  static const SVF_None = 0x00000000;
  static const SVF_Stressed = 0x00000001;
  static const SVF_Emphasis = 0x00000002;
}

/// {@category Enum}
class SpeechVisemeType {
  static const SVP_0 = 0x00000000;
  static const SVP_1 = 0x00000001;
  static const SVP_2 = 0x00000002;
  static const SVP_3 = 0x00000003;
  static const SVP_4 = 0x00000004;
  static const SVP_5 = 0x00000005;
  static const SVP_6 = 0x00000006;
  static const SVP_7 = 0x00000007;
  static const SVP_8 = 0x00000008;
  static const SVP_9 = 0x00000009;
  static const SVP_10 = 0x0000000a;
  static const SVP_11 = 0x0000000b;
  static const SVP_12 = 0x0000000c;
  static const SVP_13 = 0x0000000d;
  static const SVP_14 = 0x0000000e;
  static const SVP_15 = 0x0000000f;
  static const SVP_16 = 0x00000010;
  static const SVP_17 = 0x00000011;
  static const SVP_18 = 0x00000012;
  static const SVP_19 = 0x00000013;
  static const SVP_20 = 0x00000014;
  static const SVP_21 = 0x00000015;
}

/// {@category Enum}
class SpeechVoiceEvents {
  static const SVEStartInputStream = 0x00000002;
  static const SVEEndInputStream = 0x00000004;
  static const SVEVoiceChange = 0x00000008;
  static const SVEBookmark = 0x00000010;
  static const SVEWordBoundary = 0x00000020;
  static const SVEPhoneme = 0x00000040;
  static const SVESentenceBoundary = 0x00000080;
  static const SVEViseme = 0x00000100;
  static const SVEAudioLevel = 0x00000200;
  static const SVEPrivate = 0x00008000;
  static const SVEAllEvents = 0x000083fe;
}

/// {@category Enum}
class SpeechVoicePriority {
  static const SVPNormal = 0x00000000;
  static const SVPAlert = 0x00000001;
  static const SVPOver = 0x00000002;
}

/// {@category Enum}
class SpeechVoiceSpeakFlags {
  static const SVSFDefault = 0x00000000;
  static const SVSFlagsAsync = 0x00000001;
  static const SVSFPurgeBeforeSpeak = 0x00000002;
  static const SVSFIsFilename = 0x00000004;
  static const SVSFIsXML = 0x00000008;
  static const SVSFIsNotXML = 0x00000010;
  static const SVSFPersistXML = 0x00000020;
  static const SVSFNLPSpeakPunc = 0x00000040;
  static const SVSFParseSapi = 0x00000080;
  static const SVSFParseSsml = 0x00000100;
  static const SVSFParseAutodetect = 0x00000000;
  static const SVSFNLPMask = 0x00000040;
  static const SVSFParseMask = 0x00000180;
  static const SVSFVoiceMask = 0x000001ff;
  static const SVSFUnusedFlags = 0xfffffe00;
}

/// {@category Enum}
class SpeechWordPronounceable {
  static const SWPUnknownWordUnpronounceable = 0x00000000;
  static const SWPUnknownWordPronounceable = 0x00000001;
  static const SWPKnownWordPronounceable = 0x00000002;
}

/// {@category Enum}
class SpeechWordType {
  static const SWTAdded = 0x00000001;
  static const SWTDeleted = 0x00000002;
}


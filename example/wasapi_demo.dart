import 'dart:ffi';
import 'dart:math';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

int WAVE_FORMAT_EXTENSIBLE = 0xFFFE;
double REFTIMES_PER_SEC = 5000000;
double REFTIMES_PER_MILLISEC = 10000;

class AUDCLNT_SHAREMODE {
  static int AUDCLNT_SHAREMODE_SHARED = 0;
  static int AUDCLNT_SHAREMODE_EXCLUSIVE = 1;
}

class AUDCLNT_BUFFERFLAGS {
  static int AUDCLNT_BUFFERFLAGS_DATA_DISCONTINUITY = 0x1;
  static int AUDCLNT_BUFFERFLAGS_SILENT = 0x2;
  static int AUDCLNT_BUFFERFLAGS_TIMESTAMP_ERROR = 0x4;
}

class SAMPLES extends Union {
  @Uint16()
  external int wValidBitsPerSample; /* bits of precision  */
  @Uint16()
  external int wSamplesPerBlock; /* valid if wBitsPerSample==0 */
  @Uint16()
  external int wReserved; /* If neither applies, set to zero. */
  @Uint32()
  external int dwChannelMask; /* which channels are present in stream  */
}

class WAVEFORMATEXTENSIBLE extends Struct {
  external WAVEFORMATEX Format;
  external SAMPLES Samples;
  external GUID Guid;
}

class MyAudioSource {
  double frequency;
  late Float32List _pcmAudio;
  static const int _sampleCount = 96000 * 2;
  late WAVEFORMATEXTENSIBLE _format;
  bool _initialised = false;
  late int _bufferSize;
  int _pcmPos = 0;
  int _bufferPos = 0;

  MyAudioSource(this.frequency);
  void _init() {
    _pcmAudio = Float32List(_sampleCount);
    final radsPerSec =
        2 * 3.1415926536 * frequency / _format.Format.nSamplesPerSec.toDouble();
    for (var i = 0; i < _sampleCount; i++) {
      final sampleValue = sin(radsPerSec * i);
      _pcmAudio[i] = sampleValue;
    }
    _initialised = true;
  }

  int SetFormat(Pointer<WAVEFORMATEX> wfex) {
    if (wfex.ref.wFormatTag == WAVE_FORMAT_EXTENSIBLE) {
      // ignore: omit_local_variable_types
      final Pointer<WAVEFORMATEXTENSIBLE> format = wfex.cast();
      _format = format.ref;
    } else {
      _format.Format = wfex.ref;
      _format.Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
      _format.Guid = GUIDFromString("00000000-0000-0010-8000-00aa00389b71").ref;
      _format.Guid.Data1 = wfex.ref.wFormatTag;
      _format.Samples.wValidBitsPerSample = _format.Format.wBitsPerSample;
      _format.Samples.dwChannelMask = 0;
    }
    print("Channel Count = ${_format.Format.nChannels}");
    final formatTag = _format.Guid.Data1;
    switch (formatTag) {
      case 0x0003:
        print("Audio Format = WAVE_FORMAT_IEEE_FLOAT");
        break;
      case 1:
        print("Audio Format = WAVE_FORMAT_PCM");
        break;
      default:
        print("Audio Format = Wave Format Unknown");
        break;
    }

    return 0;
  }

  int LoadData(int totalFrames, Pointer<BYTE> dataOut, Pointer<DWORD> flags) {
    // ignore: omit_local_variable_types
    final Pointer<FLOAT> fData = dataOut.cast();
    final totalSamples = totalFrames * _format.Format.nChannels;
    if (!_initialised) {
      print("init");
      _init();
      _bufferSize = totalFrames * _format.Format.nChannels;
      print("bufferSize = $_bufferSize");
      print("sampsPerChan = ${totalFrames / _format.Format.nChannels}");
    } else {
      print("Frames to Fill = $totalFrames");
      print("Samples to Fill = $totalSamples");
      print("bufferPos = $_bufferPos");
    }

    if (_pcmPos < _sampleCount) {
      for (var i = 0; i < totalSamples; i += _format.Format.nChannels) {
        for (var chan = 0; chan < _format.Format.nChannels; chan++) {
          fData[i + chan] = (_pcmPos < _sampleCount) ? _pcmAudio[_pcmPos] : 0.0;
        }
        _pcmPos++;
      }
      _bufferPos += totalSamples;
      _bufferPos %= _bufferSize;
    } else {
      flags.value = AUDCLNT_BUFFERFLAGS.AUDCLNT_BUFFERFLAGS_SILENT;
    }
    return 0;
  }
}

void _check(int hr) {
  if (FAILED(hr)) throw WindowsException(hr);
}

void main() {
  // Initialize COM
  print("CoCreateInstance");
  _check(CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE));

  final pDeviceEnumerator = IMMDeviceEnumerator(COMObject.createFromID(
      CLSID_MMDeviceEnumerator, IID_IMMDeviceEnumerator));
  print('Created deviceEnumerator.\n'
      'deviceEnumerator.ptr is  ${pDeviceEnumerator.ptr.address.toHexString(64)}');
  final eRender = 0;
  final eConsole = 0;
  final ppDevice = calloc<Pointer<COMObject>>();
  print("GetDefaultAudioEndpoint");
  _check(
      pDeviceEnumerator.GetDefaultAudioEndpoint(eRender, eConsole, ppDevice));

  final pDevice = IMMDevice(ppDevice.cast());
  final iid = convertToIID(IID_IAudioClient);
  final ppAudioClient = calloc<Pointer<COMObject>>();
  print("Activate");
  _check(pDevice.Activate(iid, CLSCTX_ALL, nullptr, ppAudioClient));

  final pAudioRenderClient = IAudioClient(ppAudioClient.cast());
  final ppFormat = calloc<Pointer<WAVEFORMATEX>>();
  print("GetMixFormat");
  _check(pAudioRenderClient.GetMixFormat(ppFormat));
  final waveFormat = ppFormat.value.ref;
  print("Samples per second = ${waveFormat.nSamplesPerSec}");
  final hnsRequestedDuration = 5000000;
  print("Initialize");
  _check(pAudioRenderClient.Initialize(
      AUDCLNT_SHAREMODE.AUDCLNT_SHAREMODE_SHARED,
      0,
      hnsRequestedDuration,
      0,
      ppFormat.value,
      nullptr));

  // Get back the effective latency from AudioClient. On Windows 10 it can be 0
  final phnsLatency = calloc<Int64>();
  _check(pAudioRenderClient.GetStreamLatency(phnsLatency));
  print("Latency = ${phnsLatency.value}");

  final mySource = MyAudioSource(510)
    // Tell the audio source which format to use.
    ..SetFormat(ppFormat.value);

  final pBufferFrameCount = calloc<Uint32>();
  print("GetBufferSize");
  _check(pAudioRenderClient.GetBufferSize(pBufferFrameCount));
  final bufferFrameCount = pBufferFrameCount.value;
  print("Buffer Size = $bufferFrameCount");

  final ppAudioRenderClient = calloc<Pointer<COMObject>>();
  print("GetService");
  _check(pAudioRenderClient.GetService(
      convertToIID(IID_IAudioRenderClient), ppAudioRenderClient));
  final pRenderClient = IAudioRenderClient(ppAudioRenderClient.cast());

  // Grab the entire buffer for the initial fill operation.
  final pData = calloc<Pointer<BYTE>>();
  _check(pRenderClient.GetBuffer(bufferFrameCount, pData));

  final pFlags = calloc<DWORD>();
  // Load the initial data into the shared buffer.
  _check(mySource.LoadData(bufferFrameCount, pData.value, pFlags));
  _check(pRenderClient.ReleaseBuffer(bufferFrameCount, pFlags.value));

  // Calculate the actual duration of the allocated buffer.
  final hnsActualDuration =
      REFTIMES_PER_SEC * bufferFrameCount / waveFormat.nSamplesPerSec;

  _check(pAudioRenderClient.Start()); // Start playing.
  final pNumFramesPadding = calloc<UINT32>();

  while (pFlags.value != AUDCLNT_BUFFERFLAGS.AUDCLNT_BUFFERFLAGS_SILENT) {
    // Sleep for half the buffer duration.
    Sleep(hnsActualDuration / REFTIMES_PER_MILLISEC ~/ 2);
    // See how much buffer space is available.
    _check(pAudioRenderClient.GetCurrentPadding(pNumFramesPadding));
    final numFramesAvailable = bufferFrameCount - pNumFramesPadding.value;
    // Grab all the available space in the shared buffer.
    _check(pRenderClient.GetBuffer(numFramesAvailable, pData));
    // Get next 1/2-second of data from the audio source.
    _check(mySource.LoadData(numFramesAvailable, pData.value, pFlags));
    _check(pRenderClient.ReleaseBuffer(numFramesAvailable, pFlags.value));
  }

  // Wait for last data in buffer to play before stopping.
  Sleep(hnsActualDuration / REFTIMES_PER_MILLISEC ~/ 2);
  _check(pAudioRenderClient.Stop()); // Stop playing.

  // Clear up
  pDeviceEnumerator.Release();
  free(pDeviceEnumerator.ptr);
  pDevice.Release();
  free(ppDevice);
  pAudioRenderClient.Release();
  free(ppAudioClient);
  pRenderClient.Release();
  free(ppFormat);
  free(pBufferFrameCount);
  free(ppAudioRenderClient);
  free(pData);
  free(pFlags);
  free(pNumFramesPadding);
  free(phnsLatency);

  // Uninitialize COM now that we're done with it.
  CoUninitialize();
  print('All done!');
}

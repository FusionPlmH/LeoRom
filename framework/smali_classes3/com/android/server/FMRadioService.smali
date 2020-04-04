.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$ScanThread;,
        Lcom/android/server/FMRadioService$ListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final ACTION_CAMERA_START:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_START"

.field private static final ACTION_DNS_PAUSE_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.pause_internet_stream"

.field private static final ACTION_DNS_RESUME_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.resume_internet_stream"

.field private static final ACTION_DNS_STOP_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.stop_internet_stream"

.field private static final ACTION_MUSIC_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final ACTION_SAVE_FMRECORDING_ONLY:Ljava/lang/String; = "com.samsung.media.save_fmrecording_only"

.field private static final ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.sec.android.fm.volume_lock"

.field private static final ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.sec.android.fm.volume_unlock"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DELAY_WAITING_STREAM_STOPPED:I = 0x96

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field private static final DISABLE_SLIMBUS_DATA_PORT:I = 0x0

.field private static final ENABLE_SLIMBUS_DATA_PORT:I = 0x1

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field static final EVENT_REC_FINISH:I = 0x11

.field static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final EVENT_VOLUME_LOCK:I = 0xf

.field private static final FACTORY_APP_NAME:Ljava/lang/String; = "com.sec.factory.app.fm"

.field private static final FMRADIO_CTS_APP_NAME:Ljava/lang/String; = "com.samsung.cts.SamsungMediaFmradio"

.field private static final FMTEST_APP_NAME:Ljava/lang/String; = "com.sec.android.fmtestapp"

.field private static final KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.sec.android.fm.return_back_volume"

.field private static final KNOX_MODE_USER_SWITCH:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final NEXTRADIO_NAME:Ljava/lang/String; = "com.nextradioapp.nextradio"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_MOTION_LISTENER:I = 0x15

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field private static final PARAMETER_AFRMSSI_SAMPLES:Ljava/lang/String; = "AFRMSSISamples"

.field private static final PARAMETER_AFRMSSI_TH:Ljava/lang/String; = "AFRMSSIThreshold"

.field private static final PARAMETER_AF_TH:Ljava/lang/String; = "AF_th"

.field private static final PARAMETER_AF_VALID_TH:Ljava/lang/String; = "AFValid_th"

.field private static final PARAMETER_ATJ_CONFIG:Ljava/lang/String; = "ATJCofig"

.field private static final PARAMETER_BLEND_PAMD_TH:Ljava/lang/String; = "BlendPAMD_th"

.field private static final PARAMETER_BLEND_RMSSI:Ljava/lang/String; = "BlendRmssi"

.field private static final PARAMETER_BLEND_RSSI_TH:Ljava/lang/String; = "BlendRSSI_th"

.field private static final PARAMETER_BLEND_SINR:Ljava/lang/String; = "BlendSinr"

.field private static final PARAMETER_CFO_TH:Ljava/lang/String; = "CFOTh12"

.field private static final PARAMETER_CURRENT_RSSI:Ljava/lang/String; = "CurrentRSSI"

.field private static final PARAMETER_CURRENT_SNR:Ljava/lang/String; = "CurrentSNR"

.field private static final PARAMETER_DESENSE_LIST:Ljava/lang/String; = "DeSenseList"

.field private static final PARAMETER_DE_CONSTANT:Ljava/lang/String; = "DEConstant"

.field private static final PARAMETER_FAKE_CHANNEL:Ljava/lang/String; = "FakeChannel"

.field private static final PARAMETER_FIRST_CNT_TH:Ljava/lang/String; = "Cnt_th"

.field private static final PARAMETER_FIRST_RSSI_TH:Ljava/lang/String; = "RSSI_th"

.field private static final PARAMETER_FIRST_SNR_TH:Ljava/lang/String; = "SNR_th"

.field public static final PARAMETER_FREQUENCY_OFFSET_TH:Ljava/lang/String; = "FrequencyOffset_th"

.field private static final PARAMETER_GOOD_CH_RMSSI_TH:Ljava/lang/String; = "GoodChannelRMSSIThreshold"

.field private static final PARAMETER_HYBRID_SEARCH:Ljava/lang/String; = "HybridSearch"

.field public static final PARAMETER_IF_COUNT_1:Ljava/lang/String; = "IFCount1"

.field public static final PARAMETER_IF_COUNT_2:Ljava/lang/String; = "IFCount2"

.field public static final PARAMETER_NOISE_POWER_TH:Ljava/lang/String; = "NoisePower_th"

.field private static final PARAMETER_OFF_CHANNEL_TH:Ljava/lang/String; = "OffChannelThreshold"

.field private static final PARAMETER_ON_CHANNEL_TH:Ljava/lang/String; = "OnChannelThreshold"

.field public static final PARAMETER_PILOT_POWER_TH:Ljava/lang/String; = "PilotPower_th"

.field private static final PARAMETER_RMSSI_FIRST_STAGE:Ljava/lang/String; = "RMSSIFirstStage"

.field private static final PARAMETER_SEARCH_ALGO_TYPE:Ljava/lang/String; = "SearchAlgoType"

.field private static final PARAMETER_SECOND_CNT_TH:Ljava/lang/String; = "Cnt_th_2"

.field private static final PARAMETER_SECOND_RSSI_TH:Ljava/lang/String; = "RSSI_th_2"

.field private static final PARAMETER_SECOND_SNR_TH:Ljava/lang/String; = "SNR_th_2"

.field private static final PARAMETER_SEEK_DC:Ljava/lang/String; = "SeekDC"

.field private static final PARAMETER_SEEK_DESENSE_RSSI:Ljava/lang/String; = "SeekDesenseRSSI"

.field private static final PARAMETER_SEEK_QA:Ljava/lang/String; = "SeekQA"

.field private static final PARAMETER_SEEK_RSSI:Ljava/lang/String; = "SeekRSSI"

.field private static final PARAMETER_SEEK_SMG:Ljava/lang/String; = "SeekSMG"

.field private static final PARAMETER_SEEK_SNR:Ljava/lang/String; = "SeekSNR"

.field private static final PARAMETER_SINR_FIRST_STAGE:Ljava/lang/String; = "SINRFirstStage"

.field private static final PARAMETER_SINR_SAMPLES:Ljava/lang/String; = "SINRSamples"

.field private static final PARAMETER_SINR_TH:Ljava/lang/String; = "SINRThreshold"

.field private static final PARAMETER_SKIP_TUNNING_VALUE:Ljava/lang/String; = "SkipTuningValue"

.field public static final PARAMETER_SOFTMUTE_COEFF:Ljava/lang/String; = "SoftMuteCoeff"

.field private static final PARAMETER_SOFTMUTE_TH:Ljava/lang/String; = "Softmute_th"

.field public static final PARAMETER_SOFT_STEREO_BLEND_COEFF:Ljava/lang/String; = "SoftStereoBlendCoeff"

.field public static final PARAMETER_SOFT_STEREO_BLEND_REF:Ljava/lang/String; = "SoftStereoBlendRef"

.field public static final PAUSED:I = 0xb

.field private static final RECORDING_END:I = 0x0

.field private static final RECORDING_START:I = 0x1

.field private static final RESET_SETTING:Ljava/lang/String; = "android.intent.action.SETTINGS_SOFT_RESET"

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64

.field static final VOLUME_FADEIN_FIRST_DELAYTIME:I = 0x320

.field private static final VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final audioMute:Ljava/lang/String; = "fm_radio_mute=1"

.field private static final audioUnMute:Ljava/lang/String; = "fm_radio_mute=0"

.field private static curFreq:J

.field private static final mFMRadioServiceLock:Ljava/lang/Object;

.field private static mIsSetWakeKey:Z

.field private static mIsTransientPaused:Z

.field private static mNeedToResumeFM:Z


# instance fields
.field private final FM_RADIO_AUDIO_FOCUS_TAG:Ljava/lang/String;

.field private SetPropertyPermission:Ljava/lang/String;

.field private VolumePropertyname:Ljava/lang/String;

.field private alarmTTSPlay:Z

.field private bmObserver:Landroid/database/ContentObserver;

.field private fos:Ljava/io/FileOutputStream;

.field private mAFEnable:Z

.field private mATJOn:I

.field private mAfRmssisampleCnt_th:I

.field private mAfRmssith_th:I

.field private mAirPlaneEnabled:Z

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlgo_type:I

.field private final mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field final mAudioFocusHandler:Landroid/os/Handler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mBand:I

.field private mBikeMode:Z

.field private mBlendPAMD_th:I

.field private mBlendRSSI_th:I

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mCf0_th12:I

.field public mChannelSpacing:I

.field private mCnt_th:I

.field private mCnt_th_2:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFoundFreq:J

.field private mCurrentResumeVol:J

.field public mDEConstant:I

.field private final mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mDNSEnable:Z

.field private final mEmergencyReceiver:Landroid/content/BroadcastReceiver;

.field private mFmOff:Ljava/lang/String;

.field private mFmOn:Ljava/lang/String;

.field private mFreqOffset_th:I

.field final mHandler:Landroid/os/Handler;

.field private mInternetStreamingMode:Z

.field public mIsAudioFocusAlive:Z

.field private mIsBatteryLow:Z

.field private mIsFMAudioPathOn:Z

.field private mIsForcestop:Z

.field private mIsHeadsetPlugged:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsPhoneStateListenerRegistered:Z

.field private mIsSeeking:Z

.field private mIsSkipTunigVal:Z

.field private mIsTestMode:Z

.field private mIsTransientDuck:Z

.field private mIsTvOutPlugged:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMarvell_cmi:I

.field private mMarvell_rssi:I

.field private mMtk_ATJ_config:I

.field private mMtk_blendpamd_th:I

.field private mMtk_blendrssi_th:I

.field private mMtk_rssi:I

.field private mMtk_seekdesenserssi:I

.field private mMtk_seeksmg:I

.field private mMtk_softmute_th:I

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mNeedResumeToFreq:J

.field private mNoisePwr_th:I

.field private mOnProgress:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPilotPwr_th:I

.field private mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousFoundFreq:J

.field private mQualcomm_af_rmssisamplecnt:I

.field private mQualcomm_af_rmssith:I

.field private mQualcomm_cfoth12:I

.field private mQualcomm_offchannel:I

.field private mQualcomm_onchannel:I

.field private mQualcomm_rmssi_firststate:I

.field private mQualcomm_sinr_samplecnt:I

.field private mRDSEnable:Z

.field mRecFinishNotified:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetSettingReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mReturnBackVolume:I

.field private mRichwave_rssi:I

.field private mRichwave_seekDC:I

.field private mRichwave_seekQA:I

.field private mRssi_th:I

.field private mRssi_th_2:I

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanThread:Ljava/lang/Thread;

.field private mScanVolume:I

.field private mSeekDesenseRSSI:I

.field private mSeekSMG:I

.field private final mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private mSilicon_cnt:I

.field private mSilicon_rssi:I

.field private mSilicon_snr:I

.field private mSlsi_blendcoeff:J

.field private mSlsi_ifcount1:I

.field private mSlsi_ifcount2:I

.field private mSlsi_rssi:I

.field private mSlsi_softmutecoeff:J

.field private mSlsi_softstereoblendref:J

.field private mSnr_th:I

.field private mSnr_th_2:I

.field private mSoftMuteCoeff:J

.field private mSoftStereoBlendCoeff:J

.field private mSoftmute_th:I

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitPidDuringScanning:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpKeyFileName:Ljava/lang/String;

.field private mWakeUpKeyFilePath:Ljava/lang/String;

.field private mgoodChrmssi_th:I

.field private platform:Ljava/lang/String;

.field private volumeLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/android/server/FMRadioService;->curFreq:J

    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    sput-boolean v1, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    const-wide/16 v1, -0x2

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    const-string v3, "com.sec.android.app.fm.permission.setproperty"

    iput-object v3, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const-string/jumbo v3, "service.brcm.fm.volumetable"

    iput-object v3, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mSoftStereoBlendCoeff:J

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSoftMuteCoeff:J

    iput v0, p0, Lcom/android/server/FMRadioService;->mSeekDesenseRSSI:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mSeekSMG:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mBlendRSSI_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mBlendPAMD_th:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mATJOn:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    const/16 v6, 0xa

    iput v6, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v8, "/sys/class/sec/sec_key/"

    iput-object v8, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string/jumbo v8, "wakeup_keys"

    iput-object v8, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v8, "102,114,115,116,172"

    iput-object v8, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v8, "102,116,172"

    iput-object v8, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    iput v0, p0, Lcom/android/server/FMRadioService;->mSilicon_rssi:I

    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/FMRadioService;->mSilicon_snr:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mSilicon_cnt:I

    const/16 v9, -0x71

    iput v9, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    const/16 v9, 0x6d

    iput v9, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    const/16 v9, 0x73

    iput v9, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v6, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    const/16 v6, 0x3a98

    iput v6, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    const/16 v6, 0x35

    iput v6, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    const/16 v6, 0x50

    iput v6, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mMarvell_rssi:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mMarvell_cmi:I

    const/16 v9, 0xc

    iput v9, p0, Lcom/android/server/FMRadioService;->mRichwave_rssi:I

    const/16 v9, 0x40

    iput v9, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    iput v6, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    const/16 v6, 0x92

    iput v6, p0, Lcom/android/server/FMRadioService;->mSlsi_rssi:I

    const/16 v6, 0x1388

    iput v6, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    const/16 v6, 0x12c0

    iput v6, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    const-wide/16 v9, 0xc64

    iput-wide v9, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    const/16 v1, -0x6f

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_rssi:I

    const/16 v1, -0x60

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    const/16 v1, 0x32c8

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_softmute_th:I

    const/16 v1, -0x41

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    const-string v1, "FM_RADIO"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->FM_RADIO_AUDIO_FOCUS_TAG:Ljava/lang/String;

    new-instance v1, Lcom/android/server/FMRadioService$1;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$2;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$3;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$4;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mResetSettingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$5;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/server/FMRadioService$6;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$7;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/FMRadioService$8;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v1, Lcom/android/server/FMRadioService$9;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/FMRadioService$10;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$11;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$12;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$13;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$14;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$15;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$16;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/FMRadioService$17;

    invoke-direct {v1, p0}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    iput-object v7, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    new-instance v1, Lcom/android/server/FMRadioService$18;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/FMRadioService$18;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v1, v8, :cond_1

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/FMPlayerNative;

    invoke-direct {v1, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/FMPlayerNativeBRCM;

    invoke-direct {v1, p0}, Lcom/android/server/FMPlayerNativeBRCM;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    :goto_1
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "FMRadio Service"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3e7

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.fm.volume_lock"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.fm.volume_unlock"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    nop

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAirPlaneEnabled flag :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mResetSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSetPropertyListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readParametersForCurrentRegion()V

    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, "exynos4"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "msm8960"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string/jumbo v1, "msm7627a"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "msm7k"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "montblanc"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "/sys/devices/platform/gpio-keys.0/"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string/jumbo v1, "wakeup_keys"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v1, "114,115,172"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v1, "172"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "mrvl"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "/sys/devices/platform/pxa27x-keypad/power/"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string/jumbo v1, "wakeup"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v1, "enabled"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v1, "disabled"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_4

    :cond_6
    const-string/jumbo v1, "msm8953"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "sdm660"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    const-string v1, "/sys/power/"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string/jumbo v1, "volkey_wakeup"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v1, "1"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_4

    :cond_8
    :goto_2
    const-string v1, "/sys/devices/platform/gpio-event/"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string/jumbo v1, "wakeup_keys"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v1, "1"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_4

    :cond_9
    :goto_3
    const-string v1, "/sys/class/sec/sec_key/"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string/jumbo v1, "wakeup_keys"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v1, "102,114,115,116,172"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v1, "102,116,172"

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    :cond_a
    :goto_4
    return-void
.end method

.method private SkipTuning_Value()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    const-string v0, "FMRadioService"

    const-string v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p1
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/server/FMRadioService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/FMRadioService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/server/FMRadioService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/server/FMRadioService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/FMRadioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->responedFocusEvent(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/FMRadioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->clearMessageQueue()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/FMRadioService;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseAudioSystemMute()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/FMRadioService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/FMRadioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/server/FMRadioService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/server/FMRadioService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/android/server/FMRadioService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/FMRadioService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/FMRadioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->handleBikeMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->stopInternetStreaming()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/FMRadioService;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    move-result v0

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v2, "Lock is held"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private checkForWakeLockRelease()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-nez v0, :cond_0

    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    :cond_0
    return-void
.end method

.method private clearMessageQueue()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private closeFile()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAFRMSSISamples()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method private getAFRMSSIThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getAFValid_th()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFValid_th()I

    move-result v0

    return v0
.end method

.method private getAF_th()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAF_th()I

    move-result v0

    return v0
.end method

.method private getATJ()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    return v0
.end method

.method private getBlendPAMD_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    return v0
.end method

.method private getBlendRSSI_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    return v0
.end method

.method private getBlendRmssi()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getBlendRmssi()I

    move-result v0

    return v0
.end method

.method private getBlendSinr()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getBlendSinr()I

    move-result v0

    return v0
.end method

.method private getCFOTh12()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method private getCnt_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method private getCnt_th_2()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return v0
.end method

.method private getDeSenseList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getDeSenseList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFakeChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getFakeChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFrequencyOffsetThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getFrequencyOffsetThreshold()I

    move-result v0

    return v0
.end method

.method private getGoodChannelRMSSIThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getHybridSearch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIFCount1()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    return v0
.end method

.method private getIFCount2()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    return v0
.end method

.method private getNoisePowerThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getNoisePowerThreshold()I

    move-result v0

    return v0
.end method

.method private getOffChannelThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getOnChannelThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getPilotPowerThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getPilotPowerThreshold()I

    move-result v0

    return v0
.end method

.method private getPropertyProductName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRMSSIFirstStage()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method private getRSSI_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method private getRSSI_th_2()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return v0
.end method

.method private getSINRFirstStage()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method private getSINRSamples()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method private getSINRThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method private getSNR_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method private getSNR_th_2()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return v0
.end method

.method private getSearchAlgoType()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method private getSeekDC()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSeekDC()I

    move-result v0

    return v0
.end method

.method private getSeekDesenseRSSI()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    return v0
.end method

.method private getSeekQA()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSeekQA()I

    move-result v0

    return v0
.end method

.method private getSeekSMG()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    return v0
.end method

.method private getSoftMuteCoeff()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    return-wide v0
.end method

.method private getSoftStereoBlendCoeff()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    return-wide v0
.end method

.method private getSoftStereoBlendRef()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    return-wide v0
.end method

.method private getSoftmute_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    return v0
.end method

.method private handleBikeMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    if-eqz v0, :cond_1

    const-string v0, "bike mode enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    goto :goto_0

    :cond_1
    const-string v0, "bike mode disabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isCTSTestApp()Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, "com.samsung.cts.SamsungMediaFmradio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private isCherokeeChip()Z
    .locals 2

    const-string/jumbo v0, "qcom.bluetooth.soc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cherokee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isFmTestApp()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "com.sec.android.fmtestapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private isValidPackage()Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-string v4, "com.sec.android.app.fm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.nextradioapp.nextradio"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.sec.factory.app.fm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.sec.android.fmtestapp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCTSTestApp()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown App is trying to use Radio. So just return. mPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized offInternal(IZ)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "offInternal :: reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "offInternal :: remove audiofocus "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    xor-int/lit8 v1, p2, 0x1

    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iget v1, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "offInternal :: mReturnBackVolume="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    iget v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    invoke-virtual {v1, v5, v6, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v3, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    if-nez v1, :cond_3

    const/16 v1, 0x11

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    if-eqz v1, :cond_4

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    :cond_4
    :goto_0
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x3

    if-ne v1, v4, :cond_5

    if-eq p1, v3, :cond_5

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    :cond_5
    const-string/jumbo v1, "offInternal Turning off FM radio"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    xor-int/lit8 v1, p2, 0x1

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x6

    if-eq v1, v4, :cond_6

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v5, :cond_7

    :cond_6
    if-ne p1, v3, :cond_7

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->offFMService()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->off()V

    :goto_1
    const-string/jumbo v1, "off returned from native"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterBikeModeObserver()V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMusicCommandRec()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAlarmListener()V

    :cond_8
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAllSoundOffListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterDNDStatusChangedListener()V

    if-eqz p2, :cond_9

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterEmegencyStateChangedListener()V

    :cond_9
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    if-eqz p2, :cond_a

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterTelephonyListener()V

    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendFMOFFBroadcast()V

    :cond_b
    iget-object v1, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v3, "mrvl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v3, "msm8953"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v3, "sdm660"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v3, "input"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v4, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v4, :cond_e

    if-eqz v1, :cond_e

    :try_start_2
    const-string v3, "com.sec.android.app.fm"

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v5, "114,115"

    invoke-virtual {v1, v3, v4, v5}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_2
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v3, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    :goto_3
    nop

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    monitor-exit p0

    return v0

    :goto_4
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized on(Z)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getDNDStatus()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    :cond_5
    sget-boolean v0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v0, :cond_6

    sput-boolean v2, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    monitor-exit p0

    return v1

    :cond_7
    :try_start_5
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "UPSM Enabling : On failed"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :cond_8
    :try_start_6
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_9

    monitor-exit p0

    return v1

    :cond_9
    :try_start_7
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_a

    monitor-exit p0

    return v2

    :cond_a
    const/16 v0, 0x9

    if-nez p1, :cond_b

    :try_start_8
    sget-boolean v4, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-nez v4, :cond_d

    goto :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_8

    :cond_b
    :goto_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isFmTestApp()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCTSTestApp()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "AudioFocusListener registered"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_c

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const-string v5, "FM_RADIO"

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    new-instance v5, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v5, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v5, v4}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_1

    :cond_c
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_1

    :cond_d
    const-string v4, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v5, 0x0

    if-ne v4, v0, :cond_f

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNativeBase;->preInitialize()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_e

    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    goto :goto_2

    :cond_e
    const-string v2, "FM preInitialize() failed"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v1

    :cond_f
    :goto_2
    :try_start_9
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNativeBase;->on()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_20

    const-string/jumbo v4, "on returned from native"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v4, v0, :cond_10

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    :cond_10
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-nez v4, :cond_11

    invoke-direct {p0, v3, v2}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return v1

    :cond_11
    :try_start_a
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCallStateChanged() :: after mPlayerNative.on() setOuputPath() = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    :cond_12
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x4

    if-eq v3, v2, :cond_13

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v7, :cond_13

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v0, :cond_14

    :cond_13
    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    if-nez v3, :cond_14

    const-string/jumbo v3, "set softmute : false"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    :cond_14
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v7, :cond_1c

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v0, :cond_15

    goto/16 :goto_4

    :cond_15
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v4, :cond_1b

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_16

    goto/16 :goto_3

    :cond_16
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_17

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setFrequencyOffsetThreshold(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setNoisePowerThreshold(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setPilotPowerThreshold(I)V

    goto/16 :goto_5

    :cond_17
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_19

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setIFCount1(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setIFCount2(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNativeBase;->setStereo()V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v7, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    invoke-virtual {v3, v7, v8}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendCoeff(J)V

    iget-wide v3, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v7, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    invoke-virtual {v3, v7, v8}, Lcom/android/server/FMPlayerNativeBase;->setSoftMuteCoeff(J)V

    :cond_18
    iget-wide v3, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendRef(J)V

    goto/16 :goto_5

    :cond_19
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1a

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekRSSI(J)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setSeekDesenseRSSI(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setSeekSMG(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute_th(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setBlendRSSI_th(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setBlendPAMD_th(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setATJ(I)V

    goto :goto_5

    :cond_1a
    iget v3, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v5, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    goto :goto_5

    :cond_1b
    :goto_3
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_rssi:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setSeekDC(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setSeekQA(I)V

    goto :goto_5

    :cond_1c
    :goto_4
    iget v3, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setOffChannelThreshold(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    :cond_1d
    :goto_5
    iget v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->setBand(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->setChannelSpacing(I)V

    iget v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMusicCommandRec()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBikeModeObserver()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerEmergencyStateChangedListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerDNDStatusChangedListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v4, "mrvl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V

    goto :goto_7

    :cond_1e
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v4, "input"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v5, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eq v4, v5, :cond_1f

    if-eqz v3, :cond_1f

    :try_start_b
    const-string v4, "com.sec.android.app.fm"

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v6, "114,115"

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v4

    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_6
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v4, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    :cond_1f
    :goto_7
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return v2

    :cond_20
    :try_start_d
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v0, :cond_21

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_21
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string/jumbo v2, "on is failed :: remove audiofocus "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return v1

    :goto_8
    nop

    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v0, :cond_22

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_22
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    const-string/jumbo v0, "on is failed by exception :: remove audiofocus "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private openFile()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private queueUpdate(IJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private readParametersForCurrentRegion()V
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "87500_108000"

    sget-object v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_0
    const-string v2, "76000_108000"

    sget-object v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_1
    const-string v2, "76000_90000"

    sget-object v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    :goto_0
    sget v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    const/16 v3, 0x32

    if-eq v2, v3, :cond_4

    const/16 v4, 0x64

    if-eq v2, v4, :cond_3

    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    nop

    :goto_1
    sget v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    if-eq v2, v3, :cond_6

    const/16 v3, 0x4b

    if-eq v2, v3, :cond_5

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_2

    :cond_6
    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    :goto_3
    return-void
.end method

.method private readTuningParameters()V
    .locals 17

    move-object/from16 v0, p0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getPropertyProductName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "zerolte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "service.brcm.fm.start_snr"

    const/16 v5, 0x22

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "j2lte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "service.brcm.fm.start_mute"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_BROADCOM_START_MUTE"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "service.brcm.fm.start_mute"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_BROADCOM_START_SNR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "service.brcm.fm.start_snr"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "service.brcm.fm.set_blndmute"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v5, ""

    sget-object v6, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xa

    const/4 v7, 0x6

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v5, :cond_d

    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v5, v13, :cond_4

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_9

    :cond_4
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v5, v3, :cond_5

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_9

    :cond_5
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v12, :cond_6

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iput v14, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MARVEL_CMI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_9

    :cond_6
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v2, :cond_c

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v8, :cond_7

    goto/16 :goto_2

    :cond_7
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v11, :cond_b

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v6, :cond_8

    goto/16 :goto_1

    :cond_8
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v7, :cond_9

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_FREQ_OFFSET"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_NOISE_PWR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_PILOT_PWR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_9

    :cond_9
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_a

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT1"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT2"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_BLENDCOEF"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    goto/16 :goto_9

    :cond_a
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v9, :cond_28

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKSMG"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKDESENSERSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDRSSI_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDPAMD_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_9

    :cond_b
    :goto_1
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_DC"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_QA"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_9

    :cond_c
    :goto_2
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_ALGO_TYPE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_SINR_FIRSTSTAGE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_9

    :cond_d
    sget-object v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tuning value size: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v5

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    array-length v6, v5

    packed-switch v6, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tuning value size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_0
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v6, v9, :cond_e

    aget-object v6, v5, v14

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v6, v5, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    aget-object v3, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    aget-object v2, v5, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_9

    :cond_e
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v6, v10, :cond_f

    aget-object v6, v5, v14

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v6, v5, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    aget-object v3, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    aget-object v2, v5, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    goto/16 :goto_9

    :cond_f
    aget-object v6, v5, v14

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v6, v5, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    aget-object v3, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    aget-object v2, v5, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    goto/16 :goto_9

    :pswitch_1
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v6, v2, :cond_13

    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v6, v8, :cond_10

    goto/16 :goto_3

    :cond_10
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v6, v7, :cond_11

    aget-object v6, v5, v14

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v6, v5, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    aget-object v3, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    const-string/jumbo v3, "service.brcm.fm.start_mute"

    aget-object v2, v5, v2

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_11
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v6, v10, :cond_12

    aget-object v6, v5, v14

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v6, v5, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    aget-object v3, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    goto/16 :goto_9

    :cond_12
    aget-object v6, v5, v14

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v6, v5, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v6, v3, :cond_28

    const-string/jumbo v3, "service.brcm.fm.start_snr"

    aget-object v6, v5, v12

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "service.brcm.fm.stop_snr"

    aget-object v2, v5, v2

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_13
    :goto_3
    aget-object v6, v5, v14

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v6, v5, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v3, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    goto/16 :goto_9

    :pswitch_2
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v6, v2, :cond_18

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v8, :cond_14

    goto/16 :goto_4

    :cond_14
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v7, :cond_15

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    aget-object v2, v5, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_9

    :cond_15
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_16

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    aget-object v2, v5, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_9

    :cond_16
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v9, :cond_17

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    aget-object v2, v5, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDRSSI_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDPAMD_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_9

    :cond_17
    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v3, :cond_28

    const-string/jumbo v2, "service.brcm.fm.start_mute"

    aget-object v3, v5, v12

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_18
    :goto_4
    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v2, v5, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_9

    :pswitch_3
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v11, :cond_1c

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0xa

    if-ne v2, v6, :cond_19

    goto/16 :goto_5

    :cond_19
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_1a

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_BLENDCOEF"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_9

    :cond_1a
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v9, :cond_1b

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDRSSI_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDPAMD_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_9

    :cond_1b
    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_9

    :cond_1c
    :goto_5
    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_9

    :pswitch_4
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v13, :cond_1d

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_9

    :cond_1d
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v2, :cond_1f

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v8, :cond_1e

    goto :goto_6

    :cond_1e
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v9, :cond_28

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKDESENSERSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDRSSI_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDPAMD_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_9

    :cond_1f
    :goto_6
    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v2, v5, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_ALGO_TYPE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_SINR_FIRSTSTAGE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_9

    :pswitch_5
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v6, v13, :cond_20

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_9

    :cond_20
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v6, v3, :cond_21

    const-string/jumbo v2, "service.brcm.fm.start_mute"

    aget-object v3, v5, v14

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_9

    :cond_21
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v2, :cond_27

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v8, :cond_22

    goto/16 :goto_8

    :cond_22
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v11, :cond_26

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_23

    goto/16 :goto_7

    :cond_23
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v7, :cond_24

    const-string/jumbo v2, "service.brcm.fm.start_mute"

    aget-object v3, v5, v14

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_FREQ_OFFSET"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_NOISE_PWR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_PILOT_PWR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_9

    :cond_24
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_25

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT1"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT2"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_BLENDCOEF"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_9

    :cond_25
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v9, :cond_28

    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKSMG"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKDESENSERSSI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDRSSI_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDPAMD_TH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_9

    :cond_26
    :goto_7
    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_DC"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_QA"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto :goto_9

    :cond_27
    :goto_8
    aget-object v2, v5, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_ALGO_TYPE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_SINR_FIRSTSTAGE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    :cond_28
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerAlarmListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "registering Alarm play listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerAllSoundOffListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "registering AllSoundOff listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerBatteryListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerBikeModeObserver()V
    .locals 4

    const-string/jumbo v0, "register bike mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    return-void
.end method

.method private registerDNDStatusChangedListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "registering DND Status change Listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerEmergencyStateChangedListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "registering Emergency State Changed Listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerMusicCommandRec()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "music command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerSetPropertyListener()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v1, "registering set property listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerSystemListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerTelephonyListener()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "listner already registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    const-string/jumbo v2, "registering telephony listener.."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private releaseAudioSystemMute()V
    .locals 6

    const-string/jumbo v0, "releaseAudioSystemMute "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v5, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v2, "Lock is released"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 6

    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private respondAudioFocusChangeForDns(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "respondAudioFocusChangeForDns()-focusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " streamingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "com.sec.android.app.dns.action.stop_internet_stream"

    goto :goto_0

    :pswitch_1
    const-string v0, "com.sec.android.app.dns.action.pause_internet_stream"

    goto :goto_0

    :cond_1
    const-string v0, "com.sec.android.app.dns.action.resume_internet_stream"

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private responedFocusEvent(I)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const-string v2, "AUDIOFOCUS_LOSS "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    goto/16 :goto_6

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "still in progress"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :pswitch_1
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_4

    sget-wide v2, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_1
    const/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_2
    sput-boolean v1, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_7

    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_8

    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_3

    :cond_8
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v1, :cond_9

    sget-wide v1, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->mute(Z)V

    :cond_b
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v2

    if-nez v2, :cond_11

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v2, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setOutputPath = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    sget-boolean v3, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-long v8, v3

    iput-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "slowly increase the volume till :"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    cmp-long v3, v8, v6

    if-eqz v3, :cond_d

    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    iput-wide v8, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, v6, v7}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x320

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_c
    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {p0, v8, v9}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_4

    :cond_d
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    long-to-int v8, v8

    invoke-virtual {v3, v0, v8, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_4
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    goto :goto_5

    :cond_e
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {v3, v8, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_5
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_f

    const-wide/32 v0, 0x155cc

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :cond_f
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v6, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v0, v6, v7}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    const/4 v0, 0x7

    iget-wide v6, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "freq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_6

    :cond_10
    const-string v0, "Not able to resume FM player"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_11
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendFMOFFBroadcast()V
    .locals 3

    const-string v0, "Sending broadcast FM is in OFF state"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.fm"

    const-string v2, "com.sec.android.app.fm.widget.FMRadioProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAFRMSSISamples(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFRMSSISamples(I)V

    return-void
.end method

.method private setAFRMSSIThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFRMSSIThreshold(I)V

    return-void
.end method

.method private setAFValid_th(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFValid_th(I)V

    return-void
.end method

.method private setAF_th(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAF_th(I)V

    return-void
.end method

.method private setATJ(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setATJ(I)V

    return-void
.end method

.method private setBlendPAMD_th(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendPAMD_th(I)V

    return-void
.end method

.method private setBlendRSSI_th(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendRSSI_th(I)V

    return-void
.end method

.method private setBlendRmssi(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendRmssi(I)V

    return-void
.end method

.method private setBlendSinr(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendSinr(I)V

    return-void
.end method

.method private setCFOTh12(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setCFOTh12(I)V

    return-void
.end method

.method private setCnt_th(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return-void
.end method

.method private setCnt_th_2(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return-void
.end method

.method private setDEConstant(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setDEConstant(J)V

    return-void
.end method

.method private setDeSenseList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setDeSenseList(Ljava/lang/String;)V

    return-void
.end method

.method private setFMAudioPath(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    if-eqz p1, :cond_1

    const-string v0, "fmradio_turnon=true"

    goto :goto_0

    :cond_1
    const-string v0, "fmradio_turnon=false"

    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method private setFakeChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFakeChannel(Ljava/lang/String;)V

    return-void
.end method

.method private setFrequencyOffsetThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFrequencyOffsetThreshold(I)V

    return-void
.end method

.method private setGoodChannelRMSSIThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setGoodChannelRMSSIThreshold(I)V

    return-void
.end method

.method private setHybridSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setHybridSearch(Ljava/lang/String;)V

    return-void
.end method

.method private setIFCount1(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setIFCount1(I)V

    return-void
.end method

.method private setIFCount2(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setIFCount2(I)V

    return-void
.end method

.method private setNoisePowerThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setNoisePowerThreshold(I)V

    return-void
.end method

.method private setOffChannelThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setOffChannelThreshold(I)V

    return-void
.end method

.method private setOnChannelThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setOnChannelThreshold(I)V

    return-void
.end method

.method private setPilotPowerThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setPilotPowerThreshold(I)V

    return-void
.end method

.method private setRMSSIFirstStage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setRMSSIFirstStage(I)V

    return-void
.end method

.method private setRSSI_th(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return-void
.end method

.method private setRSSI_th_2(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return-void
.end method

.method private setSINRFirstStage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRFirstStage(I)V

    return-void
.end method

.method private setSINRSamples(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRSamples(I)V

    return-void
.end method

.method private setSINRThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRThreshold(I)V

    return-void
.end method

.method private setSNR_th(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return-void
.end method

.method private setSNR_th_2(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return-void
.end method

.method private setSearchAlgoType(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSearchAlgoType(I)V

    return-void
.end method

.method private setSeekDC(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekDC(I)V

    return-void
.end method

.method private setSeekDesenseRSSI(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekDesenseRSSI(I)V

    return-void
.end method

.method private setSeekQA(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekQA(I)V

    return-void
.end method

.method private setSeekRSSI(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSeekRSSI(J)V

    return-void
.end method

.method private setSeekSMG(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekSMG(I)V

    return-void
.end method

.method private setSeekSNR(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSeekSNR(J)V

    return-void
.end method

.method private setSignalSetting(III)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNativeBase;->setSNR_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNativeBase;->setCnt_th(I)V

    return-void
.end method

.method private setSlimbusEnable(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSlimbusEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCherokeeChip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSlimbusEnable(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setSlimbusEnable : Not applicable"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setSoftMuteCoeff(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftMuteCoeff(J)V

    return-void
.end method

.method private setSoftStereoBlendCoeff(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendCoeff(J)V

    return-void
.end method

.method private setSoftStereoBlendRef(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendRef(J)V

    return-void
.end method

.method private setSoftmute_th(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute_th(I)V

    return-void
.end method

.method private stopInternetStreaming()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopInternetStreaming() - streamingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.dns.action.stop_internet_stream"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unRegisterBatteryListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "music command reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterSetPropertyListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "unregistering set property listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterTelephonyListener()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "listner is not registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    const-string/jumbo v2, "unRegisterTelephonyListener .."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unregisterAlarmListener()V
    .locals 2

    const-string v0, "Unregistering Alarm play listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterAllSoundOffListener()V
    .locals 2

    const-string v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterBikeModeObserver()V
    .locals 2

    const-string/jumbo v0, "unregister bike mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterDNDStatusChangedListener()V
    .locals 2

    const-string v0, "Unregistering DND Status change listner"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterEmegencyStateChangedListener()V
    .locals 2

    const-string v0, "Unregistering Emergency State Changed Listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterSystemListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private writeFile(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    :goto_0
    sget-boolean v1, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeFile: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeFile: data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public SetIsOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return-void
.end method

.method public cancelAFSwitching()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->cancelAFSwitching()V

    return-void
.end method

.method public cancelScan()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->cancelSeek()V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    new-array v3, v0, [Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public cancelSeek()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->cancelSeek()V

    return-void
.end method

.method public checkBaseFreq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->checkBaseFreq()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableAF()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableAF()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public disableDNS()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableDNS()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public disableRDS()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableRDS()V

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public enableAF()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableAF()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    return-void
.end method

.method public enableDNS()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "DNS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableDNS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    return-void
.end method

.method public enableRDS()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableRDS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterSetPropertyListener()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentChannel()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSNR()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDNDStatus()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    nop

    :cond_3
    return v2
.end method

.method public getIntegerTunningParameter(Ljava/lang/String;I)I
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter: parameterName- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "getIntegerTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7bea88a4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v0, v1, :cond_3

    const v1, -0x6debe1a4

    if-eq v0, v1, :cond_2

    const v1, 0x7898f92a

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Cnt_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "SNR_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v0, "RSSI_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0xa

    if-ne v0, v6, :cond_5

    goto/16 :goto_d

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCnt_th()I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSNR_th()I

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRSSI_th()I

    move-result v0

    return v0

    :cond_5
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x3

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eq v0, v12, :cond_14

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v11, :cond_6

    goto/16 :goto_a

    :cond_6
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v2, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3b53cce

    if-eq v0, v1, :cond_8

    const v1, 0x407f88dc

    if-eq v0, v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "AFValid_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v3, v4

    goto :goto_3

    :cond_8
    const-string v0, "AF_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move v3, v5

    :goto_3
    packed-switch v3, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFValid_th()I

    move-result v0

    return v0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAF_th()I

    move-result v0

    return v0

    :cond_a
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v10, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x793b6ef8

    if-eq v0, v1, :cond_d

    const v1, -0x2cd46d5a

    if-eq v0, v1, :cond_c

    const v1, 0x40effc4

    if-eq v0, v1, :cond_b

    goto :goto_4

    :cond_b
    const-string v0, "FrequencyOffset_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v2, v3

    goto :goto_5

    :cond_c
    const-string v0, "PilotPower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_d
    const-string v0, "NoisePower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v2, v4

    goto :goto_5

    :cond_e
    :goto_4
    move v2, v5

    :goto_5
    packed-switch v2, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getPilotPowerThreshold()I

    move-result v0

    return v0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getNoisePowerThreshold()I

    move-result v0

    return v0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getFrequencyOffsetThreshold()I

    move-result v0

    return v0

    :cond_f
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v9, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_6

    :pswitch_8
    const-string v0, "IFCount2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v3, v4

    goto :goto_7

    :pswitch_9
    const-string v0, "IFCount1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    :goto_6
    move v3, v5

    :goto_7
    packed-switch v3, :pswitch_data_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getIFCount2()I

    move-result v0

    return v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getIFCount1()I

    move-result v0

    return v0

    :cond_11
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v8, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v0, "BlendPAMD_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    :sswitch_1
    const-string v0, "ATJCofig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v12, v1

    goto :goto_9

    :sswitch_2
    const-string v0, "BlendRSSI_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v12, v7

    goto :goto_9

    :sswitch_3
    const-string v0, "SeekSMG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v12, v4

    goto :goto_9

    :sswitch_4
    const-string v0, "Softmute_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v12, v2

    goto :goto_9

    :sswitch_5
    const-string v0, "SeekDesenseRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v12, v3

    goto :goto_9

    :cond_12
    :goto_8
    move v12, v5

    :goto_9
    packed-switch v12, :pswitch_data_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getATJ()I

    move-result v0

    return v0

    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendPAMD_th()I

    move-result v0

    return v0

    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendRSSI_th()I

    move-result v0

    return v0

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftmute_th()I

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekSMG()I

    move-result v0

    return v0

    :pswitch_11
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekDesenseRSSI()I

    move-result v0

    return v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_14
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_b

    :sswitch_6
    const-string v0, "AFRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v8

    goto/16 :goto_c

    :sswitch_7
    const-string v0, "RMSSIFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v10

    goto/16 :goto_c

    :sswitch_8
    const-string v0, "SNR_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v2, 0xc

    goto/16 :goto_c

    :sswitch_9
    const-string v0, "CFOTh12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v1

    goto/16 :goto_c

    :sswitch_a
    const-string v0, "SINRThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v12

    goto/16 :goto_c

    :sswitch_b
    const-string v0, "SINRSamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v4

    goto/16 :goto_c

    :sswitch_c
    const-string v0, "OnChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_c

    :sswitch_d
    const-string v0, "BlendRmssi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v2, 0xe

    goto :goto_c

    :sswitch_e
    const-string v0, "RSSI_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v2, 0xb

    goto :goto_c

    :sswitch_f
    const-string v0, "OffChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v7

    goto :goto_c

    :sswitch_10
    const-string v0, "Cnt_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v2, 0xd

    goto :goto_c

    :sswitch_11
    const-string v0, "SINRFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v9

    goto :goto_c

    :sswitch_12
    const-string v0, "BlendSinr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v2, 0xf

    goto :goto_c

    :sswitch_13
    const-string v0, "SearchAlgoType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v3

    goto :goto_c

    :sswitch_14
    const-string v0, "GoodChannelRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v6

    goto :goto_c

    :sswitch_15
    const-string v0, "AFRMSSISamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v11

    goto :goto_c

    :cond_15
    :goto_b
    move v2, v5

    :goto_c
    packed-switch v2, :pswitch_data_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendSinr()I

    move-result v0

    return v0

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendRmssi()I

    move-result v0

    return v0

    :pswitch_14
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCnt_th_2()I

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSNR_th_2()I

    move-result v0

    return v0

    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRSSI_th_2()I

    move-result v0

    return v0

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0

    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFRMSSISamples()I

    move-result v0

    return v0

    :pswitch_19
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFRMSSIThreshold()I

    move-result v0

    return v0

    :pswitch_1a
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRFirstStage()I

    move-result v0

    return v0

    :pswitch_1b
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRMSSIFirstStage()I

    move-result v0

    return v0

    :pswitch_1c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCFOTh12()I

    move-result v0

    return v0

    :pswitch_1d
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRThreshold()I

    move-result v0

    return v0

    :pswitch_1e
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getOffChannelThreshold()I

    move-result v0

    return v0

    :pswitch_1f
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getOnChannelThreshold()I

    move-result v0

    return v0

    :pswitch_20
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRSamples()I

    move-result v0

    return v0

    :pswitch_21
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSearchAlgoType()I

    move-result v0

    return v0

    :cond_16
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6c9efae9

    if-eq v0, v1, :cond_18

    const v1, -0x6c9ef958

    if-eq v0, v1, :cond_17

    goto :goto_e

    :cond_17
    const-string v0, "SeekQA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v3, v4

    goto :goto_f

    :cond_18
    const-string v0, "SeekDC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_f

    :cond_19
    :goto_e
    move v3, v5

    :goto_f
    packed-switch v3, :pswitch_data_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_22
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekQA()I

    move-result v0

    return v0

    :pswitch_23
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekDC()I

    move-result v0

    return v0

    :goto_10
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x712e4381
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x673c1014 -> :sswitch_5
        -0x54753130 -> :sswitch_4
        -0x2740286b -> :sswitch_3
        -0x54ba1f5 -> :sswitch_2
        0x3de29be1 -> :sswitch_1
        0x71d9d97a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7795fd00 -> :sswitch_15
        -0x6097aadd -> :sswitch_14
        -0x57b635eb -> :sswitch_13
        -0x53297d95 -> :sswitch_12
        -0x4bc61798 -> :sswitch_11
        -0x49c09da3 -> :sswitch_10
        -0x401789e9 -> :sswitch_f
        -0x2b6ae3f1 -> :sswitch_e
        -0x121267c3 -> :sswitch_d
        0x2487eac7 -> :sswitch_c
        0x3471400f -> :sswitch_b
        0x3eabfaf1 -> :sswitch_a
        0x5435ba01 -> :sswitch_9
        0x5d86030f -> :sswitch_8
        0x6cdb6a9c -> :sswitch_7
        0x777fc5a2 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method

.method public getLastScanResult()[J
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    return-object v1

    :cond_0
    const-string v0, "getLastScanResult - mScanChannelList null"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongTunningParameter(Ljava/lang/String;J)J
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "long getLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "getLongTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-wide p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x78c176d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v1, :cond_2

    const v1, 0x35e9415e

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "CurrentSNR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "CurrentRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0

    :goto_2
    const v1, -0x28a33b56

    if-eq v0, v1, :cond_6

    const v1, 0x681de184

    if-eq v0, v1, :cond_5

    const v1, 0x69f7a436

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "SoftMuteCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_5
    const-string v0, "SoftStereoBlendRef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    goto :goto_4

    :cond_6
    const-string v0, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v4

    :goto_4
    packed-switch v2, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftStereoBlendRef()J

    move-result-wide v0

    return-wide v0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftMuteCoeff()J

    move-result-wide v0

    return-wide v0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftStereoBlendCoeff()J

    move-result-wide v0

    return-wide v0

    :cond_8
    :goto_5
    return-wide p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getMaxVolume()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayedFreq()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    return-wide v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSoftMuteMode()Z

    move-result v0

    return v0
.end method

.method public getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "getStringTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-object p2

    :cond_0
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v1, :cond_6

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7f620235

    if-eq v0, v1, :cond_3

    const v1, -0x35ee1432    # -2390771.5f

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "FakeChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_3
    const-string v0, "DeSenseList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getDeSenseList()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getFakeChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x12b0651c

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "HybridSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_5
    return-object p2

    :cond_9
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVolume()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public isAllSoundOff()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isBatteryLow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isDNSEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public isRDSEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public mute(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-ne v0, p1, :cond_0

    const-string/jumbo v0, "redundent call of mute/unmute: ignored - "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v1, 0x2

    const/16 v2, 0x9

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getDNDStatus()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getDNDStatus()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    :cond_2
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "notifyEvent Turning on FM radio"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_5

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz p2, :cond_7

    :try_start_1
    move-object v3, p2

    check-cast v3, Lcom/android/server/FMPlayerNativeBase$PIECCData;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget v5, v3, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mPI:I

    iget v6, v3, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mECC:I

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    sget-boolean v4, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5

    :cond_6
    :goto_1
    goto/16 :goto_3

    :cond_7
    const-string/jumbo v3, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRecordingFinished()V

    goto/16 :goto_3

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    move-object v3, p2

    check-cast v3, Lcom/android/server/FMPlayerNativeBase$RTPlusData;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget v6, v3, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType1:I

    iget v7, v3, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos1:I

    iget v8, v3, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen1:I

    iget v9, v3, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType2:I

    iget v10, v3, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos2:I

    iget v11, v3, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen2:I

    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v3, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onVolumeLocked()V

    goto/16 :goto_3

    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    move-object v3, p2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyReceived(J)V

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v3, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyStarted()V

    goto/16 :goto_3

    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemDisabled()V

    goto/16 :goto_3

    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemEnabled()V

    goto/16 :goto_3

    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    move-object v3, p2

    check-cast v3, Lcom/android/server/FMPlayerNativeBase$RDSData;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget-wide v5, v3, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    iget-object v7, v3, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v3, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetDisconnected()V

    goto/16 :goto_3

    :pswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetConnected()V

    goto/16 :goto_3

    :pswitch_b
    if-eqz p2, :cond_c

    move-object v3, p2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/FMRadioService;->curFreq:J

    sget-boolean v5, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : with data array:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_b
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onTuned(J)V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v3, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eqz p2, :cond_d

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    :cond_d
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4, v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDisabled(I)V

    goto/16 :goto_3

    :pswitch_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioEnabled()V

    goto/16 :goto_3

    :pswitch_e
    if-eqz p2, :cond_f

    move-object v3, p2

    check-cast v3, [Ljava/lang/Long;

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_e

    array-length v6, v4

    move v5, v6

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : with data array:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v3, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_f
    if-eqz p2, :cond_11

    move-object v3, p2

    check-cast v3, [Ljava/lang/Long;

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    array-length v6, v4

    move v5, v6

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : with data array:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v3, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :pswitch_11
    const-wide/16 v3, 0x0

    if-eqz p2, :cond_12

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v3, v5

    :cond_12
    sget-boolean v5, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : with freq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_13
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    nop

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "we loose "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " listener--ignore it :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-direct {p0, v4}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove done go for next i\'s value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    nop

    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_14
    monitor-exit v0

    return-void

    :cond_15
    :goto_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyRecFinish()V
    .locals 3

    const-string/jumbo v0, "notifyRecFinish EVENT_REC_FINISH"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const-string v0, "fmradio_recoding=off"

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public off()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    move-result v0

    return v0
.end method

.method public on()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized on_in_testmode()Z
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v2, "on_in_testmode is called with normal binary. This function is only for Factory binary. So just return"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p0

    return v3

    :cond_2
    const/16 v2, 0x9

    :try_start_2
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v5, 0x0

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNativeBase;->preInitialize()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    goto :goto_0

    :cond_3
    const-string v3, "FM preInitialize() failed"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNativeBase;->on()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->mute(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    const-string/jumbo v4, "on_in_testmode Turning on FM radio"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    :cond_5
    :try_start_4
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v2, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catch_0
    move-exception v3

    :try_start_5
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v4, v2, :cond_7

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_7
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :cond_8
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    return-void
.end method

.method public scan()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public searchAll()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchAll()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchDown()J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchDown()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchUp()J
    .locals 3

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchUp()J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public seekDown()J
    .locals 6

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->seekDown()J

    move-result-wide v4

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    const/4 v0, 0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-wide v4
.end method

.method public seekUp()J
    .locals 6

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->seekUp()J

    move-result-wide v4

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    const/4 v0, 0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-wide v4
.end method

.method public setBand(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBand(I)V

    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setChannelSpacing(I)V

    return-void
.end method

.method public setFMIntenna(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFMIntenna(Z)V

    return-void
.end method

.method public setIntegerTunningParameter(Ljava/lang/String;I)V
    .locals 13

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter:  parameterName- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  value:- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo v0, "setIntegerTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7bea88a4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v0, v1, :cond_5

    const v1, -0x6debe1a4

    if-eq v0, v1, :cond_4

    const v1, -0x3ba8f63

    if-eq v0, v1, :cond_3

    const v1, 0x7898f92a

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "Cnt_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v0, "SkipTuningValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_4
    const-string v0, "SNR_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    goto :goto_1

    :cond_5
    const-string v0, "RSSI_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v6

    :goto_1
    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v7, 0xa

    if-ne v0, v7, :cond_7

    goto/16 :goto_d

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->SkipTuning_Value()V

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCnt_th(I)V

    return-void

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSNR_th(I)V

    return-void

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRSSI_th(I)V

    return-void

    :cond_7
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eq v0, v12, :cond_16

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v11, :cond_8

    goto/16 :goto_a

    :cond_8
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3b53cce

    if-eq v0, v1, :cond_a

    const v1, 0x407f88dc

    if-eq v0, v1, :cond_9

    goto :goto_2

    :cond_9
    const-string v0, "AFValid_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v4, v5

    goto :goto_3

    :cond_a
    const-string v0, "AF_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    :goto_2
    move v4, v6

    :goto_3
    packed-switch v4, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFValid_th(I)V

    goto/16 :goto_10

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAF_th(I)V

    goto/16 :goto_10

    :cond_c
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v10, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x793b6ef8

    if-eq v0, v1, :cond_f

    const v1, -0x2cd46d5a

    if-eq v0, v1, :cond_e

    const v1, 0x40effc4

    if-eq v0, v1, :cond_d

    goto :goto_4

    :cond_d
    const-string v0, "FrequencyOffset_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v3, v4

    goto :goto_5

    :cond_e
    const-string v0, "PilotPower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_f
    const-string v0, "NoisePower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v3, v5

    goto :goto_5

    :cond_10
    :goto_4
    move v3, v6

    :goto_5
    packed-switch v3, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setPilotPowerThreshold(I)V

    goto/16 :goto_10

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setNoisePowerThreshold(I)V

    goto/16 :goto_10

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setFrequencyOffsetThreshold(I)V

    goto/16 :goto_10

    :cond_11
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v9, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_6

    :pswitch_9
    const-string v0, "IFCount2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v4, v5

    goto :goto_7

    :pswitch_a
    const-string v0, "IFCount1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    :goto_6
    move v4, v6

    :goto_7
    packed-switch v4, :pswitch_data_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_b
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setIFCount2(I)V

    goto/16 :goto_10

    :pswitch_c
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setIFCount1(I)V

    goto/16 :goto_10

    :cond_13
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v8, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v0, "BlendPAMD_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_9

    :sswitch_1
    const-string v0, "ATJCofig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v12, v1

    goto :goto_9

    :sswitch_2
    const-string v0, "BlendRSSI_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v12, v2

    goto :goto_9

    :sswitch_3
    const-string v0, "SeekSMG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v12, v5

    goto :goto_9

    :sswitch_4
    const-string v0, "Softmute_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v12, v3

    goto :goto_9

    :sswitch_5
    const-string v0, "SeekDesenseRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v12, v4

    goto :goto_9

    :cond_14
    :goto_8
    move v12, v6

    :goto_9
    packed-switch v12, :pswitch_data_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_d
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setATJ(I)V

    goto/16 :goto_10

    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendPAMD_th(I)V

    goto/16 :goto_10

    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendRSSI_th(I)V

    goto/16 :goto_10

    :pswitch_10
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSoftmute_th(I)V

    goto/16 :goto_10

    :pswitch_11
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekSMG(I)V

    goto/16 :goto_10

    :pswitch_12
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekDesenseRSSI(I)V

    goto/16 :goto_10

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_16
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_b

    :sswitch_6
    const-string v0, "AFRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v8

    goto/16 :goto_c

    :sswitch_7
    const-string v0, "RMSSIFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v10

    goto/16 :goto_c

    :sswitch_8
    const-string v0, "SNR_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v2, 0xc

    goto/16 :goto_c

    :sswitch_9
    const-string v0, "CFOTh12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v1

    goto/16 :goto_c

    :sswitch_a
    const-string v0, "SINRThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v12

    goto/16 :goto_c

    :sswitch_b
    const-string v0, "SINRSamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v5

    goto/16 :goto_c

    :sswitch_c
    const-string v0, "OnChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v3

    goto/16 :goto_c

    :sswitch_d
    const-string v0, "BlendRmssi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v2, 0xe

    goto :goto_c

    :sswitch_e
    const-string v0, "RSSI_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v2, 0xb

    goto :goto_c

    :sswitch_f
    const-string v0, "OffChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_c

    :sswitch_10
    const-string v0, "Cnt_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v2, 0xd

    goto :goto_c

    :sswitch_11
    const-string v0, "SINRFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v9

    goto :goto_c

    :sswitch_12
    const-string v0, "BlendSinr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v2, 0xf

    goto :goto_c

    :sswitch_13
    const-string v0, "SearchAlgoType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v4

    goto :goto_c

    :sswitch_14
    const-string v0, "GoodChannelRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v7

    goto :goto_c

    :sswitch_15
    const-string v0, "AFRMSSISamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v2, v11

    goto :goto_c

    :cond_17
    :goto_b
    move v2, v6

    :goto_c
    packed-switch v2, :pswitch_data_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_13
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendSinr(I)V

    goto/16 :goto_10

    :pswitch_14
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendRmssi(I)V

    goto/16 :goto_10

    :pswitch_15
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCnt_th_2(I)V

    goto/16 :goto_10

    :pswitch_16
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSNR_th_2(I)V

    goto/16 :goto_10

    :pswitch_17
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRSSI_th_2(I)V

    goto/16 :goto_10

    :pswitch_18
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    goto/16 :goto_10

    :pswitch_19
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    goto/16 :goto_10

    :pswitch_1a
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    goto/16 :goto_10

    :pswitch_1b
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    goto/16 :goto_10

    :pswitch_1c
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    goto/16 :goto_10

    :pswitch_1d
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    goto/16 :goto_10

    :pswitch_1e
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    goto :goto_10

    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNativeBase;->setOffChannelThreshold(I)V

    goto :goto_10

    :pswitch_20
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    goto :goto_10

    :pswitch_21
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    goto :goto_10

    :pswitch_22
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    goto :goto_10

    :cond_18
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6c9efae9

    if-eq v0, v1, :cond_1a

    const v1, -0x6c9ef958

    if-eq v0, v1, :cond_19

    goto :goto_e

    :cond_19
    const-string v0, "SeekQA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v4, v5

    goto :goto_f

    :cond_1a
    const-string v0, "SeekDC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_f

    :cond_1b
    :goto_e
    move v4, v6

    :goto_f
    packed-switch v4, :pswitch_data_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_23
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekQA(I)V

    goto :goto_10

    :pswitch_24
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekDC(I)V

    nop

    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x712e4381
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x673c1014 -> :sswitch_5
        -0x54753130 -> :sswitch_4
        -0x2740286b -> :sswitch_3
        -0x54ba1f5 -> :sswitch_2
        0x3de29be1 -> :sswitch_1
        0x71d9d97a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7795fd00 -> :sswitch_15
        -0x6097aadd -> :sswitch_14
        -0x57b635eb -> :sswitch_13
        -0x53297d95 -> :sswitch_12
        -0x4bc61798 -> :sswitch_11
        -0x49c09da3 -> :sswitch_10
        -0x401789e9 -> :sswitch_f
        -0x2b6ae3f1 -> :sswitch_e
        -0x121267c3 -> :sswitch_d
        0x2487eac7 -> :sswitch_c
        0x3471400f -> :sswitch_b
        0x3eabfaf1 -> :sswitch_a
        0x5435ba01 -> :sswitch_9
        0x5d86030f -> :sswitch_8
        0x6cdb6a9c -> :sswitch_7
        0x777fc5a2 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method

.method public setInternetStreamingMode(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInternetStreamingMode :: mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] setListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    :cond_0
    new-instance v1, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no of listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public setLongTunningParameter(Ljava/lang/String;J)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "long setLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo v0, "setLongTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4409c0bb

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, v1, :cond_4

    const v1, -0x27402841

    if-eq v0, v1, :cond_3

    const v1, 0x3f3abeef

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "SeekRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v0, "SeekSNR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_4
    const-string v0, "DEConstant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekSNR(J)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekRSSI(J)V

    nop

    :goto_2
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x28a33b56

    if-eq v0, v1, :cond_8

    const v1, 0x681de184

    if-eq v0, v1, :cond_7

    const v1, 0x69f7a436

    if-eq v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "SoftMuteCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v2, v3

    goto :goto_4

    :cond_7
    const-string v0, "SoftStereoBlendRef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_8
    const-string v0, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v2, v4

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v5

    :goto_4
    packed-switch v2, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftStereoBlendRef(J)V

    goto :goto_5

    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftMuteCoeff(J)V

    goto :goto_5

    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftStereoBlendCoeff(J)V

    nop

    :cond_a
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setMono()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setMono()V

    return-void
.end method

.method public setRecordMode(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1, v0}, Lcom/android/server/FMPlayerNativeBase;->setRecordMode(I)V

    return-void
.end method

.method public setSoftmute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute(Z)V

    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSpeakerOn(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSlimbusEnable(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSlimbusEnable(I)V

    return-void
.end method

.method public setStereo()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setStereo()V

    return-void
.end method

.method public setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo v0, "setStringTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v1, :cond_7

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7f620235

    if-eq v0, v1, :cond_4

    const v1, -0x35ee1432    # -2390771.5f

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "FakeChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_4
    const-string v0, "DeSenseList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setDeSenseList(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setFakeChannel(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x12b0651c

    if-eq v0, v1, :cond_8

    goto :goto_3

    :cond_8
    const-string v0, "HybridSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setHybridSearch(Ljava/lang/String;)V

    nop

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVolume(J)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set chipset Volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "setVolume :: unset on ScanProgress"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const-wide/16 v2, 0xf

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    const/4 v3, 0x1

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getDNDStatus()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    cmp-long v0, p1, v0

    if-gtz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string/jumbo v0, "setVolume :: AllSoundOff or DND is enabled. So FMRadio is muted."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public tune(J)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "tune mute - "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=1"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getDNDStatus()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const-string/jumbo v0, "tune unmute - "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    :cond_3
    const/4 v0, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method

.class public Lcom/samsung/android/media/AudioParameter;
.super Ljava/lang/Object;
.source "AudioParameter.java"


# static fields
.field public static final BAD_VALUE:I = -0x1

.field public static final KEY_ACTIVE_SOUND_INFO:Ljava/lang/String; = "getActiveSoundInfo"

.field public static final KEY_ALL_SOUND_MUTE:Ljava/lang/String; = "allsoundmute"

.field public static final KEY_APP_USING_AUDIO:Ljava/lang/String; = "hasActiveTrackUID"

.field public static final KEY_APP_USING_DEVICE:Ljava/lang/String; = "hasActiveTrackDevice"

.field public static final KEY_APP_VOLUME_UID:Ljava/lang/String; = "appvol_uid"

.field public static final KEY_APP_VOLUME_VALUE:Ljava/lang/String; = "appvol_value"

.field public static final KEY_AUDIO_LOGGING:Ljava/lang/String; = "logging"

.field public static final KEY_AUTO_REJECTION:Ljava/lang/String; = "autorejection"

.field public static final KEY_BAND:Ljava/lang/String; = "band"

.field public static final KEY_BT_HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field public static final KEY_BT_OFFLOAD_ENABLE:Ljava/lang/String; = "bt_offload_enable"

.field public static final KEY_BT_SAMPLERATE:Ljava/lang/String; = "bt_samplerate"

.field public static final KEY_CALL_STATE:Ljava/lang/String; = "CallState"

.field public static final KEY_COVER_CLOSE:Ljava/lang/String; = "cover_close"

.field public static final KEY_DEX_CONNECTED:Ljava/lang/String; = "DEXconnected"

.field public static final KEY_DEX_PAD_CONNECTED:Ljava/lang/String; = "DEXPADconnected"

.field public static final KEY_DEX_STATE:Ljava/lang/String; = "DEXstate"

.field public static final KEY_DHA:Ljava/lang/String; = "dha"

.field public static final KEY_DUAL_SPK:Ljava/lang/String; = "Dualspk"

.field public static final KEY_EARCARE:Ljava/lang/String; = "earcare"

.field public static final KEY_EARCARE_PERCENT:Ljava/lang/String; = "earcare_percent"

.field public static final KEY_EXTRA_VOLUME:Ljava/lang/String; = "extraVolume"

.field public static final KEY_FACTORY_TEST_STATE:Ljava/lang/String; = "factoryteststate"

.field public static final KEY_FINE_DEVICE:Ljava/lang/String; = "fine_device"

.field public static final KEY_FINE_VOLUME:Ljava/lang/String; = "fine_volume"

.field public static final KEY_FINE_VOLUME_V2:Ljava/lang/String; = "fine_volume_v2"

.field public static final KEY_FINE_VOLUME_V2_FLAG:Ljava/lang/String; = "fine_volume_v2_flag"

.field public static final KEY_FLAT_MOTION:Ljava/lang/String; = "FlatMotion"

.field public static final KEY_FOLDER_OPEN:Ljava/lang/String; = "folder_open"

.field public static final KEY_GAMECHAT:Ljava/lang/String; = "gamechat"

.field public static final KEY_GET_ACTIVE_ADDRESS:Ljava/lang/String; = "active_addr"

.field public static final KEY_GET_DEVICE_MASK_FOR_QUICK_SOUND_PATH:Ljava/lang/String; = "device_mask_QSP"

.field public static final KEY_HIDDEN_SOUND_PID:Ljava/lang/String; = "hiddensound_pid"

.field public static final KEY_HIDDEN_SOUND_VERSION:Ljava/lang/String; = "hiddensound_version"

.field public static final KEY_HIDDEN_SOUND_VOLUME:Ljava/lang/String; = "hiddensound_volume"

.field public static final KEY_HMT_STATE:Ljava/lang/String; = "hmtState"

.field public static final KEY_IS_FINE_VOLUME:Ljava/lang/String; = "is_fine_volume"

.field public static final KEY_IS_SAFE_MEDIA_VOLUME_DEVICE:Ljava/lang/String; = "SafeMediaVolumeDevice"

.field public static final KEY_IS_UHQ:Ljava/lang/String; = "isAvailableUHQ"

.field public static final KEY_IS_USE_AUDIO_FOR_PACKAGE:Ljava/lang/String; = "isUseAudioForPackage"

.field public static final KEY_IS_USE_AUDIO_FOR_UID:Ljava/lang/String; = "isUseAudioForUid"

.field public static final KEY_KARAOKE:Ljava/lang/String; = "karaoke"

.field public static final KEY_LIMITED_VOLUME_FOR_OVERHEAT:Ljava/lang/String; = "volume_for_overheat"

.field public static final KEY_MULTI_SOUND_GET_ACTIVE_DEVICE_NAME:Ljava/lang/String; = "multisound_get_active_bt_device_name"

.field public static final KEY_MULTI_SOUND_GET_PRIORITY_DEVICE:Ljava/lang/String; = "multisound_getprioritydevice"

.field public static final KEY_MULTI_SOUND_ON:Ljava/lang/String; = "multisound_on"

.field public static final KEY_MULTI_SOUND_PREFIX:Ljava/lang/String; = "multisound"

.field public static final KEY_MULTI_SOUND_SETDEVICE_DEVICE:Ljava/lang/String; = "multisound_setdevice_device"

.field public static final KEY_MULTI_SOUND_SETDEVICE_UID:Ljava/lang/String; = "multisound_setdevice_uid"

.field public static final KEY_NB_QUALITY:Ljava/lang/String; = "nb_quality"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final KEY_PHONE_TYPE:Ljava/lang/String; = "phone_type"

.field public static final KEY_PIN_APP_NAME:Ljava/lang/String; = "multisound_pinappname"

.field public static final KEY_PREVENT_OVERHEAT_GAME_STATE:Ljava/lang/String; = "overheat_game_state"

.field public static final KEY_PREVENT_OVERHEAT_GAME_UID:Ljava/lang/String; = "overheat_game_uid"

.field public static final KEY_PROXIMITY_SENSOR_CLOSED:Ljava/lang/String; = "ProximitySensorClosed"

.field public static final KEY_RING_THROUGH_HEADSET:Ljava/lang/String; = "ring_through_headset"

.field public static final KEY_SCREEN_MIRRORING_STATE:Ljava/lang/String; = "ScreenMirroringState"

.field public static final KEY_SET_FORCE_USE_FOR_MEDIA:Ljava/lang/String; = "setForceUseForMedia"

.field public static final KEY_SET_GLOBAL_MS_EFFECT:Ljava/lang/String; = "setGlobalMSEffect"

.field public static final KEY_SET_MODE_CALLING_PACKAGE:Ljava/lang/String; = "setModeCallingPackage"

.field public static final KEY_SOUND_BALANCE:Ljava/lang/String; = "sound_balance"

.field public static final KEY_SOUND_LR_SWITCH:Ljava/lang/String; = "sound_lr_switch"

.field public static final KEY_SPLIT_SOUND:Ljava/lang/String; = "SplitSound"

.field public static final KEY_TO_MONO:Ljava/lang/String; = "toMono"

.field public static final KEY_UHQ_BT:Ljava/lang/String; = "UHQ_BT"

.field public static final KEY_UPSCALER:Ljava/lang/String; = "upscaler"

.field public static final KEY_USE_AUDIO_APP_UID:Ljava/lang/String; = "use_audio_uids"

.field public static final KEY_VOLUME_LIMIT_ON:Ljava/lang/String; = "volumelimit_on"

.field public static final KEY_VOLUME_LIMIT_VALUE:Ljava/lang/String; = "volumelimit_value"

.field public static final KEY_WFD_FIXED_VOLUME:Ljava/lang/String; = "wfdFixedVolume"

.field public static final NO_ERROR:I = 0x0

.field public static final VALUE_FALSE:Ljava/lang/String; = "false"

.field public static final VALUE_NB:Ljava/lang/String; = "NB"

.field public static final VALUE_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_ON:Ljava/lang/String; = "on"

.field public static final VALUE_SWB:Ljava/lang/String; = "SWB"

.field public static final VALUE_TRUE:Ljava/lang/String; = "true"

.field public static final VALUE_WB:Ljava/lang/String; = "WB"


# instance fields
.field private mAudioParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ";"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "="

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

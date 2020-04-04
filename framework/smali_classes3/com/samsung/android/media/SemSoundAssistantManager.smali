.class public Lcom/samsung/android/media/SemSoundAssistantManager;
.super Ljava/lang/Object;
.source "SemSoundAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemSoundAssistantManager$EventType;
    }
.end annotation


# static fields
.field public static final ACTION_SOUND_EVENT_CHANGED:Ljava/lang/String; = "com.samsung.android.intent.action.SOUND_EVENT"

.field public static final ADJUST_MEDIA_ONLY:Ljava/lang/String; = "adjust_media_volume_only"

.field public static final BOOT_COMPLETED:I = 0x3eb

.field public static final DEVICE_BLUETOOTH:I = 0x2

.field public static final DEVICE_DEFAULT:I = 0x0

.field public static final DEVICE_HEADSET:I = 0x3

.field public static final DEVICE_SPEAKER_OR_HEADSET:I = 0x1

.field public static final ENABLE_FLOATING_BUTTON:Ljava/lang/String; = "enable_floating_button"

.field public static final EXECUTE_FLOATING_BUTTON:I = 0x0

.field public static final GET_APP_VOLUME_LIST:Ljava/lang/String; = "get_app_volume_list"

.field public static final IGNORE_AUDIO_FOCUS:Ljava/lang/String; = "ignore_audio_focus"

.field public static final MEDIA_BUTTON_PACKAGE:Ljava/lang/String; = "media_button_package"

.field public static final MEDIA_VOLUME_MULTI_STEP:Ljava/lang/String; = "sec_volume_steps"

.field public static final MEDIA_VOLUME_STEP_DEFAULT:I = 0xa

.field public static final MEDIA_VOLUME_STEP_INDEX:Ljava/lang/String; = "media_volume_step_index"

.field public static final MEDIA_VOLUME_STEP_MAX:I = 0xa

.field public static final MEDIA_VOLUME_STEP_MIN:I = 0x1

.field public static final MODE_ADJUST_MEDIA_VOLUME_ONLY:I = 0x1

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MONO_SOUND:Ljava/lang/String; = "mono_sound"

.field public static final PARAMETER_PREFIX:Ljava/lang/String; = "sound_assistant"

.field public static final REMOVE_APP_VOLUME:Ljava/lang/String; = "remove_app_volume"

.field public static final RINGTONE_THROUGH_HEADSET_ONLY:Ljava/lang/String; = "ring_through_headset"

.field public static final SELFIESTICK:Ljava/lang/String; = "selfiestick"

.field public static final SELFIESTICK_CONNECTED:Ljava/lang/String; = "selfiestick_connected"

.field public static final SET_FORCE_OUTPUT_FOR_APP:Ljava/lang/String; = "set_force_output_for_app"

.field public static final SOUNDSETTING_EVENT_A2DP_CONNECTION_CHANGED:I = 0x8

.field public static final SOUNDSETTING_EVENT_HEADSET_CONNECTION_CHANGED:I = 0x4

.field public static final SOUNDSETTING_EVENT_MEDIA_KEY_RECEIVER:I = 0x40

.field public static final SOUNDSETTING_EVENT_MEDIA_MUTE_CHANGED:I = 0x2

.field public static final SOUNDSETTING_EVENT_NONE:I = 0x0

.field public static final SOUNDSETTING_EVENT_PLAYBACK_STATE_CHANGED:I = 0x10

.field public static final SOUNDSETTING_EVENT_RINGERMODE_CHANGED:I = 0x1

.field public static final SOUNDSETTING_EVENT_VOLUMEKEY_LONGPRESS:I = 0x20

.field public static final SOUNDSETTING_EXTRA_EVENT_CALLING_PACKAGE:Ljava/lang/String; = "package"

.field public static final SOUNDSETTING_EXTRA_EVENT_TYPE:Ljava/lang/String; = "type"

.field public static final SOUNDSETTING_EXTRA_EVENT_VALUE:Ljava/lang/String; = "value"

.field public static final SOUND_BALANCE:Ljava/lang/String; = "sound_balance"

.field public static final SOUND_LR_SWITCH:Ljava/lang/String; = "sound_lr_switch"

.field private static final TAG:Ljava/lang/String; = "SemSoundAssistant"

.field public static final UID_FOR_SOUNDASSISTANT:Ljava/lang/String; = "uid_for_soundassistant"

.field public static final USING_AUDIO_UIDS:Ljava/lang/String; = "using_audio_uids"

.field public static final VERSION:Ljava/lang/String; = "version"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mOriginalContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    return-object v0

    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method private setSoundAssistantParam(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant=1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public activateFloatingButton(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_floating_button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void
.end method

.method public addToMultiSoundSupportedList(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->addPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemSoundAssistant"

    const-string v2, "Error calling addPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public adjustSoundBalance(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad raio value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableSelfieStickMode()Z
    .locals 2

    const-string/jumbo v0, "selfiestick=true"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isSelfieStickModeEnabled()Z

    move-result v1

    return v1
.end method

.method public forceMonoSound(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mono_sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationUidListUsingAudio()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "using_audio_uids"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getApplicationVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getAppVolume(I)I

    move-result v0

    return v0
.end method

.method public getAudioFrameworkVersion()I
    .locals 3

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1
.end method

.method public getDeviceForStream(I)I
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "ring_through_headset"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    const/4 v1, 0x3

    return v1

    :cond_1
    return v1
.end method

.method public getMediaVolumeInterval()I
    .locals 3

    const-string/jumbo v0, "media_volume_step_index"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1
.end method

.method public getMediaVolumeSteps()[I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMediaVolumeSteps()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiSoundDevice()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    return v0
.end method

.method public getMultiSoundDeviceVolume(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Multisound is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result v0

    return v0
.end method

.method public getRecommandedPackagesForSoundAssistant()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMediaAppList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUidIgnoredAudioFocus()I
    .locals 3

    const-string v0, "ignore_audio_focus"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1
.end method

.method public getVolumeKeyMode()I
    .locals 4

    const-string v0, "adjust_media_volume_only"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1
.end method

.method public ignoreAudioFocusForApp(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore_audio_focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid_for_soundassistant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void
.end method

.method public initApplicationVolume(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove_app_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method

.method public isFloatingButtonActivated()Z
    .locals 3

    const-string v0, "enable_floating_button"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isMultiSoundOn()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v0

    return v0
.end method

.method public isMultiSoundSupportedPackage(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isAlreadyInDB(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemSoundAssistant"

    const-string v2, "Error calling isAlreadyInDB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isPredefinedMultiSoundSupportedPackage(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemSoundAssistant"

    const-string v2, "Error calling isInAllowedList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isSelfieStickModeEnabled()Z
    .locals 4

    const-string/jumbo v0, "selfiestick_connected"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1
.end method

.method public removeFromMultiSoundSupportedList(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->removePackageForName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemSoundAssistant"

    const-string v2, "Error calling removePackageForName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setApplicationVolume(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppVolume(II)V

    return-void
.end method

.method public setDefaultSoundOutputDevice(I)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;outDevice"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x2

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    move v6, v2

    const-string v7, ""

    const/4 v9, 0x1

    if-ne v1, v9, :cond_6

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    array-length v10, v5

    move-object v11, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v10, :cond_5

    aget v12, v5, v6

    const/4 v13, 0x0

    array-length v14, v4

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    aget-object v9, v4, v15

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v8

    if-ne v8, v12, :cond_2

    move v7, v12

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x1

    nop

    move-object v11, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    move v6, v7

    move-object v7, v11

    goto :goto_6

    :cond_6
    if-ne v1, v5, :cond_9

    const/4 v5, 0x0

    array-length v8, v4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_8

    aget-object v10, v4, v9

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v11

    const/16 v12, 0x80

    if-ne v11, v12, :cond_7

    const/16 v6, 0x80

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-nez v5, :cond_9

    const/4 v8, 0x0

    return v8

    :cond_9
    :goto_6
    const/4 v8, 0x0

    iget-object v5, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a

    const/16 v16, 0x1

    goto :goto_7

    :cond_a
    move/from16 v16, v8

    :goto_7
    return v16

    nop

    :array_0
    .array-data 4
        0x8000
        0x8
        0x4
        0x4000000
        0x2000
        0x4000
        0x1000
        0x400
        0x800
        0x2
    .end array-data
.end method

.method public setDeviceForStream(II)V
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "ring_through_headset"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    const/4 v3, 0x1

    if-ne p2, v0, :cond_2

    shl-int v0, v3, p1

    or-int/2addr v0, v2

    :goto_1
    goto :goto_2

    :cond_2
    shl-int v0, v3, p1

    not-int v0, v0

    and-int/2addr v0, v2

    goto :goto_1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ring_through_headset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setForceDeviceForAppSoundOutput(II)V
    .locals 3

    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_force_output_for_app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uid_for_soundassistant"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMediaVolumeInterval(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media_volume_step_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMediaVolumeSteps([I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMediaVolumeSteps([I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setMultiSoundDevice(II)V
    .locals 3

    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_force_output_for_app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uid_for_soundassistant"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMultiSoundDeviceVolume(III)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Multisound is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    const/4 v0, 0x1

    return v0
.end method

.method public setMultiSoundOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    return-void
.end method

.method public setMultiSoundTargetDevice(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppDevice(II)V

    return-void
.end method

.method public setSoundAssistantProperty(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant=1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemSoundAssistant"

    const-string v3, "Dead object in setAppDevice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolumeKeyMode(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjust_media_volume_only="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method

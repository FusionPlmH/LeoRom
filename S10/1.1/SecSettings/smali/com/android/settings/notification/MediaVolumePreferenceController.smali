.class public Lcom/android/settings/notification/MediaVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "MediaVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;,
        Lcom/android/settings/notification/MediaVolumePreferenceController$H;
    }
.end annotation


# static fields
.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final UPDATE_SEEKBAR_DELAY_MILLIS:J = 0xaL


# instance fields
.field private final mHandler:Lcom/android/settings/notification/MediaVolumePreferenceController$H;

.field private final mReceiver:Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "media_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/notification/MediaVolumePreferenceController$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/MediaVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/MediaVolumePreferenceController;Lcom/android/settings/notification/MediaVolumePreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mHandler:Lcom/android/settings/notification/MediaVolumePreferenceController$H;

    new-instance v0, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;-><init>(Lcom/android/settings/notification/MediaVolumePreferenceController;Lcom/android/settings/notification/MediaVolumePreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/MediaVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->setDualColorSeekbar()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/MediaVolumePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/MediaVolumePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/MediaVolumePreferenceController;)Lcom/android/settings/notification/MediaVolumePreferenceController$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mHandler:Lcom/android/settings/notification/MediaVolumePreferenceController$H;

    return-object v0
.end method

.method private isZenModeEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDualColorSeekbar()V
    .locals 5

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v2}, Lcom/android/settings/notification/AudioHelper;->isSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PrefControllerMixin"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v2}, Lcom/android/settings/notification/AudioHelper;->isEarDeviceStatusOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v2}, Lcom/android/settings/notification/AudioHelper;->getEarProtectLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V

    const-string v1, "PrefControllerMixin"

    const-string v2, "STREAM_MUSIC : mEarProtectLevel"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V

    goto :goto_1

    :cond_5
    const-string v1, "PrefControllerMixin"

    const-string v2, "setDualColorSeekbar : Preference is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v1}, Lcom/android/settings/notification/AudioHelper;->getEarProtectLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEarProtectLevel(I)V

    :cond_0
    return-void
.end method

.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "media_volume"

    return-object v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->updatePreferenceIcon(I)V

    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->setDualColorSeekbar()V

    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/MediaVolumePreferenceController$MediaChangedReceiver;->register(Z)V

    return-void
.end method

.method public updatePreferenceIcon(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->isZenModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getNormalIcon()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getMuteIcon()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    return-void
.end method

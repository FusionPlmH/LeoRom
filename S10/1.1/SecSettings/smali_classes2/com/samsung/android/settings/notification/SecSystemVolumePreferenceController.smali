.class public Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "SecSystemVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;
    }
.end annotation


# static fields
.field private static final KEY_SYSTEM_VOLUME:Ljava/lang/String; = "system_volume"

.field private static final UPDATE_RINGER_MODE:I = 0x1


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mReceiver:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "system_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;-><init>(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;

    new-instance v0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$1;-><init>(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;)Lcom/android/settings/notification/AudioHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected getAudioStream()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController$RingReceiver;->register(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method

.method public updatePreferenceIcon(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->getNormalIcon()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->getMuteIcon()I

    move-result v1

    :goto_0
    if-gtz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v2}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    return-void
.end method

.class public Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;
.super Ljava/lang/Object;
.source "SecSeekBarVolumizerDTMF.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

.field private final mContext:Landroid/content/Context;

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_waiting_tone"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_waiting_tone"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    return-void
.end method

.method private stopToneGenerator()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->stopToneGenerator()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_waiting_tone"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v0, p2, -0x2

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v1}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/media/ToneGenerator;->startTone(II)Z

    iput p2, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    invoke-interface {v1, p0}, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;->onSampleStarting(Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->stopToneGenerator()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

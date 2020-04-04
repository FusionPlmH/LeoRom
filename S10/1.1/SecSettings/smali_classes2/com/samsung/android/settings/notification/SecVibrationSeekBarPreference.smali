.class public Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "SecVibrationSeekBarPreference.java"


# instance fields
.field private mMaxIntensity:I

.field private mPaused:Z

.field private mSALogID:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSystemDBName:Ljava/lang/String;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f0d0286

    const v1, 0x7f0d0286

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->setLayoutResource(I)V

    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method private setVibrationIntensity(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "SecVibrationSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVibrationIntensity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->stopVibration()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->stopVibration()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mPaused:Z

    return-void
.end method

.method public onActivityResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mPaused:Z

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x10204a9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mMaxIntensity:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->setCurrentProgress()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->setVibrationIntensity(I)V

    const/16 v0, 0xfa2

    iget v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSALogID:I

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_0
    return-void
.end method

.method public setCurrentProgress()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mMaxIntensity:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v0, "SecVibrationSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentProgress() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mMaxIntensity:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStream(Ljava/lang/String;ILandroid/os/VibrationEffect;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mSALogID:I

    iput p2, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mMaxIntensity:I

    iput-object p3, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->setMax(I)V

    return-void
.end method

.method public stopVibration()V
    .locals 2

    const-string v0, "SecVibrationSeekBarPreference"

    const-string v1, "stopVibration()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

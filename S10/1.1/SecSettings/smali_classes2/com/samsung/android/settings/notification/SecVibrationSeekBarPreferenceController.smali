.class public abstract Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "SecVibrationSeekBarPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final MAXIMUM_VIBRATION_INTENSITY_COIN_DC_PMIC:I = 0x3

.field protected static final MAXIMUM_VIBRATION_INTENSITY_DEFAULT:I = 0x5

.field protected static final MAXIMUM_VIBRATION_INTENSITY_FORCE_TOUCH:I = 0x4


# instance fields
.field private mPrefObserver:Landroid/database/ContentObserver;

.field protected mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getSALogID()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->setStream(Ljava/lang/String;ILandroid/os/VibrationEffect;I)V

    new-instance v0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController$1;-><init>(Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public getMaxSteps()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->getMax()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result v0

    return v0
.end method

.method protected getMaxVibrationIntensity()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method protected abstract getSALogID()I
.end method

.method public getSliderPosition()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->getProgress()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected abstract getSystemDBName()Ljava/lang/String;
.end method

.method protected abstract getVibrationEffect()Landroid/os/VibrationEffect;
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->onActivityPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->onActivityResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreference;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

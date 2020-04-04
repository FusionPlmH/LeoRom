.class public Lcom/samsung/android/settings/notification/SecSoundVibrationFeedbackController;
.super Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;
.source "SecSoundVibrationFeedbackController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundSettingPrefController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "vibration_feedback_intensity"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationFeedbackController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationFeedbackController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundVibrationFeedbackController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

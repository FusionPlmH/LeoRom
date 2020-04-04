.class public Lcom/samsung/android/settings/notification/SecVibrationIntensityHardPressVibrationFeedbackController;
.super Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;
.source "SecVibrationIntensityHardPressVibrationFeedbackController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportForceTouch()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationIntensityHardPressVibrationFeedbackController;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsEnhancedPatternProvided()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVibrationIntensityHardPressVibrationFeedbackController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    nop

    :cond_1
    return v1
.end method

.method protected getMaxVibrationIntensity()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getSALogID()I
    .locals 1

    const/16 v0, 0x1c34

    return v0
.end method

.method protected getSystemDBName()Ljava/lang/String;
    .locals 1

    const-string v0, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    return-object v0
.end method

.method protected getVibrationEffect()Landroid/os/VibrationEffect;
    .locals 3

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    const v1, 0xc376

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

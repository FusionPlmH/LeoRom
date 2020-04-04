.class public Lcom/samsung/android/settings/notification/SecVibrationIntensityTouchVibrationController;
.super Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;
.source "SecVibrationIntensityTouchVibrationController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationIntensityTouchVibrationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method protected getSALogID()I
    .locals 1

    const/16 v0, 0xfa5

    return v0
.end method

.method protected getSystemDBName()Ljava/lang/String;
    .locals 1

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    return-object v0
.end method

.method protected getVibrationEffect()Landroid/os/VibrationEffect;
    .locals 3

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    const v1, 0xc369

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

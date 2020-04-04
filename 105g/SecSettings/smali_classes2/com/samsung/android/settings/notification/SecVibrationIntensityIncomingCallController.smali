.class public Lcom/samsung/android/settings/notification/SecVibrationIntensityIncomingCallController;
.super Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;
.source "SecVibrationIntensityIncomingCallController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecVibrationSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVibrationIntensityIncomingCallController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method protected getSALogID()I
    .locals 1

    const/16 v0, 0xfa3

    return v0
.end method

.method protected getSystemDBName()Ljava/lang/String;
    .locals 1

    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    return-object v0
.end method

.method protected getVibrationEffect()Landroid/os/VibrationEffect;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVibrationIntensityIncomingCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_vibration_pattern"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVibrationIntensityIncomingCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "vibration_pattern"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, -0x1

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v3, v4, v5}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

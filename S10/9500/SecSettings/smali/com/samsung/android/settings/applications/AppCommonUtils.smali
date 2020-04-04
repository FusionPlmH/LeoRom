.class public Lcom/samsung/android/settings/applications/AppCommonUtils;
.super Ljava/lang/Object;
.source "AppCommonUtils.java"


# direct methods
.method public static getOverlayTitle()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_APPS_OVERLAY_WINDOW_TITLE_BY_VZW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12158a

    return v0

    :cond_0
    const v0, 0x7f121589

    return v0
.end method

.method public static getWriteSettingsTitle()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_APPS_WRITE_SETTING_TITLE_BY_VZW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1216a6

    return v0

    :cond_0
    const v0, 0x7f1216a5

    return v0
.end method

.method public static hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6

    const-string v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v1, "getDefaultApplicationInternal"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v3, v5

    nop

    :cond_0
    return v3
.end method

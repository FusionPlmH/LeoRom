.class public Lcom/samsung/android/settings/security/SecurityPolicyUpdatePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecurityPolicyUpdatePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "security_policy_updates"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdatePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.spdclient"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

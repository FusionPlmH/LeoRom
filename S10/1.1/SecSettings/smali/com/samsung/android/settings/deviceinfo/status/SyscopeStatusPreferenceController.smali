.class public Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SyscopeStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSysscopeForChnRoot:Z

.field private mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mIsSysscopeForChnRoot:Z

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->isSysscopeForChnRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mIsSysscopeForChnRoot:Z

    return-void
.end method

.method private changeSysScopeStatus()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121ab0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->getICDVerification()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v3, "SyscopeStatusPreferenceController"

    const-string v4, "Fail to get ICD Verification"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mIsSysscopeForChnRoot:Z

    const v4, 0x7f1219f0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v2, v5, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkRootingCondition()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1219f3

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "400-810-5858"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v2, v5, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f1219f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-ne v2, v6, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mIsSysscopeForChnRoot:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    :cond_6
    return-void
.end method

.method private getICDVerification()I
    .locals 2

    new-instance v0, Lcom/sec/icdverification/ICDVerification;

    invoke-direct {v0}, Lcom/sec/icdverification/ICDVerification;-><init>()V

    nop

    invoke-static {}, Lcom/sec/icdverification/ICDVerification;->check()I

    move-result v1

    return v1
.end method

.method private isSysscopeForChnRoot()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSupportRootBadge(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sysscope_status"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/SyscopeStatusPreferenceController;->changeSysScopeStatus()V

    :cond_0
    return-void
.end method

.class public Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CollectDiagnosticsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final KEY_COLLECT_DIAGNOSTICS:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasCorrectMyAccount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "CollectDiagnosticsPreferenceController"

    iput-object v0, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "collect_diagnostics"

    iput-object v0, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->KEY_COLLECT_DIAGNOSTICS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mHasCorrectMyAccount:Z

    iput-object p1, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "collect_diagnostics"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PrefControllerMixin"

    const-string v1, "Collect Diagnostics Preference triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mHasCorrectMyAccount:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.tmobile.pr.mytmobile"

    const-string v4, "com.tmobile.pr.mytmobile.iqtoggle.ui.OptInSummary"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.carrieriq.tmobile.IQToggle"

    const-string v4, "com.carrieriq.tmobile.IQToggle.ui"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :try_start_0
    const-string v3, "com.carrieriq.tmobile.IQToggle"

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v2, 0x0

    const-string v4, "PrefControllerMixin"

    const-string v5, "Package not found : IQToggle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :try_start_1
    const-string v5, "com.tmobile.pr.mytmobile"

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const-string v9, "PrefControllerMixin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSkipMyAccount: rawVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", stringVerson = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", numVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v9, 0x40666666    # 3.6f

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_0

    move v9, v1

    goto :goto_1

    :cond_0
    move v9, v3

    :goto_1
    iput-boolean v9, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mHasCorrectMyAccount:Z

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move v4, v9

    const-string v9, "PrefControllerMixin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasMyAccountEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    iput-boolean v3, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mHasCorrectMyAccount:Z

    const-string v6, "PrefControllerMixin"

    const-string v7, "NumberFormatException : MyAccount version"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v5

    iput-boolean v3, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mHasCorrectMyAccount:Z

    const-string v6, "PrefControllerMixin"

    const-string v7, "NameNotFoundException : MyAccount"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    if-nez v2, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/settings/general/CollectDiagnosticsPreferenceController;->mHasCorrectMyAccount:Z

    if-eqz v5, :cond_2

    :cond_1
    if-nez v4, :cond_3

    :cond_2
    return v3

    :cond_3
    return v1
.end method

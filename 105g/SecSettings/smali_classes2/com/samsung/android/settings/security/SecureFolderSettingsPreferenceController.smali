.class public Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecureFolderSettingsPreferenceController.java"


# static fields
.field private static final CREATE_SECURE_FOLDER_ACTION:Ljava/lang/String; = "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

.field private static final KEY_SECURE_FOLDER:Ljava/lang/String; = "secure_folder"

.field private static final PKG_SECURE_FOLDER:Ljava/lang/String; = "com.samsung.knox.securefolder"


# instance fields
.field isSecureFolderAction:Z

.field personaManager:Lcom/samsung/android/knox/SemPersonaManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "secure_folder"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->isSecureFolderAction:Z

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->isSecureFolderAction:Z

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x2

    return v2

    :cond_2
    return v3
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "secure_folder"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2347

    const/16 v1, 0x118b

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.knox.securefolder"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const-string v2, "com.samsung.knox.securefolder"

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "skip_popup"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return v3

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->isSecureFolderAction:Z

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->isSecureFolderAction:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

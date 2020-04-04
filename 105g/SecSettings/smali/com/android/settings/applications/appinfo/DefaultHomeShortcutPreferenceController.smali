.class public Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;
.super Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.source "DefaultHomeShortcutPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "default_home"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "default_home"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected hasAppCapability()Z
    .locals 3

    const-string v0, "DCM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.bmwgroup.touchcommand"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isDefaultApp()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    new-instance v1, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->isHomeDefault(Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->updateState(Landroid/support/v7/preference/Preference;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->hasAppCapability()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.class public Lcom/android/settings/development/DefaultLaunchPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DefaultLaunchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/DefaultLaunchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/DefaultLaunchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/DefaultLaunchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    const-string v1, "inactive_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/DefaultLaunchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    const-string v1, "running_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DefaultLaunchPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isDeveloperModeAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

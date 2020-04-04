.class public Lcom/samsung/android/settings/deviceinfo/status/SimLockStatusPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SimLockStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sim_lock_status_kddi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    return v0
.end method

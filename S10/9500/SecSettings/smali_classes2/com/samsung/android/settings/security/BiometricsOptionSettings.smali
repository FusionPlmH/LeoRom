.class public Lcom/samsung/android/settings/security/BiometricsOptionSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "BiometricsOptionSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsOptionSettings;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/security/BiometricsOptionSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/security/ScreenTransitionEffectPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/ScreenTransitionEffectPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsOptionSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/BiometricsOptionSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsOptionSettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BiometricsOptionSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2136

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500a0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/BiometricsOptionSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/security/PreferredBiometricSettingsController;->handleActivityResult(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.class public Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RegulatoryInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final INTENT_PROBE:Landroid/content/Intent;

.field private static sSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;->INTENT_PROBE:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;->sSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "regulatory_info"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportRegulatoryInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkForCostaRicaSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    new-instance v0, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController$1;-><init>(Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

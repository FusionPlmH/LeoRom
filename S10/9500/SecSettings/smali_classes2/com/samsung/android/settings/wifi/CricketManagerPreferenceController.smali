.class public Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CricketManagerPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static DBG:Z

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCricketManager:Landroid/support/v7/preference/Preference;

.field private mIsAvailable:Z

.field private mIsSupportedCricketManager:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mIsSupportedCricketManager:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mIsAvailable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private isCricketManagerSupport()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mActivity:Landroid/app/Activity;

    const-string v1, "com.smithmicro.netwise.director.cricket"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "cricket_manager"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mCricketManager:Landroid/support/v7/preference/Preference;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->DBG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v2, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->isCricketManagerSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mIsSupportedCricketManager:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mIsSupportedCricketManager:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mCricketManager:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mCricketManager:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mCricketManager:Landroid/support/v7/preference/Preference;

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mIsAvailable:Z

    :cond_3
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "cricket_manager"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mCricketManager:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "cricket_manager"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfigureWifiSettings"

    const-string v2, "starting cricket manager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.smithmicro.mnd.MNDSettings"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1212a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f1208a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    const-string v3, "ConfigureWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return v1
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/CricketManagerPreferenceController;->mIsAvailable:Z

    return v0
.end method

.class public Lcom/samsung/android/settings/security/OtherSecuritySettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "OtherSecuritySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/security/OtherSecuritySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/security/OtherSecuritySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/security/OtherSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/OtherSecuritySettings;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/OtherSecuritySettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/OtherSecuritySettings;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/samsung/android/settings/security/OtherSecuritySettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    new-instance v0, Lcom/android/settings/security/ShowPasswordPreferenceController;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/security/ShowPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V

    new-instance v1, Lcom/android/settings/security/SimLockPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v2, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V

    new-instance v3, Lcom/samsung/android/settings/security/SecurityPolicyUpdatePreferenceController;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdatePreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_1
    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;

    invoke-direct {v6, p0}, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;

    invoke-direct {v6, p0}, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/security/CredentialStoragePreferenceController;

    invoke-direct {v6, p0}, Lcom/android/settings/security/CredentialStoragePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/security/UserCredentialsPreferenceController;

    invoke-direct {v6, p0}, Lcom/android/settings/security/UserCredentialsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/security/ResetCredentialsPreferenceController;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/settings/security/ResetCredentialsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/security/InstallCredentialsPreferenceController;

    invoke-direct {v6, p0, p2}, Lcom/android/settings/security/InstallCredentialsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v7, "category_data_protection"

    invoke-direct {v6, p0, v7}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_2
    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;

    invoke-direct {v6, p0}, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    new-instance v6, Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/settings/security/ScreenPinningPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    return-object v5
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

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/OtherSecuritySettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1197

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500e6

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/security/OtherSecuritySettings;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v3, v2, Landroid/preference/PreferenceManager$OnActivityResultListener;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    const-class v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "factory_data_reset_password_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->removePreference(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

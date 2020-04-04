.class public Lcom/android/settings/deviceinfo/DeviceInfoSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/DeviceInfoSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroid/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;

    invoke-direct {v1, p2, p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;-><init>(Landroid/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/StatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/DiagnosticsAndUsagePreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/DiagnosticsAndUsagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/IconGlossaryPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossaryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/CtcEpushPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/CtcEpushPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/ServiceInformationPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/ServiceInformationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/NtcApprovalPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/deviceinfo/NtcApprovalPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/PreloadedAppsPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedAppsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

   new-instance v1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/LeoNamePreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/LeoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-object v0
.end method

.method private setLinkedDataView()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$ResetDashboardFragmentActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "menu"

    const-string v3, "reset"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "flowId"

    const/16 v3, 0x2341

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "callerMetric"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v2, 0x7f120519

    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/16 v2, 0x1000

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "flowId"

    const/16 v4, 0x2342

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "callerMetric"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v3, 0x7f120560

    iput v3, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b1d

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceInfoSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150048

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v2, :cond_0

    const v2, 0x7f1500b1

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->addPreferencesFromResource(I)V

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->onDestroyView()V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->setLinkedDataView()V

    return-void
.end method

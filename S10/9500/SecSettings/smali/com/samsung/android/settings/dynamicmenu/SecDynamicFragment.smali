.class public abstract Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecDynamicFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;


# instance fields
.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mMenuObserver:Landroid/database/ContentObserver;

.field private mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mMenuObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    return-object v0
.end method

.method private bindPreferenceToTile(Landroid/app/Activity;Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p3, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p4}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    instance-of v0, p2, Landroid/support/v7/preference/PreferenceCategory;

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshTileState(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->bindSummary(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    iget-object v0, p3, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    iget-object v1, p3, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/widget/SecDynamicSwitchPreference;

    if-eq v0, v1, :cond_1

    iget-object v0, p3, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$1gs_1FTGeT3kdCzJfpuvitif3sc;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p3, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v2, "com.android.settings.order"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.android.settings.order"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    const-string v2, "com.android.settings.order"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget v2, p3, Lcom/android/settingslib/drawer/Tile;->priority:I

    if-eqz v2, :cond_3

    iget v2, p3, Lcom/android/settingslib/drawer/Tile;->priority:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    const v2, 0x7fffffff

    if-ne p5, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {p2, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private bindSummary(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 2

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.summary_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f121994    # 1.942001E38f

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$IMtpuaWhyWf9jtcYphzvTGu2B2g;-><init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private getPreferenceKey(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$bindPreferenceToTile$0(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$bindSummary$1(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$bindSummary$2(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.summary_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings.summary"

    invoke-static {v3, v2, v1, v4}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$kY-kOIIgWq3CWqKRGW2KtDwTfDQ;

    invoke-direct {v4, p2, v3}, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$kY-kOIIgWq3CWqKRGW2KtDwTfDQ;-><init>(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateMenuFromProvider()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_0

    const-string v2, "SecDynamicFragment"

    const-string v3, "provider is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    invoke-interface {v2, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getBundleListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "SecDynamicFragment"

    const-string v4, "list is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {v4}, Lcom/samsung/android/settings/external/DynamicMenuData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/settings/external/DynamicMenuData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/settings/external/DynamicMenuData;->getSummary()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/settings/external/DynamicMenuData;->getChecked()Z

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/settings/external/DynamicMenuData;->getEnabled()Z

    move-result v9

    invoke-virtual {v4}, Lcom/samsung/android/settings/external/DynamicMenuData;->getVisible()Z

    move-result v10

    invoke-virtual {v4}, Lcom/samsung/android/settings/external/DynamicMenuData;->getColorPrimaryDark()Z

    move-result v11

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v12, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v12, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v12, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v12, v10}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    instance-of v13, v12, Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v13, :cond_5

    move-object v13, v12

    check-cast v13, Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v13, v8}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_5
    instance-of v13, v12, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;

    if-eqz v13, :cond_6

    move-object v13, v12

    check-cast v13, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;

    invoke-interface {v13, v11}, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;->setSummaryColorPrimaryDark(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    goto :goto_1

    :cond_7
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "SecDynamicFragment"

    const-string/jumbo v4, "updateMenuFromProvider() Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public getDynamicCategoryKey()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected launchTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecDynamicMenuFeatureProvider(Landroid/content/Context;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    return-void
.end method

.method public onCategoriesChanged()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onCategoriesChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshDynamicMenus(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshDynamicMenus(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;

    invoke-interface {v2}, Lcom/samsung/android/settings/widget/SecDynamicMenuInterface;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setChecked(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->build()Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    invoke-interface {v4, v2, v3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->updatePreferenceData(Landroid/net/Uri;Lcom/samsung/android/settings/external/DynamicMenuData;)V

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->refreshDynamicMenus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method refreshDynamicMenus(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getDynamicCategoryKey()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v6, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, v11}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v12

    if-nez v12, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO dashboard tiles for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tile list is empty, skipping category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {v6, v15}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getPreferenceKey(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tile does not contain a key, skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v15}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v15, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v0, "com.android.settings.PREFERENCE_TYPE"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v1, "SecInsetCategoryPreference"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_5
    const-string v1, "PreferenceCategory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    goto :goto_2

    :cond_6
    const-string v1, "SwitchPreference"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/samsung/android/settings/widget/SecDynamicSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/widget/SecDynamicSwitchPreference;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_7
    const-string v1, "SwitchPreferenceScreen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/samsung/android/settings/widget/SecDynamicSwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/widget/SecDynamicSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_8
    new-instance v1, Lcom/samsung/android/settings/widget/SecDynamicPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/widget/SecDynamicPreference;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    goto :goto_2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v16, 0x7fffffff

    move-object v0, v6

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v3, v15

    move-object/from16 v19, v4

    move-object v4, v5

    move-object/from16 v20, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->bindPreferenceToTile(Landroid/app/Activity;Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_9
    goto/16 :goto_1

    :cond_a
    goto/16 :goto_0

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->updateMenuFromProvider()V

    return-void
.end method

.method protected refreshTileState(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

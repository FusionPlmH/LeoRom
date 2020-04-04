.class public abstract Lcom/android/settings/SettingsPreferenceFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private SETTINGS_FOR_KNOX:[Ljava/lang/String;

.field public mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field private mAnimationAllowed:Z

.field private mAutoRemoveAvailable:Z

.field private mButtonBar:Landroid/view/ViewGroup;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mEmptyView:Landroid/view/View;

.field private mFooter:Lcom/android/settings/applications/LayoutPreference;

.field protected final mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

.field private mHeader:Lcom/android/settings/applications/LayoutPreference;

.field private mIsDataSetObserverRegistered:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public mPreferenceHighlighted:Z

.field private mRelativeLinkViewCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoRemoveAvailable:Z

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeNeedlessInsetCategory()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private addPreferenceToBottom(Lcom/android/settings/applications/LayoutPreference;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    mul-int/lit8 v0, v0, 0x2

    const v1, 0x3ffffffe    # 1.9999998f

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setRelativeLinkViewCount(I)V

    :cond_0
    return-void
.end method

.method private addPreferenceToTop(Lcom/android/settings/applications/LayoutPreference;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/SelfAvailablePreference;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/SelfAvailablePreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getCurrentKeyList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v7, v5, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_1

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getParentPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, p1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v0, "SettingsPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildPreferenceForCOM getParentPreference ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private isWifiActivityFragment()Z
    .locals 2

    const-class v0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/wifi/details/WifiModifyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/wifi/details/WifiAddNetworkFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private removeNeedlessInsetCategory()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoRemoveAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v4, v3, Lcom/android/settings/applications/LayoutPreference;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v4}, Lcom/android/settings/applications/LayoutPreference;->isRelativeLinkView()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    const/4 v5, 0x2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    mul-int/2addr v5, v4

    :goto_0
    sub-int/2addr v2, v5

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_a

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    add-int/lit8 v7, v2, -0x1

    if-ne v5, v7, :cond_6

    :cond_5
    instance-of v7, v6, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v7, :cond_6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_8

    instance-of v7, v4, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v7, :cond_8

    instance-of v7, v6, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v7, :cond_7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    instance-of v7, v6, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v7, :cond_8

    instance-of v7, v4, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v7, :cond_8

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object v4, v6

    :cond_9
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_a
    if-eqz v4, :cond_b

    instance-of v5, v4, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v5, :cond_b

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_c
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    return-void
.end method

.method protected buildPreferenceForCOM()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isContainerOnlyModeFromOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-class v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isWifiActivityFragment()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "com.samsung.android.settings.knox.KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "SettingsPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildPreferenceForCOM curkey ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move v5, v1

    :goto_1
    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-string v6, "SettingsPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildPreferenceForCOM SETTINGS_FOR_KNOX[j] ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    nop

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getParentPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    instance-of v7, v5, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v7, :cond_5

    const-string v7, "SettingsPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildPreferenceForCOM do nothing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    const-string v7, "SettingsPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildPreferenceForCOM try remove"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    if-eqz v6, :cond_6

    instance-of v7, v6, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v7, :cond_6

    move-object v7, v6

    check-cast v7, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string v7, "SettingsPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildPreferenceForCOM try remove 1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v7, "SettingsPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildPreferenceForCOM try remove 2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v0

    move v2, v1

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_c

    instance-of v4, v3, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v4, :cond_c

    move-object v4, v3

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    move v5, v4

    move v4, v1

    :goto_7
    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_8

    :cond_9
    const-string v6, "SettingsPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildPreferenceForCOM try remove parent true ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v5, 0x0

    const-string v6, "SettingsPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildPreferenceForCOM try remove parent false = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_d
    :goto_a
    return-void

    :cond_e
    return-void
.end method

.method protected cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected checkForKnoxCustomProKioskEnabledItems()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "wifi_settings"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_2

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    :cond_2
    const-string v8, "bluetooth_settings"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_3

    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_3

    const/4 v7, 0x0

    :cond_3
    const-string v8, "location_settings"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/lit16 v8, v2, 0x400

    if-nez v8, :cond_4

    and-int/lit8 v8, v1, 0x4

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public getButtonBar()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    return p1
.end method

.method public getHeaderView()Lcom/android/settings/applications/LayoutPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeLinkViewCount()I
    .locals 1

    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    return v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    return-void
.end method

.method public highlightPreferenceIfNeeded(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestHighlight(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Z)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    invoke-static {p0}, Lcom/android/settings/support/actionbar/HelpMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    :cond_0
    invoke-static {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->adjustInitialExpandedChildCount(Lcom/android/settings/SettingsPreferenceFragment;)V

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/PersonaPolicyManager;->getComSettings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    return-object v1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/settings/RestrictedListPreference;

    if-eqz v1, :cond_1

    nop

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/android/settings/CustomListPreference;

    if-eqz v1, :cond_2

    nop

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/settingslib/CustomDialogPreference;

    if-eqz v1, :cond_3

    nop

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/android/settingslib/CustomEditTextPreference;

    if-eqz v1, :cond_4

    nop

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_preference"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    return-void

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->buildPreferenceForCOM()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment$2;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_0

    const-string v0, "android:preference_highlighted"

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    invoke-virtual {v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->isHighlightRequested()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeNeedlessInsetCategory()V

    :cond_1
    return-void
.end method

.method protected removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method protected removeHeaderView()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    :cond_0
    return-void
.end method

.method removePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_0
    instance-of v5, v3, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0, v5, p2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removePreference(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected setAnimationAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAnimationAllowed:Z

    return-void
.end method

.method public setAutoRemoveInsetCategory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAutoRemoveAvailable:Z

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public setFooterView(Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settings/applications/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->seslSetSubheaderRoundedBg(I)V

    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x3ffffffd    # 1.9999996f

    iget v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastItemOutlineStrokeEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settings/applications/LayoutPreference;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooter:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToBottom(Lcom/android/settings/applications/LayoutPreference;)V

    return-void
.end method

.method protected setHeaderView(I)V
    .locals 2

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settings/applications/LayoutPreference;)V

    return-void
.end method

.method protected setHeaderView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settings/applications/LayoutPreference;)V

    return-void
.end method

.method protected setHeaderView(Landroid/view/View;Z)V
    .locals 2

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settings/applications/LayoutPreference;)V

    return-void
.end method

.method public setLoading(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0484

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$202(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    return-object v1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAnimationAllowed:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setShouldUseGeneratedIds(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public setRelativeLinkViewCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRelativeLinkViewCount:I

    return-void
.end method

.method protected setResult(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method protected setResult(ILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "SettingsPreference"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    :cond_1
    return-void
.end method

.method updateEmptyView()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x102003f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v3}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->hasFooter()Z

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    nop

    :cond_3
    :goto_1
    move v2, v4

    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

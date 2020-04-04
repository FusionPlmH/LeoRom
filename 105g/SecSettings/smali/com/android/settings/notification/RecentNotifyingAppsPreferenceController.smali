.class public Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RecentNotifyingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_DIVIDER:Ljava/lang/String; = "all_notifications_divider"

.field static final KEY_SEE_ALL:Ljava/lang/String; = "all_notifications"

.field private static final SKIP_SYSTEM_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mDivider:Landroid/view/View;

.field private final mHost:Landroid/app/Fragment;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mSeeAllPref:Lcom/android/settings/applications/LayoutPreference;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    sget-object v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    const-string v1, "android"

    const-string v2, "com.android.phone"

    const-string v3, "com.android.settings"

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.providers.calendar"

    const-string v6, "com.android.providers.media"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/Application;Landroid/app/Fragment;)V
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/Fragment;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/Fragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mHost:Landroid/app/Fragment;

    iput-object p3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iput-object p2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private displayOnlyAllAppsLink()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1215f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "all_notifications"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private displayRecentApps(Landroid/content/Context;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    const v2, 0x7f1211e8

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Lcom/android/settings/applications/LayoutPreference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/LayoutPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "all_notifications"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v5

    check-cast v7, Lcom/android/settings/notification/NotificationAppPreference;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    nop

    :goto_1
    if-ge v2, v4, :cond_5

    move-object/from16 v5, p2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/NotifyingApp;

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v9

    iget v10, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v8

    if-nez v8, :cond_2

    nop

    move-object/from16 v12, p1

    goto/16 :goto_3

    :cond_2
    const/4 v9, 0x1

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/notification/NotificationAppPreference;

    if-nez v10, :cond_3

    new-instance v11, Lcom/android/settings/notification/NotificationAppPreference;

    move-object/from16 v12, p1

    invoke-direct {v11, v12}, Lcom/android/settings/notification/NotificationAppPreference;-><init>(Landroid/content/Context;)V

    move-object v10, v11

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v12, p1

    :goto_2
    invoke-virtual {v10, v7}, Lcom/android/settings/notification/NotificationAppPreference;->setKey(Ljava/lang/String;)V

    iget-object v11, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/settings/notification/NotificationAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v11, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v13, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v13}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/notification/NotificationAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v6}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v15

    sub-long/2addr v13, v15

    long-to-double v13, v13

    const/4 v15, 0x1

    invoke-static {v11, v13, v14, v15}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/notification/NotificationAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v2}, Lcom/android/settings/notification/NotificationAppPreference;->setOrder(I)V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v13, "package"

    invoke-virtual {v11, v13, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "uid"

    iget-object v14, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v13, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v14, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v14}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v14, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v13

    const v14, 0x7f120174

    invoke-virtual {v13, v14}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v13

    const/16 v14, 0x85

    invoke-virtual {v13, v14}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/settings/notification/NotificationAppPreference;->setIntent(Landroid/content/Intent;)V

    new-instance v13, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;

    invoke-direct {v13, v0, v7, v8}, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;-><init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v10, v13}, Lcom/android/settings/notification/NotificationAppPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v13, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v14, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v7, v14}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v13

    xor-int/2addr v13, v15

    invoke-virtual {v10, v13}, Lcom/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    iget-object v13, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v13, v7}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    xor-int/lit8 v14, v13, 0x1

    invoke-virtual {v10, v14}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchGone(Z)V

    if-nez v9, :cond_4

    iget-object v14, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v14, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v12, p1

    move-object/from16 v5, p2

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/Preference;

    iget-object v7, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_6
    return-void
.end method

.method private getDisplayableRecentAppList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotifyingApp;

    iget-object v5, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->shouldIncludePkgInRecents(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static synthetic lambda$displayRecentApps$0(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    move-object v2, p4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xfd2

    const/16 v4, 0xfda

    if-eqz v2, :cond_1

    const-wide/16 v5, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    invoke-static {v3, v4, p1, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    return v1
.end method

.method private shouldIncludePkgInRecents(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "RecentNotisCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package, skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isSecNotiBlockableHidePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecentNotisCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlockableHide package, skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserId:I

    invoke-virtual {v2, p1, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "RecentNotisCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a user visible or instant app, skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "all_notifications"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0270

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "recent_notifications_category"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method refreshUi(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->reloadData()V

    invoke-direct {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getDisplayableRecentAppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->displayRecentApps(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->displayOnlyAllAppsLink()V

    :goto_0
    return-void
.end method

.method reloadData()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationBackend;->getRecentApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    const-string v0, "recent_notifications_category"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "all_notifications_divider"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1215f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

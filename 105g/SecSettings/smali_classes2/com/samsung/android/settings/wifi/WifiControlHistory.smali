.class public Lcom/samsung/android/settings/wifi/WifiControlHistory;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "WifiControlHistory.java"


# static fields
.field private static final DBG:Z

.field private static selectionArgs:Ljava/lang/String;


# instance fields
.field private mDateFormat:Ljava/text/DateFormat;

.field private mHeader:Landroid/support/v7/preference/Preference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSAScreenId:Ljava/lang/String;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    const-string v0, "package_name!= \'system\' AND package_name!= \'android\' AND package_name!= \'com.android.systemui\' AND package_name!= \'com.android.settings\' AND package_name!= \'com.sec.android.easysettings\' AND package_name!= \'com.sec.android.app.SecSetupWizard\' AND package_name!= \'com.google.android.setupwizard\' AND package_name!= \'com.samsung.android.easysetup\' AND package_name!= \'com.sec.android.emergencymode.service\' AND package_name!= \'com.android.server.wifi.p2p\'"

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->selectionArgs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiControlHistory$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory$1;-><init>(Lcom/samsung/android/settings/wifi/WifiControlHistory;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method private addPreferences(Ljava/lang/String;IJ)Landroid/support/v7/preference/Preference;
    .locals 10

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreferences, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "samsung.wifi.autowifi"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f121ddc

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "com.android.settings"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "WifiControlHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPreferences, NameNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v2, v6

    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v6

    :cond_2
    goto :goto_0

    :catch_1
    move-exception v3

    const-string v5, "WifiControlHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPreferences, NameNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    const-string v3, ""

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, p3, p4}, Ljava/util/Date;->setTime(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u200e "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f121e07

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    invoke-virtual {v8, v9, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f121e06

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    invoke-virtual {v8, v9, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_1
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f13017d

    invoke-direct {v4, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v7, Landroid/support/v7/preference/Preference;

    invoke-direct {v7, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d023f

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v7, p1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private insertLogging(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method private insertLogging(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "samsung.wifi.autowifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "WifiControlHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageInstalled, NameNotFoundException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isPreferenceHeader()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "header"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1
.end method

.method private removeAllList()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setActionBarTitle()V
    .locals 7

    const v0, 0x7f121e0a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void
.end method

.method private setEmptyMessage()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x7f121e08

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiHistoryNoItemsPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    :cond_0
    nop

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiControlHistory"

    const-string v2, "setEmptyMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "WifiControlHistory"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setActionBarTitle()V

    const v0, 0x7f15010c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1212ef

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mSAScreenId:Ljava/lang/String;

    const-string v1, "header"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v4, "wifi_tips_notification"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mSAScreenId:Ljava/lang/String;

    const v4, 0x7f120901

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->insertLogging(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiControlHistory"

    const-string v1, "onOptionsItemSelected, home"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mSAScreenId:Ljava/lang/String;

    const v1, 0x7f120903

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->insertLogging(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiControlHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick, packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mSAScreenId:Ljava/lang/String;

    const v2, 0x7f120902

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->insertLogging(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "samsung.wifi.autowifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f121e96

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "package"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    const-class v4, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f120187

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v6, v1

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return v2
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setActionBarTitle()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->updateHistory()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mSAScreenId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->insertLogging(Ljava/lang/String;)V

    return-void
.end method

.method public updateHistory()V
    .locals 14

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->removeAllList()V

    const-string v0, "content://com.samsung.server.wifi/control"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    move-object v7, v1

    const/16 v8, 0xf

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/settings/wifi/WifiControlHistory;->selectionArgs:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "time_stamp DESC"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-nez v7, :cond_3

    const-string v1, "WifiControlHistory"

    const-string v2, "updateHistory, cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setEmptyMessage()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiControlHistory"

    const-string v2, "updateHistory, close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    const-string v1, "WifiControlHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHistory, cursor count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", columns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "package_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "last_control"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "time_stamp"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {p0, v4, v5, v9, v10}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->addPreferences(Ljava/lang/String;IJ)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v11, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_4
    sget-boolean v11, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v11, :cond_5

    const-string v11, "WifiControlHistory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateHistory, pref is null."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    if-eqz v7, :cond_8

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "WifiControlHistory"

    const-string v2, "updateHistory, close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_b

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "WifiControlHistory"

    const-string v3, "updateHistory, IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_a

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "WifiControlHistory"

    const-string v2, "updateHistory, close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    :goto_3
    const-string v1, "jia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferenceCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->isPreferenceHeader()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setEmptyMessage()V

    :cond_c
    return-void

    :goto_4
    if-eqz v7, :cond_e

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiControlHistory"

    const-string v3, "updateHistory, close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mHeader:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    :cond_f
    throw v1
.end method

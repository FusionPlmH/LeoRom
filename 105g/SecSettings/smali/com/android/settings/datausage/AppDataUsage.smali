.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static bSupportRoamingReduction:Z

.field private static mSelectDisplayUnit:I

.field private static sAllowBackgroundDataUsage:I

.field private static sAllowUnrestrictedDataUsage:I

.field private static sCycle:I


# instance fields
.field private final RESTRICTION_ALWAYS:I

.field private final RESTRICTION_DURING_ROAMING:I

.field private final RESTRICTION_NEVER:I

.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private mAppSettings:Landroid/support/v7/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCyclePosition:I

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnd:J

.field private mForegroundUsage:Landroid/support/v7/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field private mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field protected mReturnToAppInfo:Z

.field private mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/support/v7/preference/Preference;

.field private mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field private mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    sget v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    sget v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_NEVER:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_ALWAYS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_DURING_ROAMING:I

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$4;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/datausage/AppDataUsage;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/datausage/AppDataUsage;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/datausage/AppDataUsage;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/datausage/AppDataUsage;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/datausage/AppDataUsage;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    return p1
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lcom/android/settings/datausage/AppDataUsage;->sCycle:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0

    sput p0, Lcom/android/settings/datausage/AppDataUsage;->sCycle:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method private addUid(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    const-string v2, "com.carrieriq.iqagent"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private bindData()V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v2, v2, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    iget-wide v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    move-wide v7, v0

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v11, v2, v4

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v2, v2, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    iget-wide v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v2

    iget-wide v3, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v3, v1

    move-wide v11, v1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    const-string v0, "cycle"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v0, "inset_category_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    :goto_1
    move-wide v0, v3

    add-long v2, v11, v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v4, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v4, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v4, v11, v12}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportDynamicUnits()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v6, v7, v2, v3}, Lcom/samsung/android/settings/ConnectionsUtils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v6, v7, v0, v1}, Lcom/samsung/android/settings/ConnectionsUtils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v6, v7, v11, v12}, Lcom/samsung/android/settings/ConnectionsUtils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private getUnrestrictData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updatePrefs(ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecDropDownPreference;->setEnabled(Z)V

    :cond_3
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setChecked(Z)V

    :cond_5
    return-void

    :cond_6
    nop

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_7
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_9

    if-eqz p1, :cond_8

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_1
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, p2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setChecked(Z)V

    :cond_9
    sget-boolean v3, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v3, :cond_d

    move v3, p1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v6, v6, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v5, v6}, Lcom/android/settings/datausage/DataSaverBackend;->getRoamingReduction(I)I

    move-result v4

    :cond_a
    const/4 v5, 0x0

    if-eqz v3, :cond_b

    const/4 v5, 0x1

    goto :goto_2

    :cond_b
    if-nez v4, :cond_c

    const/4 v5, 0x2

    goto :goto_2

    :cond_c
    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/SecDropDownPreference;->setValueIndex(I)V

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4, v3}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_f
    :goto_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1205eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportDynamicUnits()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "data_usage_display_unit"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    nop

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v0, "app_item"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz v2, :cond_2

    const-string v0, "network_template"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const-string v0, "returnToAppInfo"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "returnToAppInfo"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    iput-boolean v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mReturnToAppInfo:Z

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v6

    invoke-static {v0, v6}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_4
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-nez v0, :cond_7

    const/4 v0, -0x1

    if-eqz v2, :cond_5

    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "uid"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    :goto_3
    if-ne v6, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_6
    invoke-direct {v1, v6}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    new-instance v0, Lcom/android/settingslib/AppItem;

    invoke-direct {v0, v6}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-virtual {v0, v6}, Lcom/android/settingslib/AppItem;->addUid(I)V

    :goto_4
    goto :goto_6

    :cond_7
    move v0, v5

    :goto_5
    iget-object v6, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v6, v6, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    iget-object v6, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v6, v6, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-direct {v1, v6}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    const v0, 0x7f150013

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "total_usage"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    const-string v0, "foreground_usage"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    const-string v0, "background_usage"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    const-string v0, "cycle"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_9

    iput v5, v1, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    :cond_9
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v9, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;ZZ)V

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    const/4 v6, 0x1

    if-lez v0, :cond_16

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v7, v0

    if-eqz v2, :cond_a

    :try_start_1
    const-string v0, "package"

    iget-object v8, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "package"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v0, v8

    :cond_b
    iget-object v8, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v8, v8, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v0, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iput-object v9, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :goto_8
    nop

    :goto_9
    goto :goto_a

    :cond_c
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-boolean v0, v0, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v0, :cond_d

    :try_start_2
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v7, v7, Lcom/android/settingslib/AppItem;->restrictedPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v7}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    :cond_d
    :goto_a
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "data_restrict"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "unrestricted_data_saver"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v0, "restrict_background"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "spr_roaming_reduction"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v0, "divider_2"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_b

    :cond_e
    const-string v0, "restrict_background"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "unrestricted_data_saver"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v7, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual {v0, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    sget-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    if-eqz v0, :cond_10

    const-string v0, "restrict_background"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "spr_roaming_reduction"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecDropDownPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/CharSequence;

    const v9, 0x7f12020a

    invoke-virtual {v1, v9}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const v9, 0x7f120209

    invoke-virtual {v1, v9}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const v9, 0x7f12020b

    invoke-virtual {v1, v9}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    new-array v7, v7, [Ljava/lang/CharSequence;

    const-string v8, "0"

    aput-object v8, v7, v5

    const-string v8, "1"

    aput-object v8, v7, v6

    const-string v8, "2"

    aput-object v8, v7, v3

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_b

    :cond_10
    const-string/jumbo v0, "spr_roaming_reduction"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v0, "divider_2"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    :goto_b
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string v0, "app_settings"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    iget-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v3, v9, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_11

    const/4 v0, 0x1

    goto :goto_d

    :cond_11
    goto :goto_c

    :cond_12
    :goto_d
    move v7, v0

    if-nez v7, :cond_13

    const-string v0, "app_settings"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v0, "divider_1"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    iput-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    :cond_13
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-le v0, v6, :cond_15

    const-string v0, "app_list"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v8

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v10, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    sget v11, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v12, 0x1e

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move v0, v6

    :goto_e
    move v10, v0

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v10, v0, :cond_14

    :try_start_3
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;

    invoke-direct {v0, v1, v4}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settings/datausage/AppDataUsage$1;)V

    new-array v11, v6, [Ljava/lang/String;

    iget-object v12, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v12, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v11, v5

    invoke-virtual {v0, v9, v11}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    const-string v11, "AppDataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RejectedExecutionException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    add-int/lit8 v0, v10, 0x1

    goto :goto_e

    :cond_14
    goto :goto_10

    :cond_15
    const-string v0, "app_list"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    :goto_10
    goto :goto_11

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v3, v0}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iget-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v7, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v3, v7, v6}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v3

    iget-object v7, v3, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v3, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    const-string v7, "data_restrict"

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v7, "unrestricted_data_saver"

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v7, "app_settings"

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v7, "restrict_background"

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v7, "app_list"

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v7, "spr_roaming_reduction"

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v7, "divider_1"

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    const-string v7, "divider_2"

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    :goto_11
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportPco()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "restrict_background"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const-string/jumbo v0, "unrestricted_data_saver"

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "background_data_by_pco"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_17

    move v5, v6

    nop

    :cond_17
    move v0, v5

    if-eqz v0, :cond_1a

    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    :cond_18
    iget-object v3, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v4, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    :cond_19
    const-string v3, "data_restrict"

    invoke-virtual {v1, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    :cond_1a
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "enterprise_policy"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_1b
    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_1c
    return-void

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;IIII)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportPco()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 v1, 0x7

    const v2, 0x7f0b0128

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v8, v8, Lcom/android/settingslib/AppItem;->key:I

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v10, p2

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    xor-int/2addr v10, v7

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f0b033a

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->sAllowBackgroundDataUsage:I

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v3, v5

    nop

    :cond_1
    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result v0

    sget v1, Lcom/android/settings/datausage/AppDataUsage;->sAllowBackgroundDataUsage:I

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move-wide v3, v5

    nop

    :cond_3
    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return v7

    :cond_4
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v8, v8, Lcom/android/settingslib/AppItem;->key:I

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v10, p2

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f0b033b

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->sAllowUnrestrictedDataUsage:I

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    move-wide v3, v5

    nop

    :cond_6
    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getMetricsCategory()I

    move-result v0

    sget v1, Lcom/android/settings/datausage/AppDataUsage;->sAllowUnrestrictedDataUsage:I

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    move-wide v3, v5

    nop

    :cond_8
    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_1
    return v7

    :cond_9
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Landroid/support/v7/preference/SecDropDownPreference;

    if-ne p1, v0, :cond_a

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/datausage/DataSaverBackend;->changeRoamingPolicyIfNeeded(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return v7

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportPco()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_data_by_pco"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-static {v2, v3}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v5, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "AppDataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping UID because cannot find package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    const/4 v5, 0x1

    if-lez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    nop

    invoke-static {v6, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-boolean v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mReturnToAppInfo:Z

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/EntityHeaderController;->setReturnToAppInfo(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v7}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v7, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v7, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method updatePrefs()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    return-void
.end method

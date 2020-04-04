.class public Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "SecZenModeDNDSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;,
        Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ALL_DAYS:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private final mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDisableListeners:Z

.field private final mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/String;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mScheduling:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->ALL_DAYS:[I

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$1;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/app/AutomaticZenRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->updateRule(Landroid/net/Uri;)V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroid/app/FragmentManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/notification/SecZenModeEnableNowPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/notification/SecZenModeEnableNowPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/ZenModeAutomationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeAutomationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private createPreference()V
    .locals 2

    const-string v0, "scheduling_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mScheduling:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mScheduling:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v1, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method private refreshRuleOrFinish()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRules:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRules:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "twschedule"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AutomaticZenRule;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SecZenModeDNDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->toastAndFinish()V

    const/4 v1, 0x1

    return v1

    :cond_3
    return v2
.end method

.method private setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private toastAndFinish()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f12205f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mDisableListeners:Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mScheduling:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->updateScheduleSummary()V

    return-void
.end method

.method private updateRule(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xff0

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150115

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->refreshRuleOrFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->createPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->unregister()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable_now"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xff1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduling_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xff2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "allow_exceptions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xff4

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zen_mode_block_effects_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xff5

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zen_mode_automation_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xff6

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->updateScheduleSummary()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SettingsObserver;->register()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DND_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->updateControls()V

    :cond_0
    return-void
.end method

.method public updateScheduleSummary()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_8

    array-length v2, v1

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_3

    aget v7, v4, v6

    move v8, v5

    :goto_1
    array-length v9, v1

    if-ge v8, v9, :cond_2

    aget v9, v1, v8

    if-ne v7, v9, :cond_1

    const/4 v9, 0x7

    invoke-virtual {v3, v9, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v10, 0x7f1219bc

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v6, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/16 v7, 0x3c

    mul-int/2addr v6, v7

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v8, v8, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v8, v8, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v8, v8, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v7, v8

    const/4 v8, 0x1

    if-lt v6, v7, :cond_4

    move v9, v8

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_3
    if-eqz v9, :cond_5

    const v10, 0x7f122030

    goto :goto_4

    :cond_5
    move v10, v5

    :goto_4
    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v11, v11, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/16 v12, 0xb

    invoke-virtual {v3, v12, v11}, Ljava/util/Calendar;->set(II)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v11, v11, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    const/16 v13, 0xc

    invoke-virtual {v3, v13, v11}, Ljava/util/Calendar;->set(II)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    iget-object v14, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v14, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v3, v12, v14}, Ljava/util/Calendar;->set(II)V

    iget-object v12, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v12, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v3, v13, v12}, Ljava/util/Calendar;->set(II)V

    iget-object v12, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_6

    iget-object v13, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v5

    invoke-virtual {v13, v10, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v6, v7, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f12141e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mScheduling:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mScheduling:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v1, 0x7f1215d5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mScheduling:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

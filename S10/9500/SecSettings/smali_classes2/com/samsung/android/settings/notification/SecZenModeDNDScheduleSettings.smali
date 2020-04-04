.class public Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "SecZenModeDNDScheduleSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final ALL_DAYS:[I

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDisableListeners:Z

.field private final mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/String;

.field private mPrefReapeatButton:Lcom/android/settings/applications/LayoutPreference;

.field private mRepeatButtonGroup:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mSecSchedule:Landroid/support/v7/preference/SecPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->DEBUG:Z

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->ALL_DAYS:[I

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

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

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/app/AutomaticZenRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateRule(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;Z)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method private createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f150111

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;

    if-nez v1, :cond_1

    const-string v1, "schedule_reapeat"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mPrefReapeatButton:Lcom/android/settings/applications/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mPrefReapeatButton:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a06d4

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->setRepeatListener(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;)V

    :cond_1
    const-string v1, "schedule_time"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->initRepeatButton([I)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateControls()V

    return-object v0
.end method

.method private refreshRuleOrFinish()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRules:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRules:Ljava/util/Set;

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

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->toastAndFinish()V

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
    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

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

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f122011

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateControlsInternal()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateSecScheduleSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateEnable()V

    return-void
.end method

.method private updateRule(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xffa

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "mStartTime"

    const/16 v1, 0x1a4

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "mEndTime"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    div-int/lit8 v3, v0, 0x3c

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    rem-int/lit8 v3, v0, 0x3c

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    div-int/lit8 v3, v1, 0x3c

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    rem-int/lit8 v3, v1, 0x3c

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateRule(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateSecScheduleSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeSettingsBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->maybeRefreshRules(ZZ)V

    sget-boolean v1, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded mRules="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRules:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->refreshRuleOrFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroyView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->maybeRefreshRules(ZZ)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DND_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateSecScheduleSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    move v0, p2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    const/16 v3, 0xb0

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    sget-boolean v2, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange Scheduling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSecSchedule:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    const-string v2, "ZenModeSettings"

    const-string v3, "mSchedule.days == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    sget-object v3, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->ALL_DAYS:[I

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateRule(Landroid/net/Uri;)V

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;

    :goto_0
    const/16 v2, 0xffa

    const/16 v3, 0xffb

    if-eqz v0, :cond_4

    const-wide/16 v4, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->updateControls()V

    :cond_0
    return-void
.end method

.method protected updateControlsInternal()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public updateEnable()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->setEnabledButton(Z)V

    return-void
.end method

.method public updateSecScheduleSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v2, :cond_0

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    const/16 v7, 0xa

    const/16 v8, 0xb

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ~ "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v7, v8

    nop

    :cond_2
    invoke-virtual {v5, v7, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    mul-int/lit8 v7, v0, 0x3c

    add-int/2addr v7, v1

    mul-int/lit8 v8, v2, 0x3c

    add-int/2addr v8, v3

    if-lt v7, v8, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121fe2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.class public Lcom/samsung/android/settings/display/StatusBar;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StatusBar.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATBAR_ICON_BRANDING:Ljava/lang/String;

.field public static final STATBAR_NETWORK_INFO_IS_SHOWING:Z

.field public static final STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

.field private static final isSupportNetworkSpeedFeature:Z


# instance fields
.field private mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mKeyChangeObserver:Landroid/database/ContentObserver;

.field private mNetworkSpeed:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mShowBatteryPercent:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

.field private mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportRealTimeNetworkSpeed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->isSupportNetworkSpeedFeature:Z

    new-instance v0, Lcom/samsung/android/settings/display/StatusBar$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/StatusBar$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/StatusBar;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigPolicyDisplayOpLogo"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    const-string v0, "ORANGE"

    sget-object v1, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HOME"

    sget-object v1, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BOTH"

    sget-object v1, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    nop

    :cond_1
    sput-boolean v2, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;-><init>(Lcom/samsung/android/settings/display/StatusBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    new-instance v0, Lcom/samsung/android/settings/display/StatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/StatusBar$1;-><init>(Lcom/samsung/android/settings/display/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mKeyChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private CheckNotificationIconMenu()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "simple_status_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/StatusBar;->removeRadioButtonPreference()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/StatusBar;->CheckNotificationIconMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/StatusBar;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowBatteryPercent:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->isSupportNetworkSpeedFeature:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/StatusBar;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/StatusBar;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private addRadioButtonPreference()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private removeRadioButtonPreference()V
    .locals 1

    const-string v0, "recent_notifications"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/StatusBar;->removePreference(Ljava/lang/String;)Z

    const-string v0, "all_notification"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/StatusBar;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method private setSimpleStatusBarSetting(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "simple_status_bar"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/16 v1, 0x1042

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "simple_status_bar"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getMetricsCategory()I

    move-result v0

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "simple_status_bar"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getMetricsCategory()I

    move-result v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1040

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v2, 0x7f1500fc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "show_notification_icons"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string/jumbo v2, "show_battery_percent"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowBatteryPercent:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string v2, "recent_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v2, "all_notification"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "simple_status_bar"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowBatteryPercent:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "display_battery_percentage"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowBatteryPercent:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->init(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;Landroid/support/v7/preference/PreferenceScreen;)V

    sget-boolean v2, Lcom/samsung/android/settings/display/StatusBar;->isSupportNetworkSpeedFeature:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "network_speed"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string v2, "network_speed"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->removePreference(Ljava/lang/String;)Z

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f10003f

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v3, v5, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->unRegisterObserver()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowBatteryPercent:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_battery_percentage"

    nop

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getMetricsCategory()I

    move-result v7

    const/16 v8, 0x1043

    if-eqz v1, :cond_0

    move-wide v2, v4

    nop

    :cond_0
    invoke-static {v7, v8, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSimpleStatsuBarDefaultValue()I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v6, :cond_2

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/display/StatusBar;->setSimpleStatusBarSetting(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v9, v6}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/display/StatusBar;->setSimpleStatusBarSetting(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/StatusBar;->addRadioButtonPreference()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/display/StatusBar;->removeRadioButtonPreference()V

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/display/StatusBar;->setSimpleStatusBarSetting(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getMetricsCategory()I

    move-result v7

    const/16 v8, 0x1041

    if-eqz v1, :cond_5

    move-wide v2, v4

    nop

    :cond_5
    invoke-static {v7, v8, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->getPreferenceRow()Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->putSettingValue(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->insertEventLogging(I)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_speed"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    :goto_2
    return v6
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/StatusBar;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/StatusBar;->CheckNotificationIconMenu()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNotificationIcons:Landroid/support/v7/preference/SwitchPreferenceCompat;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mAllNotifications:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->isSupportNetworkSpeedFeature:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network_speed"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowBatteryPercent:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_percentage"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->updateSwitchBox()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->registerObserver()V

    return-void
.end method

.method public registerObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "simple_status_bar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mKeyChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_battery_percentage"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mShowNetworkInfoHelper:Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unRegisterObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar;->mKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

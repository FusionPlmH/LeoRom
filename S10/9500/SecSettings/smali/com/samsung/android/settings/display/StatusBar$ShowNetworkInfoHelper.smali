.class final Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;
.super Ljava/lang/Object;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShowNetworkInfoHelper"
.end annotation


# instance fields
.field private mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field final synthetic this$0:Lcom/samsung/android/settings/display/StatusBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/StatusBar;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string p1, "StatusBar_Settings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowNetworkInfoHelper() showing ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isOn()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/StatusBar;->access$600(Lcom/samsung/android/settings/display/StatusBar;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_information"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getPreferenceRow()Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "status_bar_show_network_information"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    const-string/jumbo v0, "show_network_info"

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v0, "StatusBar_Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() ShowNetworkInfoHelper.mSettingSwitchRow is null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->updateSwitchBox()V

    return-void
.end method

.method public insertEventLogging(I)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/StatusBar;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1791

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_0
    return-void
.end method

.method public putSettingValue(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/StatusBar;->access$500(Lcom/samsung/android/settings/display/StatusBar;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_information"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public updateSwitchBox()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->mSettingSwitchRow:Landroid/support/v7/preference/SwitchPreferenceCompat;

    sget-boolean v1, Lcom/samsung/android/settings/display/StatusBar;->STATBAR_NETWORK_INFO_IS_SHOWING:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setVisible(Z)V

    :cond_1
    return-void
.end method

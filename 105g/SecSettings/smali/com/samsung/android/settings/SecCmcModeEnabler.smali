.class public Lcom/samsung/android/settings/SecCmcModeEnabler;
.super Ljava/lang/Object;
.source "SecCmcModeEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static callAppArray:Ljava/util/ArrayList;


# instance fields
.field private final CMC_ACTION:Ljava/lang/String;

.field private final DELAY_TIME_OUT:I

.field private final EVENT_TIMEOUT:I

.field private handler:Landroid/os/Handler;

.field private mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

.field private mCmcModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SecCmcModeEnabler"

    sput-object v0, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/SecCmcModeEnabler$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/SecCmcModeEnabler$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/SecCmcModeEnabler;->callAppArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "settings.CMC_SETTINGS"

    iput-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->CMC_ACTION:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->EVENT_TIMEOUT:I

    const v0, 0x80e8

    iput v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->DELAY_TIME_OUT:I

    new-instance v0, Lcom/samsung/android/settings/SecCmcModeEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecCmcModeEnabler$2;-><init>(Lcom/samsung/android/settings/SecCmcModeEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/SecCmcModeEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/SecCmcModeEnabler$3;-><init>(Lcom/samsung/android/settings/SecCmcModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/SecCmcModeEnabler$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/SecCmcModeEnabler$4;-><init>(Lcom/samsung/android/settings/SecCmcModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mCmcModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setPersistent(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/SecCmcModeEnabler;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/SecCmcModeEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->updateSummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/SecCmcModeEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->onCmcModeChanged()V

    return-void
.end method

.method private isSamsungMessageCallAppSet(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    const-string/jumbo v2, "telecom"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/settings/SecCmcModeEnabler;->callAppArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    return v5

    :cond_4
    const/4 v5, 0x0

    return v5
.end method

.method private onCmcModeChanged()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCmcModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isCmcModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->updateSummary()V

    return-void
.end method

.method private showNoSimToast()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    const-string v1, "No SIM card, show toast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f1204e4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateSummary()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f121a13

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cmc_device_type"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cmc_slot_select"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v4, "pd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cmc_network_type"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f1204e3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f1204e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f1204e4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v2, 0x7f1204e6

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onPreferenceChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmc_device_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cmc_slot_select"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_2

    const-string v3, "pd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isCmcOOBEDone(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isCmcOOBEDone(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/ConnectionsUtils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->showNoSimToast()V

    return v4

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isCmcOOBEDone(Landroid/content/Context;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/SecCmcModeEnabler;->isSamsungMessageCallAppSet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.mdecservice"

    const-string v8, "com.samsung.android.cmcsettings.services.CMCMainActivityUIService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_4

    const-string v6, "EXTRA_REASON_ACTIVATE_CMC"

    const-string v7, "SETTINGSACTIVATE"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string v6, "EXTRA_REASON_ACTIVATE_CMC"

    const-string v7, "SETTINGSDEACTIVATE"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    sget-object v4, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    const-string v7, " oobe done...change db value"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_5

    const-string v7, "com.samsung.android.mdecservice.CMC_ACTIVATED"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const-string v7, "com.samsung.android.mdecservice.CMC_DEACTIVATED"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v7, "EXTRA_REASON"

    const-string v8, "SETTINGS"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "cmc_activation_intermediate"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->onCmcModeChanged()V

    return v4

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    const-string v4, " !oobe done start activity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "settings.CMC_SETTINGS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "EXTRA_REASON_CMCOPEN"

    const-string v6, "SETTINGS"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    nop

    :goto_3
    return v5
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    const-string v1, " pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mCmcModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 7

    sget-object v0, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    const-string v1, " resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_activation_intermediate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " resume isInIntermediate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    if-eqz v0, :cond_2

    sget-object v3, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    const-string v4, " isInIntermediate setChecked !ConnectionsUtils.isCmcModeOn(mContext)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isCmcModeOn(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->handler:Landroid/os/Handler;

    const-wide/32 v5, 0x80e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/samsung/android/settings/SecCmcModeEnabler;->TAG:Ljava/lang/String;

    const-string v4, " !isInIntermediate setChecked ConnectionsUtils.isCmcModeOn(mContext)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/ConnectionsUtils;->isCmcModeOn(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cmc_activation_intermediate"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cmc_activation"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/SecCmcModeEnabler;->mCmcModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/SecCmcModeEnabler;->updateSummary()V

    return-void
.end method

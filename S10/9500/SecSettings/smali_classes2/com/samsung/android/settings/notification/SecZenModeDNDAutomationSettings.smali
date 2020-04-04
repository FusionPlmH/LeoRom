.class public Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "SecZenModeDNDAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;,
        Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;
    }
.end annotation


# static fields
.field static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

.field private misDeleteMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->removeZenRule(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mEmptyView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const v3, 0x7f122013

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    const v3, 0x7f1219b3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    nop

    if-eqz p2, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    const v4, 0x7f122014

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v1

    aput-object v3, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method private static computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const v0, 0x7f121ff6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f121ff8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f121ff7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    const-string v1, "ZenModeSettings"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "enabled_notification_policy_access_packages"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.service.notification.ConditionProviderService"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "condition provider"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    return-object v0
.end method

.method private showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1216a9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12046e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$1;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Ljava/lang/String;)V

    const v2, 0x7f121fd9

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private sortedRules()[Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mRules:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mRules:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    sget-object v1, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private updateControls()V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->sortedRules()[Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->misDeleteMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AutomaticZenRule;

    const-string v7, "twschedule"

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    new-instance v7, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;

    invoke-direct {v9, p0, v7}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/support/v7/preference/Preference;)V

    const/4 v10, 0x1

    new-array v11, v10, [Landroid/content/pm/ApplicationInfo;

    aput-object v8, v11, v3

    invoke-virtual {v9, v11}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    move v10, v3

    nop

    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {p0, v6, v10, v11}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$2;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$2;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)V

    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :catch_0
    move-exception v8

    const v9, 0x7f080125

    invoke-virtual {v7, v9}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setIcon(I)V

    nop

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :cond_4
    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    new-instance v6, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7, v5}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V

    iget-boolean v7, v6, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    if-eqz v7, :cond_5

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0800c5

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    const v4, 0x7f121fab

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$4;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1036

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150152

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f121526

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v2, 0x2

    const v3, 0x7f12068c

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->misDeleteMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v5, 0xaf

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->updateControls()V

    return v2

    :pswitch_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->misDeleteMode:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->updateControls()V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->misDeleteMode:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->updateControls()V

    return-void
.end method

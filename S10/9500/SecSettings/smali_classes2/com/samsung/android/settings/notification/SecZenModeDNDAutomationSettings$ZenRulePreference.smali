.class Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;
.super Landroid/support/v7/preference/Preference;
.source "SecZenModeDNDAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenRulePreference"
.end annotation


# instance fields
.field final appExists:Z

.field private final mDeleteListener:Landroid/view/View$OnClickListener;

.field final mId:Ljava/lang/String;

.field final mName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference$1;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->mId:Ljava/lang/String;

    nop

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$400(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;

    invoke-direct {v7, p1, p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;-><init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/support/v7/preference/Preference;)V

    new-array v8, v3, [Landroid/content/pm/ApplicationInfo;

    aput-object v6, v8, v4

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$400(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {p1, v0, v5, v8}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$500(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string p1, "twschedule"

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    :goto_2
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->setPersistent(Z)V

    const p1, 0x7f0d03e0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->setWidgetLayoutResource(I)V

    return-void

    :catch_0
    move-exception p1

    const v3, 0x7f080125

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->setIcon(I)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0223

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

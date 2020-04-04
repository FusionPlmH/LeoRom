.class Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;
.super Ljava/lang/Object;
.source "SecZenModeDNDSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->createPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$600(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$100(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$700(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xb0

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    sget-boolean v2, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SecZenModeDNDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange Scheduling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$100(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$800(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$800(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->ALL_DAYS:[I

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$800(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->access$900(Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0xff3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v1
.end method

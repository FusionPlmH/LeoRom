.class Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;
.super Ljava/lang/Object;
.source "SecZenModeDNDScheduleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->createPreferenceHierarchy(Z)Landroid/support/v7/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRepeatClick(I)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$100(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$400(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$500(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;Z)Landroid/support/v7/preference/PreferenceScreen;

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    nop

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    aget v2, v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1
    if-ge v4, v2, :cond_4

    sget-object v6, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    aget v6, v6, v5

    and-int/2addr v6, p1

    if-eqz v6, :cond_3

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v5, 0x1

    aput v7, v0, v3

    move v3, v6

    :cond_3
    add-int/lit8 v6, v5, 0x1

    rem-int/lit8 v5, v6, 0x7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    iput-object v0, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v5

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$400(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;Landroid/net/Uri;)V

    :goto_2
    const/16 v0, 0xffa

    const/16 v1, 0xffc

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

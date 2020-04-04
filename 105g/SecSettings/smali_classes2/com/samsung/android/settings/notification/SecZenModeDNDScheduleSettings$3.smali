.class Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;
.super Ljava/lang/Object;
.source "SecZenModeDNDScheduleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mStartTime"

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "mEndTime"

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    const/16 v2, 0xd1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f010039

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/16 v1, 0xffa

    const/16 v3, 0xffd

    invoke-static {v1, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v2
.end method

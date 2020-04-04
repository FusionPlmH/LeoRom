.class Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$1;
.super Ljava/lang/Object;
.source "SecZenScheduleTimePickerActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$000(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Lcom/samsung/android/widget/SemTimePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePicker;->setEditTextMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$1;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Lcom/samsung/android/widget/SemTimePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePicker;->setEditTextMode(Z)V

    const-string v0, "Start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xffa

    if-eqz v0, :cond_0

    const/16 v0, 0xffe

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_0
    const-string v0, "End"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1000

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_1
    :goto_0
    return-void
.end method

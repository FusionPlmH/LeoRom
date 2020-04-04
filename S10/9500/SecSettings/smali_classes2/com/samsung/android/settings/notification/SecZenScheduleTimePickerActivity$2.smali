.class Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;
.super Ljava/lang/Object;
.source "SecZenScheduleTimePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;
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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0xffa

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Dialog OK Button clicked"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$300(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$300(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$000(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Lcom/samsung/android/widget/SemTimePicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemTimePicker;->setEditTextMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$302(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$400(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$400(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)Lcom/samsung/android/widget/SemTimePicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemTimePicker;->setEditTextMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$402(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;Z)Z

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "mStartTime"

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$500(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "mEndTime"

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$600(Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setResult(ILandroid/content/Intent;)V

    const/16 v2, 0x1004

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->finish()V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Dialog Cancel button clicked"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->setResult(I)V

    const/16 v0, 0x1003

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity$2;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleTimePickerActivity;->finish()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0859
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

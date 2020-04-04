.class Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SecZenModeDNDScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;
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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "reason"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$000(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v1, v3

    nop

    :cond_0
    const-string v2, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDNDModeChangedReceiver mReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mIsDND = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v3, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$100(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1215bf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f121610

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f121611

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f12141a

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDScheduleSettings;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f12141b

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method

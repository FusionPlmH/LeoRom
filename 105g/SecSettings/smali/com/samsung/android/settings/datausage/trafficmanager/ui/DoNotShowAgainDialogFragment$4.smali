.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;
.super Ljava/lang/Object;
.source "DoNotShowAgainDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

.field final synthetic val$isNeedSendSms:Z

.field final synthetic val$trafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->val$trafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    iput-boolean p3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->val$isNeedSendSms:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const-string v0, "DoNotShowAgainDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the dialog setPositiveButton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->val$trafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    const-string v4, "donnotshow_checked_flag"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putInt(Ljava/lang/String;I)V

    const-string v3, "DoNotShowAgainDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the dialog wlanupdate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->val$trafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    const-string v5, "auto_update_sdk_value"

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->val$isNeedSendSms:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->startAutoCalibrationService(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->startAutoCalibrationService(I)V

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "DoNotShowAgainDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogFragemnt dismiss Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->val$isNeedSendSms:Z

    if-eqz v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v6

    const-class v5, Lcom/samsung/android/settings/datausage/trafficmanager/ui/OperatorSettingActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x7f121084

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity;

    const-class v5, Lcom/samsung/android/settings/datausage/trafficmanager/ui/OperatorSettingActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x7f121084

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v10

    const/4 v11, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v11}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    return-void
.end method

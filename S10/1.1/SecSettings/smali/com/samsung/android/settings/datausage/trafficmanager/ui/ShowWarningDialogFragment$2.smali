.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ShowWarningDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

.field final synthetic val$trafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->val$trafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/OperatorSettingActivity;->sSubId:I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->val$trafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    const-string v1, "donnotshow_checked_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->showWarningDialog(Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v2

    const-class v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/OperatorSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f121058

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/OperatorSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f121058

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void
.end method

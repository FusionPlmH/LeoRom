.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ShowWarningDialogFragment.java"


# instance fields
.field private mDataUsageSummary:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->mDataUsageSummary:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->mDataUsageSummary:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v0, "ShowWarningDialog"

    const-string v1, "cancel dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "titleResId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "positiveResId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "negativeResId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "bodyResId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "bodystr"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d027f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;

    invoke-direct {v9, p0, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;)V

    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;)V

    invoke-virtual {v8, v3, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0a0246

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setParent(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->mDataUsageSummary:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    return-void
.end method

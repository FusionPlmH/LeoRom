.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;
.super Landroid/app/DialogFragment;
.source "DoNotShowAgainDialogFragment.java"


# instance fields
.field private mChecked:Z

.field private mDataUsageSummary:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

.field private mDonotShowCheckBox:Landroid/widget/CheckBox;

.field private mDonotShowContainer:Landroid/view/View;

.field private mWlanUpdateCheckBox:Landroid/widget/CheckBox;

.field private mWlanUpdateChecked:Z

.field private mWlanUpdateContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mChecked:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mChecked:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mDataUsageSummary:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mDataUsageSummary:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    const-string v2, "DoNotShowAgainDialog"

    const-string v3, "cancel dialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    const-string v3, "donnotshow_checked"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mChecked:Z

    const-string/jumbo v3, "wlan_update_checked"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "titleResId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "positiveResId"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "negativeResId"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "bodyResId"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "bodystr"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "isneedsendsms"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0d017b

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a0970

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    iget-object v12, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    iget-boolean v13, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v12, 0x7f0a0971

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateContainer:Landroid/view/View;

    iget-object v12, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateContainer:Landroid/view/View;

    new-instance v13, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$1;

    invoke-direct {v13, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f0a0177

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    iget-object v12, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    iget-boolean v13, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mChecked:Z

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v12, 0x7f0a0280

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mDonotShowContainer:Landroid/view/View;

    iget-object v12, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mDonotShowContainer:Landroid/view/View;

    new-instance v13, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;

    invoke-direct {v13, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;

    invoke-direct {v13, v1, v3, v10}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$4;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;Z)V

    invoke-virtual {v12, v6, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$3;

    invoke-direct {v13, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)V

    invoke-virtual {v12, v7, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0a0246

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-lez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v2, 0x7f1201df

    invoke-virtual {v15, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v14

    invoke-virtual {v13, v8, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v13, 0x7f1219e5

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v15, v0

    :try_start_0
    new-instance v0, Landroid/text/style/URLSpan;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "http://www.bizport.cn/webpage/agreement_flow.jsp"

    invoke-direct {v0, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v2, v14

    move-object/from16 v17, v3

    const/16 v3, 0x21

    :try_start_2
    invoke-virtual {v15, v0, v14, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    move/from16 v18, v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :goto_0
    const-string v2, "DoNotShowAgainDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v5

    const-string v5, "getAgreementDialog: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060367

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_2

    :cond_1
    move-object/from16 v17, v3

    move/from16 v18, v5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "donnotshow_checked"

    iget-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "wlan_update_checked"

    iget-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setParent(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->mDataUsageSummary:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    return-void
.end method

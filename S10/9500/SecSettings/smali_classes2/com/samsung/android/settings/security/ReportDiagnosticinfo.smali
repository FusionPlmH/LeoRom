.class public Lcom/samsung/android/settings/security/ReportDiagnosticinfo;
.super Lcom/android/internal/app/AlertActivity;
.source "ReportDiagnosticinfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAgreeBtn:Landroid/widget/CheckedTextView;

.field mDiagnosticsText:Landroid/widget/TextView;

.field mDiagonosticsInfoBody:Landroid/widget/ScrollView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mLearnMore:Landroid/widget/LinearLayout;

.field mLearnMoreText:Landroid/widget/TextView;

.field mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

.field mOtherInfoLayout:Landroid/widget/LinearLayout;

.field mOtherInfoText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private makeAddOptionalString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const v1, 0x7f1206ed

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->setDiagnostic(Landroid/content/Context;ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_1
    nop

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.security.InformationLinkingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.security.DiagnosticDataActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    iget-object v4, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v4}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a005e -> :sswitch_3
        0x7f0a0453 -> :sswitch_2
        0x7f0a0454 -> :sswitch_1
        0x7f0a05a7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f120c9c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0240

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12046e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a0243

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mDiagonosticsInfoBody:Landroid/widget/ScrollView;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a0244

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a0453

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mLearnMore:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mLearnMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a0454

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_errorlog_agree"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->makeAddOptionalString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a05a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "samsung_other_info_agree"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->makeAddOptionalString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a0456

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mLearnMoreText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mLearnMoreText:Landroid/widget/TextView;

    const v2, 0x7f1206e8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mLearnMoreText:Landroid/widget/TextView;

    const v2, 0x7f1206ea

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0a0455

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoText:Landroid/widget/TextView;

    const v2, 0x7f1206ef

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    const v2, 0x7f120c9e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mDiagnosticsText:Landroid/widget/TextView;

    const v2, 0x7f120c9d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLinkingInfo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->mOtherInfoAgreeBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/ReportDiagnosticinfo;->setupAlert()V

    return-void
.end method

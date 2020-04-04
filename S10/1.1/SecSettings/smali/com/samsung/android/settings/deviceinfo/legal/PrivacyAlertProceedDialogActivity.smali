.class public Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertProceedDialogActivity.java"


# instance fields
.field mProceedAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d014f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_chameleon_brandalpha"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f121123

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_UseChameleon"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Samsung"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Chameleon"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_chameleon_carrierhomepage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PrivacyAlertProceedDialogActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "legal message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    const-string v5, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const v5, 0x7f121124

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const v5, 0x7f121121

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    :goto_0
    const-string v4, "PrivacyAlertProceedDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use default legal message : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f121126

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    nop

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private showProceedDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f121120

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$1;-><init>(Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity$2;-><init>(Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->mProceedAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->mProceedAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->showProceedDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertProceedDialogActivity;->setupAlert()V

    return-void
.end method

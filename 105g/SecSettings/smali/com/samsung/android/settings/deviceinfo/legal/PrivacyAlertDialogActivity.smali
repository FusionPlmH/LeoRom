.class public Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0150

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f121150

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.deviceinfo.legal.PrivacyAlertProceedDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f12114e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x7f121153

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f120475

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->setupAlert()V

    return-void
.end method

.class public Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;
.super Landroid/app/Fragment;
.source "RegisterKnoxFingerPlusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterFingerPlusInfoFragment"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoImageView:Landroid/view/View;

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "RegisterFingerPlusInfoFragment"

    iput-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mInfoImageView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mKnoxEventList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mKnoxEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->items:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public initializeBottombar()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mInfoImageView:Landroid/view/View;

    const v1, 0x7f0a0354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mInfoImageView:Landroid/view/View;

    const v2, 0x7f0a0654

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1209f1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f1209f0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->items:Ljava/util/List;

    :cond_2
    new-instance v2, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment$1;-><init>(Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2711

    if-ne p1, v1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->items:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0195

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->initializeBottombar()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "RegisterFingerPlusInfoFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mKnoxEventList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mInfoImageView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mInfoImageView:Landroid/view/View;

    return-object v0

    :cond_1
    const v0, 0x7f0d0195

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mInfoImageView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->initializeBottombar()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->mInfoImageView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public startBiometricsLockSettings(Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "RegisterFingerPlusInfoFragment"

    const-string v1, "startBiometricsLockSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo;->access$302(Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "previousStage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isFromKnoxFingerprintPlus"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

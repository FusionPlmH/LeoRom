.class public Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;
.source "SetupEncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupEncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->seslSetRoundedCornerType(I)V

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f0d0267

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    const v1, 0x7f12080f

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(I)V

    return-void
.end method

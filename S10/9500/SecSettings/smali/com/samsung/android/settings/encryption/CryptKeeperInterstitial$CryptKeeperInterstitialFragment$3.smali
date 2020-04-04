.class Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$3;
.super Ljava/lang/Object;
.source "CryptKeeperInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$3;->this$0:Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$3;->this$0:Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;->access$100(Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CryptKeeperInterstitial"

    const-string v1, "Alert::Keyguard confirmation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

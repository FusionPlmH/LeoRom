.class Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$2;
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

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$2;->this$0:Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$2;->this$0:Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;->access$000(Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;Z)V

    return-void
.end method

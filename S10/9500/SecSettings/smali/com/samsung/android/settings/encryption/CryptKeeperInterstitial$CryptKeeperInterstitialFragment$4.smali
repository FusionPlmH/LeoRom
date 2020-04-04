.class Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeperInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;->showFinalConfirmation(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;

.field final synthetic val$mountService:Landroid/os/storage/IStorageManager;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;Landroid/os/storage/IStorageManager;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;->this$0:Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;->val$mountService:Landroid/os/storage/IStorageManager;

    iput p3, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;->val$type:I

    iput-object p4, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;->val$mountService:Landroid/os/storage/IStorageManager;

    iget v1, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;->val$type:I

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment$4;->val$password:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/os/storage/IStorageManager;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CryptKeeperInterstitial"

    const-string v2, "Error changing encryption password"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

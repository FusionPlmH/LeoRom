.class Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptTaskUCS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method private constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->doInBackground([Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .locals 11

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$1300(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    :try_start_0
    const-string v7, "UCSCryptKeeperTask"

    const-string v8, "EncryptTask isUcsOdeEnabled : true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, ""

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->access$1400(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->access$600(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v8, v8, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v9, v9, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/ucm/UCMUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v8

    move-object v2, v8

    aget v8, v2, v3

    aput v8, v1, v3

    aget v8, v2, v4

    aput v8, v1, v4

    aget v8, v2, v5

    aput v8, v1, v5

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    aget-object v9, p1, v3

    invoke-static {v9, v7}, Lcom/samsung/android/settings/ucm/UCMUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v9

    move-object v8, v9

    aget v9, v8, v3

    const/16 v10, 0x83

    if-ne v9, v10, :cond_1

    aput v3, v1, v3

    aget v2, v8, v4

    aput v2, v1, v4

    goto :goto_0

    :cond_1
    aget v9, v8, v3

    const/16 v10, 0x84

    if-ne v9, v10, :cond_2

    aput v2, v1, v3

    aget v2, v8, v4

    aput v2, v1, v4

    goto :goto_0

    :cond_2
    aget v9, v8, v3

    const/16 v10, 0x85

    if-ne v9, v10, :cond_3

    const v2, 0xffef

    aput v2, v1, v3

    aget v2, v8, v4

    aput v2, v1, v4

    goto :goto_0

    :cond_3
    aput v2, v1, v3

    aget v2, v8, v4

    aput v2, v1, v4

    :goto_0
    aget v2, v8, v5

    aput v2, v1, v5

    :goto_1
    const-string v2, "UCSCryptKeeperTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Return Values are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, v1, v3

    if-nez v2, :cond_6

    const-string v2, "persist.security.ucs"

    const-string v8, "1"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "security.ode.encrypting"

    const-string/jumbo v8, "true"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sys.sec_device_encryption"

    const-string v8, "fast"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->access$1800(Lcom/android/settings/UCSCryptKeeperTask;)I

    move-result v8

    if-ne v8, v4, :cond_4

    const-string/jumbo v4, "ucs_savein_false"

    move-object v2, v4

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "ucs_savein_true"

    move-object v2, v4

    :goto_2
    invoke-interface {v0, v3, v2}, Landroid/os/storage/IStorageManager;->encryptStorage(ILjava/lang/String;)I

    aput v3, v1, v5

    const-string v4, "UCSCryptKeeperTask"

    const-string v8, "EncryptStorage passed"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "security.ucs.error_code"

    const-string v8, "NONE"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "security.ucs.error_code"

    const-string v9, "NONE"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "NONE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v1, v5

    :cond_5
    goto :goto_3

    :cond_6
    const-string v2, "UCSCryptKeeperTask"

    const-string v4, "EncryptTask Not able to verify Pin, no use of decrypt op"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->access$700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    const-string v4, "UCSCryptKeeperTask"

    const-string v5, "Error while encrypting..."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    return-object v6

    :cond_7
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1500(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v1, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    const/4 v2, 0x2

    aget v3, p1, v2

    invoke-static {v0, v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$200(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    aget v0, p1, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    aget v1, p1, v0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1600(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1600(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$1700(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;

    move-result-object v0

    const v1, 0x7f0a07d2

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121929

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "security.ode.cryptkeeper.status"

    const-string v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1500(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$1200(Lcom/android/settings/UCSCryptKeeperTask;)V

    return-void
.end method

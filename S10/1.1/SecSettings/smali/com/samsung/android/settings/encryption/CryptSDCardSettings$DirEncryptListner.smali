.class Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
.super Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field public mStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;-><init>()V

    const-string v0, "none"

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 5

    const-string v0, "CryptKeeperSDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEncryptionStatusChanged: operation, volId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c

    const-string v0, "free"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$500(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CryptKeeperSDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status free: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v2, "ejecting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$700(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$800(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    goto/16 :goto_5

    :cond_4
    const-string v0, "busy"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "CryptKeeperSDSettings"

    const-string/jumbo v2, "status busy"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0, p4}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$902(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$1000(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0, p5}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$1002(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)I

    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$1102(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;Z)Z

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    :cond_7
    const-string v0, "Mount"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "CryptKeeperSDSettings"

    const-string/jumbo v1, "status mount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$700(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "MasterClearConfirm"

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$1200(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "MasterClearConfirm Case , Device will be Reset to Factory Default !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_8
    const-string v0, "CryptKeeperSDSettings"

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$1100(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Encrypt Success Case"

    goto :goto_3

    :cond_9
    const-string v1, "Decrypt Success Case"

    :goto_3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->access$1100(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x25ef

    goto :goto_4

    :cond_a
    const/16 v1, 0x25f0

    :goto_4
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_5

    :cond_b
    const-string v0, "CryptKeeperSDSettings"

    const-string v1, "ignore status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_5
    iput-object p3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    return-void
.end method

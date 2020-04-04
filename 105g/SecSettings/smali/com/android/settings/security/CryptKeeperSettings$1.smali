.class Lcom/android/settings/security/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/CryptKeeperSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "plugged"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "invalid_charger"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "status"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "PAP"

    invoke-static {}, Lcom/android/settings/security/CryptKeeperSettings;->access$000()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/16 v9, 0x50

    if-lt v3, v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    and-int/lit8 v10, v5, 0x7

    if-eqz v10, :cond_3

    if-nez v6, :cond_3

    const/4 v10, 0x2

    if-eq v7, v10, :cond_2

    const/4 v10, 0x5

    if-ne v7, v10, :cond_3

    :cond_2
    move v10, v8

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    iget-object v11, v0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v11}, Lcom/android/settings/security/CryptKeeperSettings;->access$100(Lcom/android/settings/security/CryptKeeperSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v11

    if-gt v8, v11, :cond_5

    const/4 v12, 0x3

    if-ge v12, v11, :cond_4

    goto :goto_2

    :cond_4
    move v12, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v12, v8

    :goto_3
    iget-object v13, v0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v13}, Lcom/android/settings/security/CryptKeeperSettings;->access$200(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v13

    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    if-eqz v12, :cond_6

    move v14, v8

    goto :goto_4

    :cond_6
    move v14, v4

    :goto_4
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v13, v0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v13}, Lcom/android/settings/security/CryptKeeperSettings;->access$300(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    if-eqz v12, :cond_7

    move v15, v14

    goto :goto_5

    :cond_7
    move v15, v4

    :goto_5
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v13, v0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v13}, Lcom/android/settings/security/CryptKeeperSettings;->access$400(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v10, :cond_8

    move v15, v14

    goto :goto_6

    :cond_8
    move v15, v4

    :goto_6
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v13, v0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v13}, Lcom/android/settings/security/CryptKeeperSettings;->access$500(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v9, :cond_9

    goto :goto_7

    :cond_9
    move v14, v4

    :goto_7
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/android/settings/ucm/EFSProperties;->loadODEConfig()Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    move-result-object v4

    if-eqz v4, :cond_a

    iget v13, v4, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-ne v13, v8, :cond_a

    const-string v8, "CryptKeeper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isUcsOdeEnabled"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v4, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

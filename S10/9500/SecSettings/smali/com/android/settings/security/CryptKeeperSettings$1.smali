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
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "invalid_charger"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x50

    const/4 v6, 0x1

    if-lt v1, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    and-int/lit8 v7, v3, 0x7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    iget-object v8, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/security/CryptKeeperSettings;->access$000(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/security/CryptKeeperSettings;->access$100(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    if-eqz v7, :cond_3

    move v10, v9

    goto :goto_3

    :cond_3
    move v10, v2

    :goto_3
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/security/CryptKeeperSettings;->access$200(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v8

    if-eqz v5, :cond_4

    move v2, v9

    nop

    :cond_4
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/android/settings/ucm/EFSProperties;->loadODEConfig()Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v8, v2, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-ne v8, v6, :cond_5

    const-string v6, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isUcsOdeEnabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

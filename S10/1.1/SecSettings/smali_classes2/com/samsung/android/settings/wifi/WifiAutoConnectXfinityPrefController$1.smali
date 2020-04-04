.class Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiAutoConnectXfinityPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiAutoConnectXfinityPrefController"

    const-string v1, "Comcast Wi-Fi CSC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->getResultCode()I

    move-result v1

    const-string v2, "WifiAutoConnectXfinityPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , Resultcode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_NEED_PERMISSIONS:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    const-string v2, "WifiAutoConnectXfinityPrefController"

    const-string v3, "Permissions are not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    const-string v3, "CHECK_PERMISSIONS"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$100(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$200(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$200(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$300(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    const-string v2, "com.smithmicro.mnd.action.RESUME_CM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string v2, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->OK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    const-string v5, "com.smithmicro.mnd.NWD_SDK_API_CM_SUSPENDED"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$302(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)Z

    const-string v4, "WifiAutoConnectXfinityPrefController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsNwdCmEnabled : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$300(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$200(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$200(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$300(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    const-string v4, "com.smithmicro.mnd.NWD_SDK_API_SERVICE_STATUS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "WifiAutoConnectXfinityPrefController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serviceState == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    sget-object v7, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SERVICE_STATE;->STARTED:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SERVICE_STATE;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SERVICE_STATE;->ordinal()I

    move-result v7

    if-ne v4, v7, :cond_4

    move v3, v6

    nop

    :cond_4
    invoke-static {v5, v3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$400(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)V

    :cond_5
    goto/16 :goto_1

    :cond_6
    const-string v2, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK_API_SERVICE_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "WifiAutoConnectXfinityPrefController"

    const-string v3, "NWD SDK API service state is Ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    const-string v3, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$100(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->OK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_8

    const-string v2, "WifiAutoConnectXfinityPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is success. Lets wait for the Service to be restarted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$400(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;Z)V

    goto :goto_1

    :cond_8
    const/4 v2, -0x1

    if-eq v2, v1, :cond_9

    const-string v2, "WifiAutoConnectXfinityPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NWD SDK API result code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->values()[Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$200(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$200(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;->access$300(Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_a
    :goto_1
    return-void
.end method

.class Lcom/samsung/android/settings/LGTRoamingEnv$2;
.super Landroid/telephony/PhoneStateListener;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneStateListener : + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$400(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$500(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$400(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$500(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->callResetRoamingSettings(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$402(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneStateListener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$600(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneStateListener roaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$600(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isExceptionalUSIM()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$700(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->access$602(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z

    :cond_3
    :goto_0
    return-void
.end method

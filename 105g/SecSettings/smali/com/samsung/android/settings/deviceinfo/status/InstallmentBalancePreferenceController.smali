.class public Lcom/samsung/android/settings/deviceinfo/status/InstallmentBalancePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "InstallmentBalancePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/InstallmentBalancePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "installment_balance"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRmm()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/InstallmentBalancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrefControllerMixin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rlcState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Locked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Blink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    const-string v2, "PrefControllerMixin"

    const-string v3, "RemoteLockControlManager not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    const-string v2, "PrefControllerMixin"

    const-string v3, "RemoteLockControlManager not supported (RemoteLockControlException)"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    :cond_1
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

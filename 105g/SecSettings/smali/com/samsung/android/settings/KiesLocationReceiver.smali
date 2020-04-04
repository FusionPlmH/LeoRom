.class public Lcom/samsung/android/settings/KiesLocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;,
        Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Kies_ConfigOpLocationSettingBackup"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.sec.android.intent.action.REQUEST_BACKUP_LOCATIONSERVICEVZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "com.sec.android.intent.action.REQUEST_RESTORE_LOCATIONSERVICEVZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    :goto_0
    new-instance v2, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;-><init>(Lcom/samsung/android/settings/KiesLocationReceiver;Landroid/content/Context;ILandroid/content/Intent;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_3
    const-string v2, "KiesLocationReceiver"

    const-string v3, "exit action unknown"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    const-string v0, "KiesLocationReceiver"

    const-string v1, "No Intent or action"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    const-string v0, "KiesLocationReceiver"

    const-string v1, "exit not supported device"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

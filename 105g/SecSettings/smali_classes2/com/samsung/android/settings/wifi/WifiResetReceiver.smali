.class public Lcom/samsung/android/settings/wifi/WifiResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiResetReceiver.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiResetReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiResetReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiResetReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiReset;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/wifi/WifiReset;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->start()V

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiReset;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/wifi/WifiReset;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->start()V

    :cond_2
    :goto_0
    return-void
.end method

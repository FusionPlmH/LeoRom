.class Lcom/samsung/android/settings/deviceinfo/status/SimStatus$4;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/status/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$4;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$4;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->finish()V

    :cond_0
    return-void
.end method

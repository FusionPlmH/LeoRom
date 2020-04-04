.class Lcom/android/systemui/infinity/GalaxyGyroRenderer$2;
.super Landroid/content/BroadcastReceiver;
.source "GalaxyGyroRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyGyroRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$2;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyroRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$2;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->access$102(Lcom/android/systemui/infinity/GalaxyGyroRenderer;Z)Z

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$2;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->pauseSensing()V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$2;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->access$102(Lcom/android/systemui/infinity/GalaxyGyroRenderer;Z)Z

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$2;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->beginSensing()V

    :cond_1
    :goto_0
    return-void
.end method

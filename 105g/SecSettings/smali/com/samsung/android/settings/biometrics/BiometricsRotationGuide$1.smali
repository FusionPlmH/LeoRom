.class Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$1;
.super Landroid/content/BroadcastReceiver;
.source "BiometricsRotationGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BiometricsRotationGuide"

    const-string v2, "onReceive :  ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->access$000(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;I)V

    :cond_0
    return-void
.end method
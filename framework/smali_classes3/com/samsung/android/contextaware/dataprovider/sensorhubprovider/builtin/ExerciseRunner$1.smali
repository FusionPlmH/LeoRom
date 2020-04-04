.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;
.super Landroid/content/BroadcastReceiver;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    const/16 v2, 0x17

    const/16 v3, 0x2e

    const/16 v4, 0x25

    const/4 v5, 0x1

    new-array v6, v5, [B

    const/4 v7, 0x0

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    int-to-byte v5, v5

    aput-byte v5, v6, v7

    invoke-static {v1, v2, v3, v4, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BBB[B)Z

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;Z)Z

    :cond_1
    return-void
.end method

.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;
.super Ljava/lang/Object;
.source "SemGoodCatchService.java"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->on()V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->update()V

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->off()V

    return-void
.end method

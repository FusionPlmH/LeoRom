.class Lcom/samsung/android/sepunion/SemGoodCatchManager$1;
.super Lcom/samsung/android/sepunion/IGoodCatchDispatcher$Stub;
.source "SemGoodCatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/SemGoodCatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;->this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IGoodCatchDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;->this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-static {v0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->access$000(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;->this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-static {v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->access$000(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;->this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-static {v0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->access$000(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;->this$0:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-static {v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->access$000(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;
.super Ljava/lang/Object;
.source "SecEdgeColorBalanceProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-wide v1, v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mEstimatedTime:J

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    long-to-int v1, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget v2, v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-boolean v2, v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mIsProgressStop:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$300(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-object v2, v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPgBarHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mPgBarHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    int-to-long v2, v1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.class Lcom/android/server/FMRadioService$9;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentVolume:J

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHandler(g.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2000(Lcom/android/server/FMRadioService;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    iget-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/FMRadioService;->access$2600(Lcom/android/server/FMRadioService;IJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    iget-wide v4, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    invoke-virtual {v0, v4, v5}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iput-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    :cond_2
    :goto_0
    return-void
.end method

.class Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
.super Ljava/lang/Thread;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfcThread"
.end annotation


# instance fields
.field i:I

.field index:I

.field mAvgCoprRoi:[D

.field mAvgLuminance:D

.field mDataValid:Z

.field final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field xRGB:I

.field xRGBindex:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGBindex:I

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    const/16 p1, 0xc

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "service.camera.running"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "service.camera.sfs.running"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Z)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2208(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2400(II)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v3, 0x5a0

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2500(I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2202(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const v3, 0x10c8e0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$908(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    :cond_5
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AfcThread interpolationCount - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-gt v0, v3, :cond_e

    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    :goto_2
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    const/16 v3, 0xc

    if-ge v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v0, v0, v3

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v0, v0, v3

    const/16 v3, 0x100

    if-gt v0, v3, :cond_6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v0, v0, v3

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    const-string v0, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XRGB _i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", xRGB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", average - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    iget v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    aget-object v6, v6, v7

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v7, v7, v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D

    move-result-wide v4

    aput-wide v4, v0, v3

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    :cond_7
    :goto_3
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    goto/16 :goto_2

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x4097700000000000L    # 1500.0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    :cond_a
    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v0, :cond_c

    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    :goto_5
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    if-ge v0, v3, :cond_b

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v4, v4, v5

    aput-wide v4, v0, v2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v0, v2

    const-string v0, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Average XRGB - i = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v4, v4, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3102(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average interpolationLuminance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$910(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read XRGB or Luminance Data is Out of Bound - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read COPR_ROI or Luminance Data is Out of Bound - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_10
    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const-string v2, "AfcThread is Terminated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_11
    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :goto_8
    return-void

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AfcThread is Terminated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AfterimageCompensationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

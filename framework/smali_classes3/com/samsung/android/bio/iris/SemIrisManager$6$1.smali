.class Lcom/samsung/android/bio/iris/SemIrisManager$6$1;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager$6;->onAcquired(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

.field final synthetic val$acquireInfo:I

.field final synthetic val$deviceId:J


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/iris/SemIrisManager$6;JI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$1;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iput-wide p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$1;->val$deviceId:J

    iput p4, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$1;->val$acquireInfo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$1;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-wide v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$1;->val$deviceId:J

    iget v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$1;->val$acquireInfo:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$800(Lcom/samsung/android/bio/iris/SemIrisManager;JI)V

    return-void
.end method

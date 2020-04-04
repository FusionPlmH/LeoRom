.class Lcom/samsung/android/visualeffect/circle/CircleContainer$1;
.super Landroid/os/Handler;
.source "CircleContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/circle/CircleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->access$000(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->access$100(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Lcom/samsung/android/visualeffect/circle/Circle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/Circle;->getScoreAnimProgress()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;->this$0:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;->onRoundEnd()V

    :cond_3
    :goto_0
    return-void
.end method

.class Landroid/view/SurfaceView$2;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-boolean v1, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHaveFrame: false "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/view/SurfaceView;->access$002(Landroid/view/SurfaceView;I)I

    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->updateSurface()V

    return v3
.end method

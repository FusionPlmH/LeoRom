.class Landroid/widget/AbsListView$7;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Landroid/widget/AbsListView$PerformClick;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    iput-object p2, p0, Landroid/widget/AbsListView$7;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/AbsListView$7;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$3302(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView$7;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$7;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PerformClick;->run()V

    :cond_1
    return-void
.end method

.class Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;
.super Ljava/lang/Object;
.source "AppDockScrollBarRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iget-boolean v2, v2, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBarTouchDown:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-static {v2, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->access$200(Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iget-object v5, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-virtual {v5}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->scrollBy(II)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iget-boolean v2, v2, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBarTouchDown:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-static {v2, v3}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->access$000(Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;Z)V

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iput-boolean v3, v2, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBarTouchDown:Z

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iget-object v4, v4, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBarTouchDown:Z

    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-static {v3, v4}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->access$000(Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;Z)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iput-boolean v3, v4, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBarTouchDown:Z

    nop

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iget-boolean v2, v2, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBarTouchDown:Z

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

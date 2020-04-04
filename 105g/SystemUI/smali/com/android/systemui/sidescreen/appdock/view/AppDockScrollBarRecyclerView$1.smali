.class Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AppDockScrollBarRecyclerView.java"


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

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-static {v1, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->access$000(Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;Z)V

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->access$000(Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;Z)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iget-boolean v0, v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBarTouchDown:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->computeVerticalScrollRange()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->computeVerticalScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    invoke-static {v1, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->access$100(Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;F)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;

    iget-object v2, v2, Lcom/android/systemui/sidescreen/appdock/view/AppDockScrollBarRecyclerView;->mScrollBar:Landroid/widget/ImageView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_1
    return-void
.end method

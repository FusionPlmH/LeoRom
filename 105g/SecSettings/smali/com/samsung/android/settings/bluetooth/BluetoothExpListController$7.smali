.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setAppbarLayoutListener(Landroid/support/design/widget/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$300(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1500(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/widget/SemExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1600(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1700(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1800(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v3

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1700(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1800(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v3

    sub-float/2addr v0, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1802(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1702(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1800(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1802(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1702(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1800(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1702(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1700(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v0

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1400(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$300(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1600(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1702(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1802(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    return v2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1700(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v0

    const/high16 v3, -0x3ee00000    # -10.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$300(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1600(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1702(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1802(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    return v2

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1802(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1702(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)F

    :cond_8
    :goto_0
    return v1
.end method

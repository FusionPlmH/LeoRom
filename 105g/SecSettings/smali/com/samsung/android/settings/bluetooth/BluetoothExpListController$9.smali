.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;
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

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1500(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/widget/SemExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SemExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1500(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/widget/SemExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1400(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$300(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->access$1600(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_1
    return v1
.end method

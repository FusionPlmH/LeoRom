.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "MSG_TOUCH_FOCUS_TRANSFERRED"

    return-object v0

    :pswitch_1
    const-string v0, "MSG_FINISH_MOVING_TASK"

    return-object v0

    :pswitch_2
    const-string v0, "MSG_DISPATCH_COVER_STATE"

    return-object v0

    :pswitch_3
    const-string v0, "MSG_DRAW_FINISHED"

    return-object v0

    :pswitch_4
    const-string v0, "MSG_POINTER_CAPTURE_CHANGED"

    return-object v0

    :pswitch_5
    const-string v0, "MSG_UPDATE_POINTER_ICON"

    return-object v0

    :pswitch_6
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object v0

    :pswitch_7
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object v0

    :pswitch_8
    const-string v0, "MSG_WINDOW_MOVED"

    return-object v0

    :pswitch_9
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    return-object v0

    :pswitch_a
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    return-object v0

    :pswitch_b
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object v0

    :pswitch_c
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object v0

    :pswitch_d
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    return-object v0

    :pswitch_e
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object v0

    :pswitch_f
    const-string v0, "MSG_CHECK_FOCUS"

    return-object v0

    :pswitch_10
    const-string v0, "MSG_DISPATCH_KEY_FROM_AUTOFILL"

    return-object v0

    :pswitch_11
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    return-object v0

    :pswitch_12
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object v0

    :pswitch_13
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    return-object v0

    :pswitch_14
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    return-object v0

    :pswitch_15
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    return-object v0

    :pswitch_16
    const-string v0, "MSG_RESIZED_REPORT"

    return-object v0

    :pswitch_17
    const-string v0, "MSG_RESIZED"

    return-object v0

    :pswitch_18
    const-string v0, "MSG_DIE"

    return-object v0

    :pswitch_19
    const-string v0, "MSG_INVALIDATE_RECT"

    return-object v0

    :pswitch_1a
    const-string v0, "MSG_INVALIDATE"

    return-object v0

    :cond_0
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_c

    :pswitch_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->touchFocusTransferred()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto/16 :goto_c

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onFinishMovingTask()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    goto/16 :goto_c

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->access$2500(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_c

    :pswitch_3
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    goto/16 :goto_c

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v2, v3

    nop

    :cond_3
    move v0, v2

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$2400(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_c

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$2300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    goto/16 :goto_c

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    goto/16 :goto_c

    :pswitch_7
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    goto/16 :goto_c

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_c

    :pswitch_9
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v5, v2, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v5, v3, v1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->access$1800(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    goto/16 :goto_c

    :pswitch_a
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_c

    :pswitch_b
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_c
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto/16 :goto_c

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$2200(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$2200(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V

    goto/16 :goto_c

    :pswitch_e
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$2000(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_c

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/DragEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v1, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$2100(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_c

    :pswitch_10
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_11
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$2000(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_c

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_c

    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    nop

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, v4, v3, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_c

    :pswitch_14
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto/16 :goto_c

    :pswitch_15
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_7

    move v2, v3

    nop

    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto/16 :goto_c

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputEvent;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputEventReceiver;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v1, v4, v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_c

    :pswitch_17
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_WINDOW_FOCUS_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    if-eqz v2, :cond_8

    const-string v2, "1 "

    goto :goto_2

    :cond_8
    const-string v2, "0 "

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    if-eqz v2, :cond_9

    const-string v2, "1"

    goto :goto_3

    :cond_9
    const-string v2, "0"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1900(Landroid/view/ViewRootImpl;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$2000(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_c

    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v4}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-nez v4, :cond_b

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-nez v4, :cond_b

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v4, v5, :cond_b

    goto/16 :goto_c

    :cond_b
    :pswitch_19
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget v5, v4, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v6, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/util/MergedConfiguration;

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-eq v7, v5, :cond_c

    move v7, v3

    goto :goto_4

    :cond_c
    move v7, v2

    :goto_4
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s: frame=%s ci=%s vi=%s or=%d"

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    iget-object v12, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    aput-object v12, v11, v3

    const/4 v12, 0x2

    iget-object v13, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-virtual {v6}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    if-eqz v7, :cond_d

    nop

    move v1, v5

    goto :goto_5

    :cond_d
    nop

    :goto_5
    invoke-static {v8, v6, v2, v1}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V

    goto :goto_6

    :cond_e
    if-eqz v7, :cond_f

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    :cond_f
    :goto_6
    iget v1, v4, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_7

    :cond_10
    move v1, v2

    :goto_7
    sget-boolean v8, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    if-eqz v8, :cond_11

    if-eqz v1, :cond_11

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v8, v8, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->isRemoteImAvailable()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8, v3}, Landroid/view/ViewRootImpl;->access$1002(Landroid/view/ViewRootImpl;Z)Z

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1100()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "[RemoteIm] HadResized=true "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1100()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v11}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)Z

    move-result v11

    xor-int/2addr v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v11, v11, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->isRemoteImAvailable()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v12, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v12, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_8
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v8}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v8

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    goto :goto_9

    :cond_13
    move v8, v2

    goto :goto_a

    :cond_14
    :goto_9
    move v8, v3

    :goto_a
    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    check-cast v11, Landroid/view/DisplayCutout;

    invoke-virtual {v9, v11}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v11, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v11, :cond_15

    move v11, v3

    goto :goto_b

    :cond_15
    move v11, v2

    :goto_b
    iput-boolean v11, v9, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v11, v4, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v11, :cond_16

    move v2, v3

    nop

    :cond_16
    iput-boolean v2, v9, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    invoke-virtual {v4}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v10, :cond_17

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;)V

    :cond_17
    if-eqz v0, :cond_18

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_c

    :cond_18
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_1a

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)I

    move-result v2

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v9, :cond_1a

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "[RemoteIm] Reverse."

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v9}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v9

    xor-int/2addr v3, v9

    invoke-static {v2, v3}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_1a
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1b

    if-eqz v8, :cond_1b

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/View;)V

    :cond_1b
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto :goto_c

    :pswitch_1a
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    goto :goto_c

    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    iget-object v1, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_c

    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    nop

    :cond_1c
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_18
        :pswitch_19
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

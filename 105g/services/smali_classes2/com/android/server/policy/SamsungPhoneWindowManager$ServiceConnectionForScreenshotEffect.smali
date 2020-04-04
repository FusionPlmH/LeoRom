.class Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionForScreenshotEffect"
.end annotation


# instance fields
.field private mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 19

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarVisibleLw()Z

    move-result v0

    move v7, v0

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isNavigationBarVisibleLw()Z

    move-result v0

    move v8, v0

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getFocusedWindowInfoForScreenshotLw(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v9, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v0, :cond_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v10, p2

    :goto_0
    move-object/from16 v17, v3

    move/from16 v18, v7

    goto/16 :goto_4

    :cond_0
    :try_start_3
    new-instance v0, Landroid/os/Messenger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v10, p2

    :try_start_4
    invoke-direct {v0, v10}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    move-object v6, v0

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getShotType()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v11, 0x64

    const/4 v12, 0x1

    if-ne v0, v11, :cond_2

    :try_start_5
    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "print arrayList focusedWindowInfo="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " mFocusedWindow="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SamsungPhoneWindowManager"

    const-string v13, "change shotType to fullscreen"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v0, v12}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->setShotType(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_6
    iget-object v13, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v13}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getShotType()I

    move-result v13

    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    move-object v13, v0

    move-object v14, v1

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;

    iget-object v15, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v15, v15, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect$1;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    move-object v15, v0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v15}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v13, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput v0, v13, Landroid/os/Message;->arg2:I

    iput v0, v13, Landroid/os/Message;->arg1:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v7, :cond_3

    :try_start_7
    iput v12, v13, Landroid/os/Message;->arg1:I

    :cond_3
    if-eqz v8, :cond_4

    iput v12, v13, Landroid/os/Message;->arg2:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :try_start_8
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    move v12, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "statusBarHeight"

    iget v11, v3, Landroid/graphics/Rect;->top:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    :try_start_9
    invoke-virtual {v3, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "navigationBarHeight"

    iget-object v11, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v18, v7

    :try_start_a
    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {v11, v12, v7}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "sweepDirection"

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getSweepDirection()I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "capturedDisplay"

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getScreenshotDisplay()I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "capturedOrigin"

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getScreenshotOrigin()I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "safeInsetLeft"

    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetTop"

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetRight"

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetBottom"

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Send the safeInset info for screenshot, safeInsets="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v0, "captureSharedBundle"

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getShotType()I

    move-result v0

    const/16 v7, 0x64

    if-ne v0, v7, :cond_6

    const-string/jumbo v0, "windowCapture"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    const-string/jumbo v0, "stackBounds"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Send the stackBounds info for screenshot, stackBounds="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v13, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v6, v13}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    :try_start_c
    monitor-exit v9

    return-void

    :catchall_2
    move-exception v0

    move/from16 v18, v7

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v10, p2

    :goto_3
    move-object/from16 v17, v3

    move/from16 v18, v7

    :goto_4
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v17, v3

    :goto_5
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

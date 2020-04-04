.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final HIDE:I = 0x1

.field static final LONG_DURATION_TIMEOUT:J = 0x1b58L

.field static final SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final SHOW:I


# instance fields
.field mCheckReuse:Z

.field mDefaultGravity:I

.field mDefaultOffsetY:I

.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mIsCustomOffset:Z

.field mIsDisplayContext:Z

.field mNextView:Landroid/view/View;

.field mPackageName:Ljava/lang/String;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x40088

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput-object p1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Toast$TN;->mCheckReuse:Z

    if-nez p2, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v1, Landroid/widget/Toast$TN$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsA11yServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CANCEL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleHide()V
    .locals 3

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HANDLE HIDE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->access$100()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/app/INotificationManager;->finishToken(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    :cond_3
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v2

    :cond_0
    sget-boolean v4, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v4, :cond_1

    const-string v4, "Toast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HANDLE SHOW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mNextView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, v1, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v1, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v4, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v6, v1, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v4, v6, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v4, v1, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v4, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v4, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_3

    iget-object v7, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    :cond_3
    const/4 v7, 0x0

    iget-object v8, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/widget/Toast;->isContextForDesktopDisplay(Landroid/content/Context;)Z

    move-result v8

    sget-boolean v9, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v9, :cond_4

    const-string v9, "Toast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleShow: mIsDisplayContext = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Landroid/widget/Toast$TN;->mIsDisplayContext:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isInDesktopDisplay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v9, "desktopmode"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v12

    if-eqz v12, :cond_5

    iget v13, v12, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v13, v10, :cond_5

    move v13, v5

    goto :goto_0

    :cond_5
    move v13, v11

    :goto_0
    move v0, v13

    sget-boolean v13, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v13, :cond_6

    const-string v13, "Toast"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleShow: isDeskTopMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v12, v0

    if-eqz v12, :cond_8

    iget-boolean v0, v1, Landroid/widget/Toast$TN;->mIsDisplayContext:Z

    if-nez v0, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    const-string v0, "display"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_8

    const-string v13, "com.samsung.android.hardware.display.category.DESKTOP"

    invoke-virtual {v0, v13}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v13

    array-length v14, v13

    if-lez v14, :cond_8

    aget-object v14, v13, v11

    if-eqz v14, :cond_8

    new-instance v14, Landroid/view/DisplayInfo;

    invoke-direct {v14}, Landroid/view/DisplayInfo;-><init>()V

    aget-object v15, v13, v11

    invoke-virtual {v15, v14}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    aget-object v15, v13, v11

    invoke-virtual {v4, v15}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v7

    :cond_8
    if-eqz v7, :cond_a

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_9

    const-string v0, "Toast"

    const-string v8, "handleShow: mWM for displayContext"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string/jumbo v0, "window"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    goto :goto_1

    :cond_a
    const-string/jumbo v0, "window"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    :goto_1
    iget-object v0, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v0, v1, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    invoke-static {v0, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v0, v8, 0x7

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x7

    if-ne v0, v13, :cond_b

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_b
    and-int/lit8 v0, v8, 0x70

    const/16 v13, 0x70

    if-ne v0, v13, :cond_c

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_c
    if-nez v12, :cond_f

    iget-boolean v0, v1, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    if-nez v0, :cond_f

    if-lez v2, :cond_d

    iget v0, v1, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    iget v9, v1, Landroid/widget/Toast$TN;->mY:I

    if-ne v0, v9, :cond_d

    iget v0, v1, Landroid/widget/Toast$TN;->mDefaultGravity:I

    iget v9, v1, Landroid/widget/Toast$TN;->mGravity:I

    if-ne v0, v9, :cond_d

    iget v0, v1, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/widget/Toast$TN;->mY:I

    iput-boolean v5, v1, Landroid/widget/Toast$TN;->mCheckReuse:Z

    goto :goto_2

    :cond_d
    if-nez v2, :cond_f

    iget-boolean v0, v1, Landroid/widget/Toast$TN;->mCheckReuse:Z

    if-nez v0, :cond_e

    iget v0, v1, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    iget v9, v1, Landroid/widget/Toast$TN;->mY:I

    if-ne v0, v9, :cond_f

    iget v0, v1, Landroid/widget/Toast$TN;->mDefaultGravity:I

    iget v9, v1, Landroid/widget/Toast$TN;->mGravity:I

    if-ne v0, v9, :cond_f

    :cond_e
    iget v0, v1, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    iput v0, v1, Landroid/widget/Toast$TN;->mY:I

    :cond_f
    :goto_2
    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/widget/Toast$TN;->mX:I

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/widget/Toast$TN;->mY:I

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v6, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/widget/Toast$TN;->mDuration:I

    if-ne v9, v5, :cond_10

    const-wide/16 v13, 0x1b58

    goto :goto_3

    :cond_10
    const-wide/16 v13, 0xfa0

    :goto_3
    iput-wide v13, v0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iget-object v0, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v9, p1

    iput-object v9, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_11

    const-string v0, "Toast"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "REMOVE! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, v1, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v13, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v13}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_12
    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_13

    const-string v0, "Toast"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ADD! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :try_start_0
    iget-object v0, v1, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v13, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v14, v1, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v13, v14}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    iget-object v13, v1, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v14, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v13, v14}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :goto_4
    iget-object v0, v1, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    const v13, 0x102000b

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v13, v0, Landroid/widget/TextView;

    if-eqz v13, :cond_16

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_16

    invoke-interface {v13, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    add-int/lit8 v14, v11, 0x1

    int-to-char v11, v14

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_14

    const-string v14, "Toast"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v13, v5, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_14
    const-string v5, "Toast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Text: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v15, 0x1

    invoke-interface {v13, v15, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_15
    move-object/from16 v9, p1

    move v12, v0

    :cond_16
    :goto_5
    return-void

    :cond_17
    :goto_6
    move-object/from16 v9, p1

    return-void
.end method

.method public hide()V
    .locals 3

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HIDE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setShowForAllUsers()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 3

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHOW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

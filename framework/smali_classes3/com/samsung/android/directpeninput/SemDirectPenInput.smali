.class public final Lcom/samsung/android/directpeninput/SemDirectPenInput;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;
    }
.end annotation


# static fields
.field public static final BIND_MSG_REQUEST_IME_RECT:I = 0x2

.field public static final BIND_MSG_REQUEST_TARGET_RECT:I = 0x1

.field public static final BIND_MSG_RESULT_IME_CLOSED:I = 0x2

.field public static final BIND_MSG_RESULT_IME_OPENED:I = 0x1

.field public static final BUTTON_DONE:Ljava/lang/String; = "ACTION_DONE"

.field public static final BUTTON_GO:Ljava/lang/String; = "ACTION_GO"

.field public static final BUTTON_SEARCH:Ljava/lang/String; = "ACTION_SEARCH"

.field public static final BUTTON_SEND:Ljava/lang/String; = "ACTION_SEND"

.field private static final CLIENT_SEQUENCE_MASK:I = 0xff

.field private static final CLIENT_UNIQUE_ID_MASK:I = -0x100

.field private static final DEBUG:Z

.field public static final IME_CMD_CANCEL_CLOSE:Ljava/lang/String; = "com.samsung.android.directpeninput/CANCEL_CLOSE"

.field public static final IME_CMD_SEND_BINDER:Ljava/lang/String; = "com.samsung.android.directpeninput/SEND_BINDER"

.field private static final MAX_WAIT:I = 0xa

.field private static final MSG_CANCEL_WRITINGBUDDY_CUE:I = 0x6

.field private static final MSG_EDITOR_ACTION_DOWN:I = 0x7

.field private static final MSG_SERVICE_RESULT_RECEIVED:I = 0x3

.field private static final MSG_SERVICE_TEXT_DELETED:I = 0x2

.field private static final MSG_SERVICE_TEXT_INSERTED:I = 0x1

.field private static final MSG_SERVICE_UPDATE_DIALOG:I = 0x8

.field private static final MSG_SERVICE_UPDATE_POSITION:I = 0x4

.field private static final MSG_SERVICE_UPDATE_POSITION_CHECK:I = 0x9

.field private static final MSG_SHOW_SOFT_INPUT_HWR:I = 0xa

.field private static final MSG_SHOW_WRITINGBUDDY_CUE:I = 0x5

.field public static final RESULT_FIELD_DELIMITER:Ljava/lang/String; = "//"

.field public static final RESULT_STRING_DELIMITER:Ljava/lang/String; = "//"

.field public static final SERVICE_CB_CLIENT_CHANGED:Ljava/lang/String; = "service_cb_client_changed"

.field public static final SERVICE_CB_CLOSED:Ljava/lang/String; = "service_cb_closed"

.field public static final SERVICE_CB_DATA_CHANGED:Ljava/lang/String; = "service_cb_perform_editor_action"

.field public static final SERVICE_CB_INFLATE_DONE:Ljava/lang/String; = "service_cb_inflate_done"

.field public static final SERVICE_CB_INIT_TEXT:Ljava/lang/String; = "service_cb_init_text"

.field public static final SERVICE_CB_PRIVATE:Ljava/lang/String; = "service_cb_private"

.field public static final SERVICE_CB_WRITING_DONE:Ljava/lang/String; = "service_cb_writing_done"

.field public static final SERVICE_EVENT_DATA_CHANGED:I = 0x2

.field public static final SERVICE_EVENT_WRITING_CANCEL:I = 0x1

.field public static final SERVICE_EVENT_WRITING_DONE:I = 0x0

.field private static final SHOW_IME_WITH_HARDKEY:I = 0x1

.field private static final START_DELAY_TIME_MS:I = 0x96

.field private static final STATE_EVENT_SERVICE_CALLBACK_CLOSED:I = 0x2

.field private static final STATE_EVENT_SERVICE_CALLBACK_INFLATE_DONE:I = 0x1

.field private static final STATE_EVENT_TYPE_MOTION:I = 0x1

.field private static final STATE_EVENT_TYPE_SERVICE_CALLBACK:I = 0x2

.field private static final STATE_RESET_COUNT:I = 0x3

.field private static final STATE_STEP_STANDBY:I = 0x0

.field private static final STATE_STEP_WRITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DirectPenInput"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

.field private mCanShowAutoCompletePopup:Z

.field private mCanStartDirectPenInput:Z

.field private mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

.field private mDPIRect:Landroid/graphics/Rect;

.field private mEditCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreSizeChange:Z

.field private mInitRect:Landroid/graphics/Rect;

.field private mIsCursorBlinkDisabled:Z

.field private mIsForceMode:Z

.field private mIsHoverState:Z

.field private mIsMultiLineEditor:Z

.field private mIsPerformingAction:Z

.field private mIsPopupCueShowMSGCalled:Z

.field private mIsReceiveActionButtonEnabled:Z

.field private mIsWaitingHideSoftInput:Z

.field private mIsWatchActionEnabled:Z

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParentView:Landroid/view/View;

.field private mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

.field private mScrRectUpdated:Landroid/graphics/Rect;

.field mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

.field private mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

.field private mShowCnt:I

.field private mState:I

.field private mStateResetCnt:I

.field private mViewID:I

.field private mWindowMode:I

.field private motionEvent:Landroid/view/MotionEvent;

.field private sService:Landroid/sec/clipboard/IClipboardService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    new-instance v2, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->initVariable()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setParentView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->semSetDirectPenInput(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/directpeninput/SemDirectPenInput;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/view/View;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    return p1
.end method

.method private canStartDirectPenInput(Z)Z
    .locals 12

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "pen_writing_buddy"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_6

    move-object v4, v1

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canStartDirectPenInput : window type= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_6

    const/4 v0, 0x0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getWindowMode()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v5, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v5, v3, :cond_8

    move v5, v3

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    if-eqz v5, :cond_9

    const/4 v0, 0x0

    const-string v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canStartDirectPenInput(): result 7 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_b

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->semIsDirectPenInputEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_4

    :cond_b
    :goto_5
    if-eqz v0, :cond_14

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_14

    new-instance v4, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v4}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget v6, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    iget v7, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v7, 0xff0

    const/16 v8, 0x80

    const/4 v9, 0x2

    if-eq v7, v8, :cond_c

    const/16 v8, 0x90

    if-eq v7, v8, :cond_c

    const/16 v8, 0xe0

    if-eq v7, v8, :cond_c

    if-ne v6, v9, :cond_d

    const/16 v8, 0x10

    if-ne v7, v8, :cond_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    if-eq v6, v9, :cond_e

    const/4 v8, 0x3

    if-eq v6, v8, :cond_e

    const/4 v8, 0x4

    if-ne v6, v8, :cond_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    if-eqz v0, :cond_10

    iget-object v8, v4, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_10

    iget-object v8, v4, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v9, "com.samsung.android/disableDirectPenInput"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v0, 0x0

    :cond_10
    iget v8, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v8, v8, 0xf

    if-ne v8, v3, :cond_11

    iget v8, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v9, 0x20000

    and-int/2addr v8, v9

    iput v8, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-lez v8, :cond_11

    goto :goto_6

    :cond_11
    move v3, v2

    :goto_6
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-eqz v0, :cond_14

    iget-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_7

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_7
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_8

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_8
    invoke-direct {p0, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const v9, 0x3e4ccccd    # 0.2f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_14

    const/4 v0, 0x0

    const-string v9, "DirectPenInput"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "View is scrolled."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    const-string v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canStartDirectPenInput() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private canStartTemplateDirectPenInput(Z)Z
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "pen_writing_buddy"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getWindowMode()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v6, v3, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    if-eqz v6, :cond_6

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_8

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->semIsDirectPenInputEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v0, :cond_c

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_6
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_7

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_7
    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-eq v6, v7, :cond_c

    const/4 v0, 0x0

    sget-boolean v6, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VisibleRect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ViewRect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v6}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v6, v2}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    iput-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    :cond_c
    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    const-string v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canStartDirectPenInput() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkUseSamsungIME()Z
    .locals 7

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v1

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_ime_with_hard_keyboard"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :cond_2
    if-eqz v1, :cond_3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const-string v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "virtual keyboard option is false so do not show keyboard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v3

    return v3

    :cond_4
    const-string v4, "DirectPenInput"

    const-string v5, "Can not find IMM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private closeDirectPenInput(Z)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DirectPenInput"

    const-string v2, "Can not close DirectPenInput, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3

    move-object v0, p2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopupCue()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private dismissClipboard()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "semclipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sService:Landroid/sec/clipboard/IClipboardService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardService;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DirectPenInput"

    const-string v1, "dismissClipboard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardService;->dismissDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private dismissPopupCue(Z)Z
    .locals 3

    const-string v0, "DirectPenInput"

    const-string v1, "dismissPopupCue()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    :cond_2
    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHandler() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v4, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v4, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getTargetDPIRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    instance-of v9, v4, Landroid/view/View;

    if-eqz v9, :cond_9

    move-object v9, v4

    check-cast v9, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v5, v10

    if-gez v10, :cond_0

    if-gez v5, :cond_0

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v11

    if-le v11, v5, :cond_1

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v12, v5

    add-int/2addr v11, v12

    iput v11, v2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v11

    sub-int/2addr v5, v11

    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v11, v12

    add-int v12, v11, v6

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v13, v11, v6

    sub-int/2addr v12, v13

    neg-int v6, v12

    goto :goto_2

    :cond_3
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    add-int v13, v11, v6

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x0

    :goto_2
    if-eqz p2, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v13

    float-to-int v13, v13

    rem-int/2addr v13, v1

    add-int/2addr v7, v13

    if-gez v13, :cond_4

    if-gez v7, :cond_4

    iget v14, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getScrollX()I

    move-result v14

    rem-int/2addr v14, v1

    if-lez v14, :cond_6

    if-le v14, v7, :cond_5

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v16, v14, v7

    add-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    sub-int/2addr v7, v14

    :cond_6
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int/2addr v15, v14

    add-int v0, v15, v8

    move/from16 v17, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v1, v15, v8

    sub-int/2addr v0, v1

    neg-int v0, v0

    :goto_4
    move v8, v0

    goto :goto_5

    :cond_7
    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int v1, v15, v8

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v16

    sub-int v1, v1, v16

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move/from16 v17, v1

    :goto_5
    move-object v3, v9

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    nop

    move/from16 v1, v17

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_9
    move/from16 v17, v1

    sget-boolean v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVisibleRectInWindow : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v2
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    instance-of v9, v4, Landroid/view/View;

    if-eqz v9, :cond_9

    move-object v9, v4

    check-cast v9, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v5, v10

    if-gez v10, :cond_0

    if-gez v5, :cond_0

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v11

    if-le v11, v5, :cond_1

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v12, v5

    add-int/2addr v11, v12

    iput v11, v2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v11

    sub-int/2addr v5, v11

    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v11, v12

    add-int v12, v11, v6

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v13, v11, v6

    sub-int/2addr v12, v13

    neg-int v6, v12

    goto :goto_2

    :cond_3
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    add-int v13, v11, v6

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x0

    :goto_2
    if-eqz p2, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v13

    float-to-int v13, v13

    rem-int/2addr v13, v1

    add-int/2addr v7, v13

    if-gez v13, :cond_4

    if-gez v7, :cond_4

    iget v14, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getScrollX()I

    move-result v14

    rem-int/2addr v14, v1

    if-lez v14, :cond_6

    if-le v14, v7, :cond_5

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v16, v14, v7

    add-int v15, v15, v16

    iput v15, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    sub-int/2addr v7, v14

    :cond_6
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int/2addr v15, v14

    add-int v0, v15, v8

    move/from16 v17, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v1, v15, v8

    sub-int/2addr v0, v1

    neg-int v0, v0

    :goto_4
    move v8, v0

    goto :goto_5

    :cond_7
    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int v1, v15, v8

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v16

    sub-int v1, v1, v16

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move/from16 v17, v1

    :goto_5
    move-object v3, v9

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    nop

    move/from16 v1, v17

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_9
    move/from16 v17, v1

    sget-boolean v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVisibleRectOnScreen : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v2
.end method

.method private getWindowMode()I
    .locals 1

    const/high16 v0, 0x1000000

    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showSoftInputWithHWR()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionCheck(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onUpdateDialog()V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInputCue()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionChanged(I)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onResultReceived(Landroid/os/Bundle;I)V

    goto :goto_0

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onTextDeleted(II)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onTextInserted(ILjava/lang/CharSequence;I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initVariable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    return-void
.end method

.method private isDPIShowing()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isJapaneseRegion()Z
    .locals 3

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isPasswordInputType(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x80

    if-eq v3, v4, :cond_3

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x90

    if-eq v3, v4, :cond_3

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0xe0

    if-eq v3, v4, :cond_3

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    :cond_1
    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x81

    if-eq v3, v4, :cond_3

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x91

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSupportedClassType(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTargetWindowFocused()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    :cond_0
    return v1
.end method

.method private notifyPositionCheck(I)V
    .locals 5

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPositionCheck code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update Position check. wnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " scr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mScrRectUpdated:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "DirectPenInput"

    const-string v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private pointInView(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerPositionChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setDPIPositionListenerEnalbed(Z)V

    :cond_0
    return-void
.end method

.method private resetPenPointerIcon()V
    .locals 0

    return-void
.end method

.method private resetState()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->stopCursorBlink(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->unregisterPositionChangeListener()V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    const-string v0, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report current DPI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    return-void
.end method

.method private scheduleState(IILandroid/view/MotionEvent;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z
    .locals 11

    iput-object p3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    if-ne p2, v1, :cond_3

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move v3, p4

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    :cond_0
    const-string v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".  "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const-wide/16 v5, 0x96

    const/16 v7, 0x9

    const/4 v8, 0x1

    if-nez v4, :cond_d

    if-ne p1, v8, :cond_12

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x7

    const/4 v9, 0x6

    if-ne v1, v7, :cond_5

    invoke-direct {p0, v8}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "DirectPenInput"

    const-string v10, "ACTION_HOVER_ENTER"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "DirectPenInput"

    const-string v10, "ACTION_HOVER_ENTER_1"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "DirectPenInput"

    const-string v9, "ACTION_HOVER_ENTER_2"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    goto/16 :goto_2

    :cond_5
    const/16 v5, 0xa

    if-ne v1, v5, :cond_9

    invoke-direct {p0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "DirectPenInput"

    const-string v6, "ACTION_HOVER_EXIT"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "DirectPenInput"

    const-string v7, "ACTION_HOVER_EXIT_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v10, 0x140

    invoke-virtual {v5, v6, v7, v10}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "DirectPenInput"

    const-string v7, "ACTION_HOVER_EXIT_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto :goto_1

    :cond_7
    const-string v6, "DirectPenInput"

    const-string v7, "ACTION_HOVER_EXIT_4"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x28

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    :goto_1
    goto :goto_2

    :cond_9
    if-nez v1, :cond_a

    invoke-direct {p0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "DirectPenInput"

    const-string v6, "ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto :goto_2

    :cond_a
    if-ne v1, v8, :cond_b

    invoke-direct {p0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "DirectPenInput"

    const-string v6, "ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1e

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    :goto_2
    if-ne v1, v4, :cond_c

    const/4 v3, 0x0

    :cond_c
    goto :goto_4

    :cond_d
    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-ne v4, v8, :cond_12

    if-ne p1, v8, :cond_e

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_e

    iget v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    const/4 v9, 0x3

    if-le v7, v9, :cond_e

    const-string v7, "DirectPenInput"

    const-string v9, "Reset state"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    :cond_e
    if-ne p1, v1, :cond_12

    if-ne p2, v8, :cond_12

    invoke-direct {p0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetPenPointerIcon()V

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto :goto_3

    :cond_10
    const-string v4, "DirectPenInput"

    const-string v7, "Can not find IMM"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->stopCursorBlink(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_12
    :goto_4
    if-eqz v3, :cond_15

    const-string v1, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_13

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    :cond_13
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".  "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_14
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v2
.end method

.method private sendActionButtonResult(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsReceiveActionButtonEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string v0, "ACTION_SEND"

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string v0, "ACTION_SEARCH"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string v0, "ACTION_GO"

    goto :goto_0

    :cond_2
    const-string v0, "ACTION_DONE"

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;->onButtonClick(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "command"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "action_done_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "action_cancel_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "action_composing_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    invoke-interface {v3, v2, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;->onEvent(ILjava/lang/CharSequence;)Z

    :cond_3
    return-void
.end method

.method private setupInRuntime()Z
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, ""

    const-string v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setupInRuntime userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    :try_start_0
    const-string v3, "directpeninputmanagerservice"

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_1

    :pswitch_0
    const-string v3, "directpeninputmanagerserviceknox5"

    move-object v2, v3

    goto :goto_0

    :pswitch_1
    const-string v3, "directpeninputmanagerserviceknox4"

    move-object v2, v3

    goto :goto_0

    :pswitch_2
    const-string v3, "directpeninputmanagerserviceknox3"

    move-object v2, v3

    goto :goto_0

    :pswitch_3
    const-string v3, "directpeninputmanagerserviceknox2"

    move-object v2, v3

    goto :goto_0

    :pswitch_4
    const-string v3, "directpeninputmanagerserviceknox1"

    move-object v2, v3

    goto :goto_0

    :pswitch_5
    const-string v3, "directpeninputmanagerserviceknox0"

    move-object v2, v3

    goto :goto_0

    :pswitch_6
    const-string v3, "directpeninputmanagerservicerestricted5"

    move-object v2, v3

    goto :goto_0

    :pswitch_7
    const-string v3, "directpeninputmanagerservicerestricted4"

    move-object v2, v3

    goto :goto_0

    :pswitch_8
    const-string v3, "directpeninputmanagerservicerestricted3"

    move-object v2, v3

    goto :goto_0

    :pswitch_9
    const-string v3, "directpeninputmanagerservicerestricted2"

    move-object v2, v3

    goto :goto_0

    :pswitch_a
    const-string v3, "directpeninputmanagerservicerestricted1"

    move-object v2, v3

    goto :goto_0

    :pswitch_b
    const-string v3, "directpeninputmanagerservicerestricted0"

    move-object v2, v3

    nop

    :goto_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    const-string v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setupInRuntime binder, binder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", CURRENT_SERVICE_NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-nez v4, :cond_1

    const-string v4, "DirectPenInput"

    const-string v5, "Failed to get DirectPenInputService"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :cond_1
    goto :goto_2

    :goto_1
    nop

    const-string v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get ActivityManager :: get default binder to avoid error, mWBManager:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showDirectPenInput()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissClipboard()V

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isTargetWindowFocused()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x1f4

    const-string v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SHOW_SOFT_INPUT_HWR delay : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showSoftInputWithHWR()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput_dialog()Z

    move-result v0

    return v0
.end method

.method private showDirectPenInputCue()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v0, "DirectPenInput"

    const-string v1, "Cancel to show directpeninput cue because mParentView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "DirectPenInput"

    const-string v1, "Cancel to show directpeninput cue because mParentView is not instanceof EditText and Samsung Keyboard is not used"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    nop

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    const-string v1, "DirectPenInput"

    const-string v2, "Caencel to show directpeninput cue."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->createPopupCue()V

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-eqz v2, :cond_6

    const/4 v1, 0x2

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/directpeninput/PopupCue;->show(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method private showDirectPenInput_dialog()Z
    .locals 25

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v17

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_0
    invoke-direct {v1, v5, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v15

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_1
    invoke-direct {v1, v0, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v18

    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    move-object v14, v0

    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    move-object v13, v0

    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    move-object v12, v0

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {v1, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {v0, v4, v14}, Landroid/widget/EditText;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget-object v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    iput v3, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x5

    if-eqz v5, :cond_4

    invoke-direct {v1, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v5

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget v7, v12, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v7, v7, 0xff

    if-ne v7, v6, :cond_4

    invoke-direct {v1, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isPasswordInputType(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    instance-of v8, v7, Landroid/widget/NumberPicker;

    if-nez v8, :cond_4

    :cond_3
    or-int/lit8 v4, v4, 0x1

    :cond_4
    iget-object v7, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-direct {v1, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v13, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v6, :cond_5

    invoke-direct {v1, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isPasswordInputType(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_5

    or-int/lit8 v4, v4, 0x2

    :cond_5
    iget-object v6, v13, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    iget-object v6, v13, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v8, "flagPrevNext"

    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, v13, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :cond_7
    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v13, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    iget-object v0, v13, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v4, "hasFocus"

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget v0, v13, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_9

    const-string v0, "com.sec.android.app.sbrowser"

    iget-object v4, v13, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean v11, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    goto :goto_2

    :cond_9
    iput-boolean v3, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    :goto_2
    const/4 v0, 0x0

    iget-object v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v4}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v4}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3

    :cond_a
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v4

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :goto_3
    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    and-int/lit16 v0, v0, 0xfff

    shl-int/lit8 v0, v0, 0x14

    iget-object v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    and-int/lit16 v4, v4, 0xfff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    iput v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    iget v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    iget v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    add-int/2addr v4, v11

    iput v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    iput v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    :try_start_0
    iget-object v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v5, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    invoke-interface {v0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v0, 0x0

    iget-boolean v10, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    move-object v9, v15

    move/from16 v20, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v21, v12

    move-object v12, v14

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move v14, v0

    move-object/from16 v24, v15

    move/from16 v15, v20

    :try_start_1
    invoke-interface/range {v4 .. v15}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;IZ)V

    const-string v0, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startDirectPenInput "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v4, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    const-string v0, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report current DPI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->registerPositionChangeListener()V

    iput-boolean v3, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    const/4 v0, 0x1

    iput v0, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    :goto_4
    const-string v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not start DirectPenInput, RemoteException happened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    const/4 v0, 0x0

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    return v0
.end method

.method private showSoftInputWithHWR()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private startDirectPenInputService()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting directpeninput service id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isJapaneseRegion()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.inputmethod.iwnnime.japan"

    const-string v5, "com.sec.android.inputmethod.iwnnime.japan.standardcommon.IWnnLanguageSwitcher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.inputmethod"

    const-string v5, "com.sec.android.inputmethod.SamsungKeypad"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    :cond_1
    if-eqz v1, :cond_2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting directpeninput service failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    goto :goto_3

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting directpeninput service id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isJapaneseRegion()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.inputmethod.iwnnime.japan"

    const-string v5, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.inputmethod"

    const-string v5, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    :cond_5
    if-eqz v1, :cond_6

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting directpeninput service failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private unregisterPositionChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setDPIPositionListenerEnalbed(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canShowAutoCompletePopup()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    return v0

    :cond_0
    return v1
.end method

.method public dismiss()V
    .locals 2

    const-string v0, "DirectPenInput"

    const-string v1, "Finish DirectPenInput"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPenInput"

    const-string v1, "Cancel finish."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 4

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0, v2}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    iput-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismiss(Z)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->closeDirectPenInput(Z)Z

    iput-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    return-void
.end method

.method public getExpectedTargetDPIRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getTargetDPIRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTargetDPIRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "dogbel"

    const-string v1, "handleMotionEvent enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "dogbel"

    const-string v2, "handleMotionEvent enter 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    const-string v2, "DirectPenInput"

    const-string v4, "handleMotionEvent ACTION_HOVER_ENTER"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->startDirectPenInputService()V

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    const-string v2, "DirectPenInput"

    const-string v4, "handleMotionEvent ACTION_HOVER_EXIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    :cond_3
    :goto_0
    invoke-direct {p0, v3, v0, p2, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public handleWindowFocusChanged(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1, v0}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isDPIShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DirectPenInput"

    const-string v2, "Update."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isDPIShowing()Z

    move-result v0

    return v0
.end method

.method public notifyPositionChanged(I)V
    .locals 6

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPositionChanged code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_2
    return-void

    :cond_3
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update Position. wnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " scr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mScrRectUpdated:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "DirectPenInput"

    const-string v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onResultReceived(Landroid/os/Bundle;I)V
    .locals 10

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResultReceived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " receivedClientID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " current ClientID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "service_cb_client_changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_6

    const-string v0, "DirectPenInput"

    const-string/jumbo v4, "onResultReceived SERVICE_CB_CLIENT_CHANGED "

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->stopCursorBlink(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    :cond_2
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->applyDPITextBuffer(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    const-string v0, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report current DPI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->unregisterPositionChangeListener()V

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    :cond_6
    const-string/jumbo v0, "service_cb_inflate_done"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-lez v0, :cond_7

    const-string v0, "DirectPenInput"

    const-string/jumbo v5, "onResultReceived SERVICE_CB_INFLATE_DONE "

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v3, v1, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    :cond_7
    const-string/jumbo v0, "service_cb_writing_done"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    const-string v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResultReceived SERVICE_CB_WRITING_DONE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    move v5, v3

    goto :goto_0

    :cond_8
    move v5, v2

    :goto_0
    if-eqz v5, :cond_9

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v5

    :cond_9
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    if-lez v6, :cond_b

    if-eqz v5, :cond_b

    if-ne v0, v3, :cond_a

    move v6, v3

    goto :goto_1

    :cond_a
    move v6, v2

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->applyDPITextBuffer(Z)Z

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    :cond_c
    const-string/jumbo v5, "service_cb_perform_editor_action"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_e

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "DirectPenInput"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onResultReceived SERVICE_CB_DATA_CHANGED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->performDPIEditorAction(I)V

    iput-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    :cond_d
    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendActionButtonResult(I)V

    :cond_e
    const-string/jumbo v2, "service_cb_closed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_10

    const-string v2, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_CLOSED "

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "service_cb_init_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "service_cb_closed"

    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_f

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->applyDPITextBuffer(Z)Z

    :cond_f
    invoke-direct {p0, v4, v4, v1, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    :cond_10
    const-string/jumbo v1, "service_cb_private"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_11

    const-string/jumbo v1, "service_cb_private"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    :cond_11
    return-void
.end method

.method public onTextDeleted(II)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextDeleted() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextDeleted() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, p2, p1

    if-ge v2, v3, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, p2, :cond_4

    const-string v2, "DirectPenInput"

    const-string/jumbo v3, "onTextDeleted() : end is out of bound textBuffer length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-interface {v1, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_5
    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    :cond_6
    return-void
.end method

.method public onTextInserted(ILjava/lang/CharSequence;I)V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextInserted() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isSupportedClassType(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v0

    sget-boolean v3, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v3, p1, :cond_4

    const-string v2, "DirectPenInput"

    const-string/jumbo v3, "onTextInserted() : where is out of bound editor length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, p3, :cond_5

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int p3, v3, v4

    const-string v3, "DirectPenInput"

    const-string/jumbo v4, "onTextInserted() : nextCursor position is more than total text length, set nextCursor to end of text"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {v1, p1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {v1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    :cond_7
    return-void
.end method

.method public onUpdateDialog()V
    .locals 5

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateDialog code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update onUpdateDialog. wnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " scr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "DirectPenInput"

    const-string v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setOnButtonClickListner(Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsReceiveActionButtonEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "DirectPenInput"

    const-string v1, "Reset parent View"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public setServiceEventListner(Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    return-void
.end method

.method public show()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public showAsDialog()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->startDirectPenInputServiceByForce()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    move v2, v0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalMonitorStateException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_1
    nop

    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput_dialog()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    return v1

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    return v0
.end method

.method public startDirectPenInputServiceByForce()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting directpeninput service id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isJapaneseRegion()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.inputmethod.iwnnime.japan"

    const-string v4, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.inputmethod"

    const-string v4, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting directpeninput service failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

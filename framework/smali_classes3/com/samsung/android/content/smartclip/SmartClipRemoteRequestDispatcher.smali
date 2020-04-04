.class public Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;
    }
.end annotation


# static fields
.field private static final KEY_AIR_COMMAND_HIT_TEST_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_EVENT_INJECTION_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_EVENT_INJECTION_WAIT_UNTIL_CONSUME:Ljava/lang/String; = "waitUntilConsume"

.field private static final KEY_SCROLLABLE_AREA_INFO_ACTIVITY_NAME:Ljava/lang/String; = "activityName"

.field private static final KEY_SCROLLABLE_AREA_INFO_DISPLAY_FRAME:Ljava/lang/String; = "displayFrame"

.field private static final KEY_SCROLLABLE_AREA_INFO_DSS_SCALE:Ljava/lang/String; = "dssScale"

.field private static final KEY_SCROLLABLE_AREA_INFO_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_SCROLLABLE_AREA_INFO_SCROLLABLE_VIEWS:Ljava/lang/String; = "scrollableViews"

.field private static final KEY_SCROLLABLE_AREA_INFO_UNSCROLLABLE_VIEWS:Ljava/lang/String; = "unscrollableViews"

.field private static final KEY_SCROLLABLE_AREA_INFO_VISIBLE_DISPLAY_FRAME:Ljava/lang/String; = "visibleDisplayFrame"

.field private static final KEY_SCROLLABLE_AREA_INFO_WINDOW_LAYER:Ljava/lang/String; = "windowLayer"

.field private static final KEY_SCROLLABLE_AREA_INFO_WINDOW_RECT:Ljava/lang/String; = "windowRect"

.field private static final KEY_SCROLLABLE_VIEW_INFO_CHILD_VIEWS:Ljava/lang/String; = "childViews"

.field private static final KEY_SCROLLABLE_VIEW_INFO_TARGET_VIEW:Ljava/lang/String; = "targetView"

.field private static final KEY_VIEW_INFO_HASHCODE:Ljava/lang/String; = "hashCode"

.field private static final KEY_VIEW_INFO_HIERARCHY:Ljava/lang/String; = "hierarchy"

.field private static final KEY_VIEW_INFO_SCREEN_RECT:Ljava/lang/String; = "screenRect"

.field public static final PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String; = "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

.field public static final PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String; = "android.permission.INJECT_EVENTS"

.field public static final TAG:Ljava/lang/String; = "SmartClipRemoteRequestDispatcher"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.android.smartclip.DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchAirCommandHitTest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchScrollableAreaInfo(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchScrollableViewInfo(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchInputEventInjection(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->enqueueInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    return-void
.end method

.method private createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->getViewHierarchyTable(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "hashCode"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "screenRect"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "hierarchy"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-boolean v4, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SmartClipRemoteRequestDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createScrollableViewInfo : Scrollable view hash=@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / Rect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createScrollableViewInfo :   + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private dispatchAirCommandHitTest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method private dispatchInputEventInjection(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 14

    iget-object v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->transformTouchPosition(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    const-string v5, "SmartClipRemoteRequestDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchInputEventInjection : Touch event action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v2, Landroid/view/InputEvent;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->enqueueInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "events"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string/jumbo v2, "waitUntilConsume"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_3

    aget-object v2, v1, v3

    check-cast v2, Landroid/view/InputEvent;

    invoke-virtual {v2}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v4

    goto :goto_0

    :cond_3
    const-wide/16 v4, -0x1

    :goto_0
    move-wide v9, v4

    iget-boolean v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchInputEventInjection : wait = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  eventCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    nop

    :goto_1
    move v11, v3

    array-length v2, v1

    if-ge v11, v2, :cond_8

    aget-object v2, v1, v11

    move-object v12, v2

    check-cast v12, Landroid/view/InputEvent;

    if-nez v12, :cond_5

    goto :goto_2

    :cond_5
    instance-of v2, v12, Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    move-object v2, v12

    check-cast v2, Landroid/view/MotionEvent;

    invoke-direct {p0, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->transformTouchPosition(Landroid/view/MotionEvent;)V

    :cond_6
    new-instance v13, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;

    move-object v2, v13

    move-object v3, p0

    move-object v4, v12

    move-object v5, v1

    move v6, v8

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;[Landroid/os/Parcelable;ZLcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v12}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v3, v9

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_2
    add-int/lit8 v3, v11, 0x1

    goto :goto_1

    :cond_8
    goto :goto_3

    :cond_9
    const-string v2, "SmartClipRemoteRequestDispatcher"

    const-string v3, "dispatchInputEventInjection : Event is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto :goto_4

    :cond_a
    const-string v0, "SmartClipRemoteRequestDispatcher"

    const-string v1, "dispatchInputEventInjection : Empty input event!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    return-void
.end method

.method private dispatchScrollableAreaInfo(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const-string v6, "SmartClipRemoteRequestDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchScrollableAreaInfo : windowRect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-direct {v0, v9}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v8, "SmartClipRemoteRequestDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dispatchScrollableAreaInfo : Scrollable view count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "scrollableViews"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-direct {v0, v10}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v9, "SmartClipRemoteRequestDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatchScrollableAreaInfo : Unscrollable view count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "unscrollableViews"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v9, "windowRect"

    invoke-virtual {v6, v9, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v9, "windowLayer"

    iget v10, v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v11

    invoke-virtual {v2, v9}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v12, "displayFrame"

    invoke-virtual {v6, v12, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v12, "visibleDisplayFrame"

    invoke-virtual {v6, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v12, "dssScale"

    invoke-virtual {v6, v12, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v12, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string/jumbo v14, "packageName"

    invoke-virtual {v6, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    instance-of v14, v14, Landroid/app/Activity;

    if-eqz v14, :cond_2

    iget-object v14, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "activityName"

    invoke-virtual {v6, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v14, "SmartClipRemoteRequestDispatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "dispatchScrollableAreaInfo : Pkg="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Activity="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    const-string v2, "SmartClipRemoteRequestDispatcher"

    const-string v3, "dispatchScrollableAreaInfo : Root view is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private dispatchScrollableViewInfo(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "hashCode"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->findViewByHashCode(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    const-string/jumbo v5, "windowRect"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "targetView"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    instance-of v7, v2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    move-object v7, v2

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->createViewInfoAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "childViews"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v7, "SmartClipRemoteRequestDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchScrollableViewInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "ChildCnt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v4, "SmartClipRemoteRequestDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchScrollableViewInfo : Could not found the view! hash="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_2
    const-string v2, "SmartClipRemoteRequestDispatcher"

    const-string v3, "dispatchScrollableViewInfo : There is no hash value in request!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private enqueueInputEvent(Landroid/view/InputEvent;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    if-nez v0, :cond_0

    const-string v0, "SmartClipRemoteRequestDispatcher"

    const-string v1, "enqueueInputEvent : Gateway is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmartClipRemoteRequestDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueInputEvent : Exception thrown. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    instance-of v10, v1, Landroid/widget/ScrollView;

    if-nez v10, :cond_14

    instance-of v10, v1, Landroid/widget/AbsListView;

    if-nez v10, :cond_14

    instance-of v10, v1, Landroid/webkit/WebView;

    if-eqz v10, :cond_1

    goto/16 :goto_9

    :cond_1
    instance-of v10, v1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_2

    move-object v10, v1

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v12, v11, -0x1

    :goto_0
    if-ltz v12, :cond_2

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-direct {v0, v13, v2, v3, v4}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->findScrollableViews(Landroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_2
    instance-of v10, v1, Landroid/widget/VideoView;

    if-nez v10, :cond_12

    instance-of v10, v1, Landroid/widget/HorizontalScrollView;

    if-eqz v10, :cond_3

    goto/16 :goto_8

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Class;

    const-class v14, Landroid/view/MotionEvent;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    new-array v14, v9, [Ljava/lang/Class;

    const-class v16, Landroid/graphics/Canvas;

    aput-object v16, v14, v15

    :goto_1
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v2, "android.view."

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v9, :cond_10

    const-string v2, "android.widget."

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v9, :cond_10

    const-string v2, "com.android.internal."

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v9, :cond_4

    goto/16 :goto_7

    :cond_4
    const-string v2, "dispatchTouchEvent"

    invoke-direct {v0, v12, v2, v13}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-ne v2, v9, :cond_6

    const/4 v10, 0x1

    iget-boolean v2, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v10

    const-string v10, "findScrollableViews : @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Have dispatchTouchEvent() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / Rect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move/from16 v17, v10

    :goto_2
    move/from16 v10, v17

    :cond_6
    const-string/jumbo v2, "onTouchEvent"

    invoke-direct {v0, v12, v2, v13}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_8

    const/4 v2, 0x1

    iget-boolean v9, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "SmartClipRemoteRequestDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    const-string v2, "findScrollableViews : @"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Have onTouchEvent() "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / Rect="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move/from16 v18, v2

    :goto_3
    move/from16 v10, v18

    :cond_8
    const-string/jumbo v2, "onDraw"

    invoke-direct {v0, v12, v2, v14}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_a

    const/4 v11, 0x1

    iget-boolean v2, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v11

    const-string v11, "findScrollableViews : @"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Have onDraw() "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " / "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " / Rect="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    move/from16 v19, v11

    :goto_4
    move/from16 v11, v19

    :cond_a
    const-string v2, "draw"

    invoke-direct {v0, v12, v2, v14}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_c

    const/4 v11, 0x1

    iget-boolean v2, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v11

    const-string v11, "findScrollableViews : @"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Have draw() "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " / "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " / Rect="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    move/from16 v20, v11

    :goto_5
    move/from16 v11, v20

    :cond_c
    const-string v2, "dispatchDraw"

    invoke-direct {v0, v12, v2, v14}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_e

    const/4 v2, 0x1

    iget-boolean v9, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v9, :cond_d

    const-string v9, "SmartClipRemoteRequestDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v2

    const-string v2, "findScrollableViews : @"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Have dispatchDraw() "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / Rect="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    move/from16 v21, v2

    :goto_6
    move/from16 v11, v21

    :cond_e
    if-eqz v10, :cond_f

    if-eqz v11, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    nop

    move-object/from16 v2, p2

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_10
    :goto_7
    if-eqz v10, :cond_11

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    goto/16 :goto_a

    :cond_12
    :goto_8
    iget-boolean v2, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    const/4 v9, 0x1

    if-ne v2, v9, :cond_13

    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findScrollableViews : Unscrollable view = @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") / Rect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " H="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Rect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_14
    :goto_9
    iget-boolean v2, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    const/4 v9, 0x1

    if-ne v2, v9, :cond_15

    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findScrollableViews : Scrollable view = @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") / Rect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " H="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Rect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_16
    iget-boolean v2, v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "SmartClipRemoteRequestDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findScrollableViews : Not in range - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") / Rect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_a
    return-void

    :cond_18
    :goto_b
    return-void
.end method

.method private findViewByHashCode(Landroid/view/View;I)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_1

    return-object p1

    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->findViewByHashCode(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getViewHierarchyTable(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "android.view.View"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private isMethodDeclared(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-direct {v1, v2, v3, p2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V

    return-void
.end method

.method private transformTouchPosition(Landroid/view/MotionEvent;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v0}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SmartClipRemoteRequestDispatcher"

    const-string/jumbo v2, "transformTouchPosition : Root view is not exists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    int-to-float v7, v2

    sub-float v7, v5, v7

    mul-float/2addr v7, v4

    int-to-float v8, v3

    sub-float v8, v6, v8

    mul-float/2addr v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-boolean v9, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const-string v9, "SmartClipRemoteRequestDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "transformMotionEvent : Window offsetX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " offsetY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " dssScale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " destX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " destY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mViewRootImplGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-interface {v5}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;->getTranslatedPoint()Landroid/graphics/PointF;

    move-result-object v5

    if-eqz v5, :cond_4

    iget v6, v5, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    iget v6, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    :cond_3
    iget v6, v5, Landroid/graphics/PointF;->x:F

    neg-float v6, v6

    iget v7, v5, Landroid/graphics/PointF;->y:F

    neg-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_4
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartClipRemoteRequestDispatcher"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 3

    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SmartClipRemoteRequestDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSmartClipRemoteRequest : Unknown request type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$3;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$2;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "android.permission.INJECT_EVENTS"

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$4;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_3
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$1;-><init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDebugMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->DEBUG:Z

    return v0
.end method

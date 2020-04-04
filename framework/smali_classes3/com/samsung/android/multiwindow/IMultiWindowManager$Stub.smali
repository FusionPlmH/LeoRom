.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowManager.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowManager"

.field static final TRANSACTION_createAppPairShortcut:I = 0x22

.field static final TRANSACTION_dismissSideScreen:I = 0x44

.field static final TRANSACTION_dockSideScreen:I = 0x3e

.field static final TRANSACTION_ensureDockedResize:I = 0x16

.field static final TRANSACTION_exitMultiWindow:I = 0x4

.field static final TRANSACTION_getFreeformAlpha:I = 0x21

.field static final TRANSACTION_getFreeformTasks:I = 0xe

.field static final TRANSACTION_getMultiResumePrefVal:I = 0x4a

.field static final TRANSACTION_getMultiWindowModeStates:I = 0x2

.field static final TRANSACTION_getSnapTargetAspectRatioRect:I = 0x1a

.field static final TRANSACTION_getStayFocusActivityPrefVal:I = 0x4d

.field static final TRANSACTION_getTargetStackRect:I = 0x1b

.field static final TRANSACTION_getTaskIdFromPackageName:I = 0x50

.field static final TRANSACTION_getTopRecentTaskInfo:I = 0x46

.field static final TRANSACTION_getTopTaskSnapshot:I = 0x45

.field static final TRANSACTION_getVisibleTasks:I = 0x7

.field static final TRANSACTION_hideSideScreen:I = 0x41

.field static final TRANSACTION_isCornerGestureEnabled:I = 0x1f

.field static final TRANSACTION_isFullscreenResizable:I = 0x28

.field static final TRANSACTION_isFullscreenSupportsSplitScreenWindowingMode:I = 0x29

.field static final TRANSACTION_isMultiResumeEnabled:I = 0x49

.field static final TRANSACTION_isSnapTargetHideStatusbar:I = 0x1d

.field static final TRANSACTION_isSnapWindowEnabled:I = 0x17

.field static final TRANSACTION_isSnapWindowRunning:I = 0x1c

.field static final TRANSACTION_isStayFocusActivityEnabled:I = 0x4c

.field static final TRANSACTION_maximizeSideScreen:I = 0x2b

.field static final TRANSACTION_minimizeAllFreeformTasks:I = 0x11

.field static final TRANSACTION_minimizeFreeformTask:I = 0x12

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x10

.field static final TRANSACTION_notifyAlreadyRunningOnDockedStack:I = 0x53

.field static final TRANSACTION_notifyApplyFreeformMinimizePolicy:I = 0xd

.field static final TRANSACTION_notifyFreeformMinimizeStateChanged:I = 0x13

.field static final TRANSACTION_notifyFreefromWindowAnimationEnd:I = 0xc

.field static final TRANSACTION_notifyLidStateChanged:I = 0x32

.field static final TRANSACTION_notifySideScreenDockSideChanged:I = 0x30

.field static final TRANSACTION_notifySideScreenImeVisibilityChanged:I = 0x47

.field static final TRANSACTION_notifySideScreenMenuVisibilityChanged:I = 0x2e

.field static final TRANSACTION_notifySideScreenMinimizedChanged:I = 0x33

.field static final TRANSACTION_notifySideScreenModeChanged:I = 0x31

.field static final TRANSACTION_notifySideScreenTaskSwitched:I = 0x2f

.field static final TRANSACTION_putSideScreenMenuTouchableRegion:I = 0x2c

.field static final TRANSACTION_registerDividerCloseEventListener:I = 0x51

.field static final TRANSACTION_registerMultiWindowEventListener:I = 0x5

.field static final TRANSACTION_registerMultiWindowServiceCallback:I = 0x9

.field static final TRANSACTION_registerSideScreenEventListener:I = 0x26

.field static final TRANSACTION_removeFocusedTask:I = 0x4f

.field static final TRANSACTION_removeFreeformTasks:I = 0xf

.field static final TRANSACTION_removeSearchedTask:I = 0x4e

.field static final TRANSACTION_reportMinimizeContainerBounds:I = 0xb

.field static final TRANSACTION_resizeSideScreen:I = 0x37

.field static final TRANSACTION_resizeSideScreenStack:I = 0x36

.field static final TRANSACTION_resizeSideScreenStackWithScale:I = 0x34

.field static final TRANSACTION_resizeSideScreenWithOtherSide:I = 0x35

.field static final TRANSACTION_setCornerGestureEnabled:I = 0x1e

.field static final TRANSACTION_setFreeformAlpha:I = 0x20

.field static final TRANSACTION_setMaxVisibleFreeformCount:I = 0x14

.field static final TRANSACTION_setMaxVisibleFreeformCountForDex:I = 0x15

.field static final TRANSACTION_setMultiResumeEnabled:I = 0x48

.field static final TRANSACTION_setMultiWindowEnabledForUser:I = 0x1

.field static final TRANSACTION_setSideScreenMenuMode:I = 0x3a

.field static final TRANSACTION_setSideScreenMode:I = 0x3c

.field static final TRANSACTION_setSideScreenModeAndResizeStacks:I = 0x3d

.field static final TRANSACTION_setSnapWindow:I = 0x19

.field static final TRANSACTION_setSnapWindowEnabled:I = 0x18

.field static final TRANSACTION_setStayFocusActivityEnabled:I = 0x4b

.field static final TRANSACTION_showSideScreen:I = 0x40

.field static final TRANSACTION_showSideScreenRecentsActivity:I = 0x42

.field static final TRANSACTION_showSideScreenRecentsActivityInPlace:I = 0x43

.field static final TRANSACTION_showSideScreenTasks:I = 0x3b

.field static final TRANSACTION_showSnapWindowGuideView:I = 0x3

.field static final TRANSACTION_startFreeformAtCornerGesture:I = 0x8

.field static final TRANSACTION_startMovingSideScreen:I = 0x2d

.field static final TRANSACTION_startMovingTopTask:I = 0x2a

.field static final TRANSACTION_startResizingFreeformTask:I = 0x24

.field static final TRANSACTION_swapTaskWindowingModeFromSubWindowHandler:I = 0x39

.field static final TRANSACTION_swapTasksInSplitScreenMode:I = 0x23

.field static final TRANSACTION_swapWindowingMode:I = 0x38

.field static final TRANSACTION_toggleSideScreen:I = 0x25

.field static final TRANSACTION_undockSideScreen:I = 0x3f

.field static final TRANSACTION_unregisterDividerCloseEventListener:I = 0x52

.field static final TRANSACTION_unregisterMultiWindowEventListener:I = 0x6

.field static final TRANSACTION_unregisterMultiWindowServiceCallback:I = 0xa

.field static final TRANSACTION_unregisterSideScreenEventListener:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.multiwindow.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.multiwindow.IMultiWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.samsung.android.multiwindow.IMultiWindowManager"

    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_24

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifyAlreadyRunningOnDockedStack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/IDividerCloseEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDividerCloseEventListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return v12

    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/IDividerCloseEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDividerCloseEventListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return v12

    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getTaskIdFromPackageName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeFocusedTask()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeSearchedTask(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getStayFocusActivityPrefVal()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isStayFocusActivityEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v12

    nop

    :cond_0
    move v0, v1

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setStayFocusActivityEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getMultiResumePrefVal()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isMultiResumeEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v12

    nop

    :cond_1
    move v0, v1

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setMultiResumeEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getTopRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v10, v12}, Landroid/app/ActivityManager$RecentTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v12

    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getTopTaskSnapshot(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v10, v12}, Landroid/app/ActivityManager$TaskSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v12

    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->dismissSideScreen(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->showSideScreenRecentsActivityInPlace(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v1, v12

    nop

    :cond_5
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->showSideScreenRecentsActivity(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->hideSideScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_13
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->showSideScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_14
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->undockSideScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_15
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->dockSideScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_3

    :cond_6
    nop

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSideScreenModeAndResizeStacks(Landroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_17
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSideScreenMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->showSideScreenTasks()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSideScreenMenuMode(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->swapTaskWindowingModeFromSubWindowHandler(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->swapWindowingMode(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_4

    :cond_7
    nop

    :goto_4
    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->resizeSideScreen(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_5

    :cond_8
    move-object v3, v0

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_6

    :cond_9
    nop

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    move v1, v12

    nop

    :cond_a
    invoke-virtual {v7, v2, v3, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->resizeSideScreenStack(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_7

    :cond_b
    move-object v1, v0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_8

    :cond_c
    nop

    :goto_8
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->resizeSideScreenWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v1, v12

    nop

    :cond_d
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->resizeSideScreenStackWithScale(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_20
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v1, v12

    nop

    :cond_e
    move v0, v1

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifySideScreenMinimizedChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_21
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v1, v12

    nop

    :cond_f
    move v0, v1

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifyLidStateChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_22
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifySideScreenModeChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_23
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifySideScreenDockSideChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_24
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifySideScreenTaskSwitched(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_25
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v1, v12

    nop

    :cond_10
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifySideScreenMenuVisibilityChanged(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_26
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startMovingSideScreen(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_27
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_9

    :cond_11
    nop

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->putSideScreenMenuTouchableRegion(Landroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_28
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->maximizeSideScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_29
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startMovingTopTask(IIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isFullscreenSupportsSplitScreenWindowingMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isFullscreenResizable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/ISideScreenEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ISideScreenEventListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V

    return v12

    :pswitch_2d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/ISideScreenEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ISideScreenEventListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V

    return v12

    :pswitch_2e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->toggleSideScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    move v1, v12

    nop

    :cond_12
    invoke-virtual {v7, v0, v2, v3, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startResizingFreeformTask(Landroid/os/IBinder;IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_30
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->swapTasksInSplitScreenMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_31
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->createAppPairShortcut()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_32
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeFloat(F)V

    return v12

    :pswitch_33
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setFreeformAlpha(Landroid/os/IBinder;F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_34
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isCornerGestureEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_35
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v1, v12

    nop

    :cond_13
    move v0, v1

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setCornerGestureEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_36
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isSnapTargetHideStatusbar()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_37
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isSnapWindowRunning()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_38
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_14

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v10, v12}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_14
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v12

    :pswitch_39
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v10, v12}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_15
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v12

    :pswitch_3a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    move v1, v12

    nop

    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :goto_c
    move-object v2, v0

    goto :goto_d

    :cond_17
    goto :goto_c

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v7

    move v3, v6

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v1, v12

    nop

    :cond_18
    move v0, v1

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSnapWindowEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isSnapWindowEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_3d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_e

    :cond_19
    nop

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    move v1, v12

    nop

    :cond_1a
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setMaxVisibleFreeformCountForDex(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setMaxVisibleFreeformCount(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_40
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_f

    :cond_1b
    move-object v1, v0

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_10
    move-object v3, v0

    goto :goto_11

    :cond_1c
    goto :goto_10

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v7

    move v2, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_41
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeFreeformTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_42
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    move v1, v12

    nop

    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeAllFreeformTasks(IZI)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_43
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v12

    goto :goto_12

    :cond_1e
    move v2, v1

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    move v1, v12

    nop

    :cond_1f
    invoke-virtual {v7, v0, v2, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_44
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeFreeformTasks(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_45
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getFreeformTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v12

    :pswitch_46
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifyApplyFreeformMinimizePolicy(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_47
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_13

    :cond_20
    nop

    :goto_13
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->notifyFreefromWindowAnimationEnd(IIILandroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_48
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_14

    :cond_21
    nop

    :goto_14
    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_49
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_15

    :cond_22
    nop

    :goto_15
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v12

    :pswitch_4d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    return v12

    :pswitch_4e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    return v12

    :pswitch_4f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_50
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->showSnapWindowGuideView(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_51
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getMultiWindowModeStates(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_52
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    move v1, v12

    nop

    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7, v0, v2, v1, v3}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :cond_24
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

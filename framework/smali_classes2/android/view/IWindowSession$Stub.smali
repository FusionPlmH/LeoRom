.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayForTranslate:I = 0x3

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x5

.field static final TRANSACTION_addWithoutInputChannel:I = 0x4

.field static final TRANSACTION_cancelDragAndDrop:I = 0x14

.field static final TRANSACTION_dragRecipientEntered:I = 0x15

.field static final TRANSACTION_dragRecipientExited:I = 0x16

.field static final TRANSACTION_finishDrawing:I = 0xe

.field static final TRANSACTION_getDisplayFrame:I = 0xd

.field static final TRANSACTION_getInTouchMode:I = 0x10

.field static final TRANSACTION_getWindowId:I = 0x1d

.field static final TRANSACTION_isCoverOpen:I = 0x25

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1c

.field static final TRANSACTION_outOfMemory:I = 0xa

.field static final TRANSACTION_performDrag:I = 0x12

.field static final TRANSACTION_performHapticFeedback:I = 0x11

.field static final TRANSACTION_pokeDrawLock:I = 0x1e

.field static final TRANSACTION_prepareToReplaceWindows:I = 0x9

.field static final TRANSACTION_relayout:I = 0x7

.field static final TRANSACTION_relayoutForTranslate:I = 0x8

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_reportDropResult:I = 0x13

.field static final TRANSACTION_semGetInMouseStylusMode:I = 0x23

.field static final TRANSACTION_semSetInMouseStylusMode:I = 0x22

.field static final TRANSACTION_sendWallpaperCommand:I = 0x1a

.field static final TRANSACTION_setInTouchMode:I = 0xf

.field static final TRANSACTION_setInsets:I = 0xc

.field static final TRANSACTION_setTransparentRegion:I = 0xb

.field static final TRANSACTION_setTspDeadzone:I = 0x24

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x19

.field static final TRANSACTION_setWallpaperPosition:I = 0x17

.field static final TRANSACTION_startMovingTask:I = 0x1f

.field static final TRANSACTION_updatePointerIcon:I = 0x20

.field static final TRANSACTION_updateTapExcludeRegion:I = 0x21

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x1b

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.view.IWindowSession"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_19

    const/4 v8, 0x0

    const/4 v0, 0x0

    packed-switch v14, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->isCoverOpen()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_1
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v15, v1, v0}, Landroid/view/IWindowSession$Stub;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->semGetInMouseStylusMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_3
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v8, v10

    nop

    :cond_1
    move v0, v8

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->semSetInMouseStylusMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_4
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object v0, v15

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_5
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_6
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_7
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_8
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_2
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :pswitch_9
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    nop

    :goto_1
    invoke-virtual {v15, v1, v0}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_2

    :cond_4
    nop

    :goto_2
    invoke-virtual {v15, v1, v0}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_3
    move-object v6, v0

    goto :goto_4

    :cond_5
    goto :goto_3

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v7, v10

    goto :goto_5

    :cond_6
    move v7, v8

    :goto_5
    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v10

    :pswitch_c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    move-object v0, v15

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_f
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_10
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_11
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_12
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v8, v10

    nop

    :cond_8
    move v1, v8

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_13
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    move-object v3, v1

    goto :goto_7

    :cond_9
    move-object v3, v0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    :goto_8
    move-object v9, v0

    goto :goto_9

    :cond_a
    goto :goto_8

    :goto_9
    move-object v0, v15

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :pswitch_14
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v8, v10

    nop

    :cond_b
    move v2, v8

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_15
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_16
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v8, v10

    nop

    :cond_c
    move v0, v8

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_17
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_18
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v10}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    return v10

    :pswitch_19
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object v3, v1

    goto :goto_a

    :cond_d
    move-object v3, v0

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object v4, v1

    goto :goto_b

    :cond_e
    move-object v4, v0

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    :goto_c
    move-object v5, v0

    goto :goto_d

    :cond_f
    goto :goto_c

    :goto_d
    move-object v0, v15

    move-object v1, v6

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    goto :goto_e

    :cond_10
    nop

    :goto_e
    invoke-virtual {v15, v1, v0}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_1c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    move v8, v10

    nop

    :cond_11
    move v1, v8

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    :goto_f
    move-object v3, v0

    goto :goto_10

    :cond_12
    goto :goto_f

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v0

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v1, v0

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    move-object/from16 v30, v0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v31, v0

    new-instance v0, Lcom/samsung/android/view/ConventionalModeBar$Info;

    invoke-direct {v0}, Lcom/samsung/android/view/ConventionalModeBar$Info;-><init>()V

    move-object/from16 v34, v0

    move-object/from16 v32, v30

    move-object/from16 v33, v31

    move-object v0, v15

    move-object/from16 v35, v1

    move-object/from16 v1, v22

    move-object/from16 v36, v2

    move/from16 v2, v23

    move-object/from16 v37, v4

    move/from16 v4, v24

    move-object/from16 v38, v5

    move/from16 v5, v25

    move-object/from16 v39, v6

    move/from16 v6, v26

    move-object/from16 v40, v7

    move/from16 v7, v27

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-wide/from16 v8, v28

    move-object/from16 v43, v10

    move-object/from16 v10, v41

    move-object/from16 v44, v11

    move-object/from16 v11, v42

    move-object/from16 v12, v40

    move-object/from16 v13, v39

    move-object/from16 v14, v38

    move-object/from16 v15, v37

    move-object/from16 v16, v36

    move-object/from16 v17, v35

    move-object/from16 v18, v32

    move-object/from16 v19, v43

    move-object/from16 v20, v33

    move-object/from16 v21, v34

    invoke-virtual/range {v0 .. v21}, Landroid/view/IWindowSession$Stub;->relayoutForTranslate(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;Landroid/graphics/PointF;Lcom/samsung/android/view/ConventionalModeBar$Info;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v15, p3

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    const/4 v14, 0x1

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v41

    invoke-virtual {v1, v15, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v42

    invoke-virtual {v2, v15, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v4, v40

    invoke-virtual {v4, v15, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v5, v39

    invoke-virtual {v5, v15, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, v38

    invoke-virtual {v6, v15, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, v37

    invoke-virtual {v7, v15, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, v36

    invoke-virtual {v8, v15, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v9, v35

    invoke-virtual {v9, v15, v14}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v10, v32

    invoke-virtual {v10, v15, v14}, Landroid/util/MergedConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v11, v43

    invoke-virtual {v11, v15, v14}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v12, v33

    invoke-virtual {v12, v15, v14}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v13, v34

    invoke-virtual {v13, v15, v14}, Lcom/samsung/android/view/ConventionalModeBar$Info;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :pswitch_1e
    move v14, v10

    move-object/from16 v44, v11

    move-object v15, v12

    move-object/from16 v12, v44

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    :goto_11
    move-object v3, v0

    goto :goto_12

    :cond_13
    goto :goto_11

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v4, v0

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v2, v0

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v45, v1

    move-object/from16 v1, v20

    move-object/from16 v46, v2

    move/from16 v2, v21

    move-object/from16 v47, v4

    move/from16 v4, v22

    move-object/from16 v48, v5

    move/from16 v5, v23

    move-object/from16 v49, v6

    move/from16 v6, v24

    move-object/from16 v50, v7

    move/from16 v7, v25

    move-object/from16 v51, v8

    move-object/from16 v52, v9

    move-wide/from16 v8, v26

    move-object/from16 v53, v10

    move-object v10, v11

    move-object/from16 v54, v11

    move-object/from16 v11, v53

    move-object/from16 v55, v12

    move-object/from16 v12, v51

    move-object/from16 v13, v52

    move-object/from16 v14, v50

    move-object/from16 v15, v49

    move-object/from16 v16, v48

    move-object/from16 v17, v47

    move-object/from16 v18, v46

    move-object/from16 v19, v45

    invoke-virtual/range {v0 .. v19}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v13, p3

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v54

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v53

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v4, v51

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v5, v52

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, v50

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, v49

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, v48

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v9, v47

    invoke-virtual {v9, v13, v14}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v10, v46

    invoke-virtual {v10, v13, v14}, Landroid/util/MergedConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v11, v45

    invoke-virtual {v11, v13, v14}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :pswitch_1f
    move v14, v10

    move-object/from16 v55, v11

    move-object v13, v12

    move-object/from16 v12, v55

    move-object/from16 v15, p2

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_20
    move v14, v10

    move-object/from16 v75, v12

    move-object v12, v11

    move-object v11, v15

    move-object v15, v13

    move-object/from16 v13, v75

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    :goto_13
    move-object v3, v0

    goto :goto_14

    :cond_14
    goto :goto_13

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    move-object v0, v11

    move-object v1, v8

    move v2, v9

    move v4, v10

    move/from16 v5, v16

    move-object/from16 v56, v6

    move-object v6, v7

    move-object/from16 v57, v7

    move-object/from16 v7, v56

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v57

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v56

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :pswitch_21
    move v14, v10

    move-object/from16 v75, v12

    move-object v12, v11

    move-object v11, v15

    move-object v15, v13

    move-object/from16 v13, v75

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    :goto_15
    move-object v3, v0

    goto :goto_16

    :cond_15
    goto :goto_15

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    move-object v0, v11

    move-object v1, v7

    move v2, v8

    move v4, v9

    move-object v5, v10

    move-object/from16 v58, v6

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v58

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :pswitch_22
    move v14, v10

    move-object/from16 v75, v12

    move-object v12, v11

    move-object v11, v15

    move-object v15, v13

    move-object/from16 v13, v75

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    :goto_17
    move-object v3, v0

    goto :goto_18

    :cond_16
    goto :goto_17

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v6, v0

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v5, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    move-object v0, v11

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v59, v4

    move/from16 v4, v18

    move-object/from16 v60, v5

    move/from16 v5, v19

    move-object/from16 v61, v6

    move-object v6, v10

    move-object/from16 v62, v7

    move-object v7, v9

    move-object/from16 v63, v8

    move-object/from16 v64, v9

    move-object/from16 v9, v62

    move-object/from16 v65, v10

    move-object/from16 v10, v61

    move-object/from16 v11, v60

    move-object/from16 v66, v12

    move-object/from16 v12, v59

    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->addToDisplayForTranslate(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v65

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v64

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v4, v63

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v5, v62

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, v61

    invoke-virtual {v6, v13, v14}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, v60

    invoke-virtual {v7, v13, v14}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, v59

    invoke-virtual {v8, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :pswitch_23
    move v14, v10

    move-object/from16 v66, v11

    move-object v15, v13

    move-object v13, v12

    move-object/from16 v12, v66

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    :goto_19
    move-object v3, v0

    goto :goto_1a

    :cond_17
    goto :goto_19

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v67, v6

    move-object v6, v11

    move-object/from16 v68, v7

    move-object v7, v10

    move-object/from16 v69, v8

    move-object v8, v9

    move-object/from16 v70, v9

    move-object/from16 v9, v69

    move-object/from16 v71, v10

    move-object/from16 v10, v68

    move-object/from16 v72, v11

    move-object/from16 v11, v67

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v72

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v71

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v4, v70

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v5, v69

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, v68

    invoke-virtual {v6, v13, v14}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, v67

    invoke-virtual {v7, v13, v14}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :pswitch_24
    move v14, v10

    move-object v15, v13

    move-object v13, v12

    move-object v12, v11

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    :goto_1b
    move-object v3, v0

    goto :goto_1c

    :cond_18
    goto :goto_1b

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move v4, v10

    move-object v5, v11

    move-object/from16 v73, v6

    move-object v6, v7

    move-object/from16 v74, v7

    move-object/from16 v7, v73

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v74

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    nop

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v2, v73

    invoke-virtual {v2, v13, v14}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :cond_19
    move v14, v10

    move-object v15, v13

    move-object v13, v12

    move-object v12, v11

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_0
    .packed-switch 0x1
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

.class public abstract Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;
.super Landroid/os/Binder;
.source "ISemRemoteContentManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ISemRemoteContentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ISemRemoteContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ISemRemoteContentManager"

.field static final TRANSACTION_addExportShortcutInfo:I = 0x21

.field static final TRANSACTION_cancelCopyChunks:I = 0x18

.field static final TRANSACTION_changePermissionMigration:I = 0x12

.field static final TRANSACTION_copyChunks:I = 0x17

.field static final TRANSACTION_copyFile:I = 0xf

.field static final TRANSACTION_copyFileInternal:I = 0xe

.field static final TRANSACTION_deleteFile:I = 0x15

.field static final TRANSACTION_doSyncForSyncer:I = 0x1d

.field static final TRANSACTION_exchangeData:I = 0x1a

.field static final TRANSACTION_executeCommandForPersona:I = 0x7

.field static final TRANSACTION_getCallerInfo:I = 0x8

.field static final TRANSACTION_getExportShortcutInfo:I = 0x23

.field static final TRANSACTION_getFileInfo:I = 0x16

.field static final TRANSACTION_getFiles:I = 0x14

.field static final TRANSACTION_getRCPInterface:I = 0xc

.field static final TRANSACTION_getRCPProxy:I = 0x9

.field static final TRANSACTION_handleShortcut:I = 0x1c

.field static final TRANSACTION_isFileExist:I = 0x13

.field static final TRANSACTION_moveFile:I = 0xd

.field static final TRANSACTION_moveFilesForApp:I = 0x10

.field static final TRANSACTION_moveFilesForAppEx:I = 0x20

.field static final TRANSACTION_moveUnlimitedFiles:I = 0x11

.field static final TRANSACTION_queryAllProviders:I = 0x2

.field static final TRANSACTION_queryProvider:I = 0x1

.field static final TRANSACTION_registerCommandExe:I = 0x5

.field static final TRANSACTION_registerExchangeData:I = 0x19

.field static final TRANSACTION_registerMonitorCb:I = 0x1b

.field static final TRANSACTION_registerObserver:I = 0x1e

.field static final TRANSACTION_registerProvider:I = 0x3

.field static final TRANSACTION_registerRCPGlobalContactsDir:I = 0xa

.field static final TRANSACTION_registerRCPInterface:I = 0xb

.field static final TRANSACTION_registerSync:I = 0x4

.field static final TRANSACTION_removeExportShortcutInfo:I = 0x22

.field static final TRANSACTION_switchPersona:I = 0x6

.field static final TRANSACTION_unRegisterObserver:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.ISemRemoteContentManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemRemoteContentManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.ISemRemoteContentManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ISemRemoteContentManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "com.samsung.android.knox.ISemRemoteContentManager"

    const v0, 0x5f4e5446

    const/4 v8, 0x1

    if-eq v12, v0, :cond_d

    const/4 v9, 0x0

    const/4 v0, 0x0

    packed-switch v12, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getExportShortcutInfo(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v8

    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->removeExportShortcutInfo(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_2
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->addExportShortcutInfo(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_3
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v8

    :pswitch_4
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->unRegisterObserver(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_5
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerObserver(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_6
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->doSyncForSyncer(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_7
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    goto :goto_2

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move v1, v7

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_8
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRunnableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRunnableCallback;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_9
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_4

    :cond_3
    nop

    :goto_4
    invoke-virtual {v11, v1, v2, v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v14, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_4
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v8

    :pswitch_a
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRunnableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRunnableCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_b
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->cancelCopyChunks(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_c
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v10, v8

    goto :goto_6

    :cond_5
    move v10, v9

    :goto_6
    move-object v0, v11

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-wide/from16 v5, v20

    move/from16 v7, v22

    move v12, v8

    move-wide/from16 v8, v23

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_d
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v14, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_6
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v12

    :pswitch_e
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->deleteFile(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_f
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_10
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->isFileExist(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_11
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_12
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_8

    :cond_7
    nop

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v11, v1, v0, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveUnlimitedFiles(ILandroid/net/Uri;II)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_13
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_14
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_15
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_16
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_17
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/content/IRCPInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_8
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v12

    :pswitch_18
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IRCPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterface;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_19
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IRCPGlobalContactsDir$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPGlobalContactsDir;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1a
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/content/IRCPGlobalContactsDir;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v12

    :pswitch_1b
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_a

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_a
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v12

    :pswitch_1c
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Landroid/app/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Command;

    goto :goto_a

    :cond_b
    nop

    :goto_a
    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->executeCommandForPersona(Landroid/app/Command;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1d
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->switchPersona(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1e
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ICommandExeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ICommandExeCallBack;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerCommandExe(Landroid/content/ICommandExeCallBack;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1f
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISyncCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncCallBack;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerSync(Landroid/content/ISyncCallBack;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_20
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IProviderCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IProviderCallBack;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_21
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_22
    move v12, v8

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v11

    move-object v1, v8

    move-object v2, v10

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v12}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_c
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v12

    :cond_d
    move v12, v8

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x1
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

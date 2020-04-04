.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x12

.field static final TRANSACTION_adbBackup:I = 0xe

.field static final TRANSACTION_adbRestore:I = 0x11

.field static final TRANSACTION_agentConnected:I = 0x4

.field static final TRANSACTION_agentDisconnected:I = 0x5

.field static final TRANSACTION_backupNow:I = 0xd

.field static final TRANSACTION_beginRestoreSession:I = 0x1e

.field static final TRANSACTION_cancelBackups:I = 0x26

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_filterAppsEligibleForBackup:I = 0x24

.field static final TRANSACTION_fullBackupCustomized:I = 0x27

.field static final TRANSACTION_fullRestoreCustomized:I = 0x10

.field static final TRANSACTION_fullTransportBackup:I = 0xf

.field static final TRANSACTION_getAvailableRestoreToken:I = 0x22

.field static final TRANSACTION_getConfigurationIntent:I = 0x1a

.field static final TRANSACTION_getCurrentTransport:I = 0x14

.field static final TRANSACTION_getDataManagementIntent:I = 0x1c

.field static final TRANSACTION_getDataManagementLabel:I = 0x1d

.field static final TRANSACTION_getDestinationString:I = 0x1b

.field static final TRANSACTION_getTransportWhitelist:I = 0x17

.field static final TRANSACTION_hasBackupPassword:I = 0xc

.field static final TRANSACTION_initializeTransports:I = 0x3

.field static final TRANSACTION_isAppEligibleForBackup:I = 0x23

.field static final TRANSACTION_isBackupEnabled:I = 0xa

.field static final TRANSACTION_isBackupServiceActive:I = 0x21

.field static final TRANSACTION_isSubUserSupported:I = 0x28

.field static final TRANSACTION_listAllTransportComponents:I = 0x16

.field static final TRANSACTION_listAllTransports:I = 0x15

.field static final TRANSACTION_opComplete:I = 0x1f

.field static final TRANSACTION_requestBackup:I = 0x25

.field static final TRANSACTION_restoreAtInstall:I = 0x6

.field static final TRANSACTION_selectBackupTransport:I = 0x18

.field static final TRANSACTION_selectBackupTransportAsync:I = 0x19

.field static final TRANSACTION_semBackupPackage:I = 0x29

.field static final TRANSACTION_semBackupPackageAsUser:I = 0x2b

.field static final TRANSACTION_semRestorePackage:I = 0x2a

.field static final TRANSACTION_semRestorePackageAsUser:I = 0x2c

.field static final TRANSACTION_setAutoRestore:I = 0x8

.field static final TRANSACTION_setBackupEnabled:I = 0x7

.field static final TRANSACTION_setBackupPassword:I = 0xb

.field static final TRANSACTION_setBackupProvisioned:I = 0x9

.field static final TRANSACTION_setBackupServiceActive:I = 0x20

.field static final TRANSACTION_setupEdmBackupRestore:I = 0x2d

.field static final TRANSACTION_updateTransportAttributes:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.backup.IBackupManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/backup/IBackupManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v11, p3

    const-string v9, "android.app.backup.IBackupManager"

    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v15, v0, :cond_25

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v15, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v12

    nop

    :cond_0
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setupEdmBackupRestore(ZLjava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->semRestorePackageAsUser(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_2
    goto :goto_1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v0, v14

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->semBackupPackageAsUser(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_3
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v12

    :pswitch_5
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isSubUserSupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v2, v12

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v3, v12

    goto :goto_6

    :cond_6
    move v3, v1

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v4, v12

    goto :goto_7

    :cond_7
    move v4, v1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v5, v12

    goto :goto_8

    :cond_8
    move v5, v1

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v6, v12

    goto :goto_9

    :cond_9
    move v6, v1

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v7, v12

    goto :goto_a

    :cond_a
    move v7, v1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v8, v12

    goto :goto_b

    :cond_b
    move v8, v1

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v10, v12

    goto :goto_c

    :cond_c
    move v10, v1

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v1, v12

    nop

    :cond_d
    move v0, v12

    move v12, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    move-result-object v19

    move v1, v0

    move-object v0, v14

    move v15, v1

    move-object/from16 v1, v16

    move-object/from16 v20, v9

    move-object/from16 v9, v17

    move-object/from16 v11, v18

    move-object/from16 v13, v19

    invoke-virtual/range {v0 .. v13}, Landroid/app/backup/IBackupManager$Stub;->fullBackupCustomized(Ljava/lang/String;ZZZZZZZ[Ljava/lang/String;ZLjava/lang/String;ZLandroid/app/backup/IMemorySaverBackupRestoreObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_7
    move-object/from16 v20, v9

    move v15, v12

    move-object/from16 v12, v20

    move-object/from16 v11, p2

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackups()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_8
    move v15, v12

    move-object v11, v13

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v13, p3

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_9
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v15

    :pswitch_a
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_b
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v15

    :pswitch_c
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_d
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v1, v15

    nop

    :cond_e
    invoke-virtual {v14, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_e
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_f
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_f
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v15

    :pswitch_10
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_11
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v13, v15}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_10
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v15

    :pswitch_12
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_13
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_11

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v13, v15}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_11
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v15

    :pswitch_14
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_f

    :cond_12
    nop

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/ISelectBackupTransportCallback;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_15
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_16
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v15

    :pswitch_17
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v15

    :pswitch_18
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v15

    :pswitch_19
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_1a
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    goto :goto_10

    :cond_13
    move-object v1, v0

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v3, v2

    goto :goto_11

    :cond_14
    move-object v3, v0

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_12
    move-object v5, v0

    goto :goto_13

    :cond_15
    goto :goto_12

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v14

    move-object v2, v7

    move-object v4, v8

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/IBackupManager$Stub;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1b
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v2, v15

    goto :goto_14

    :cond_16
    move v2, v1

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v9

    move-object v0, v14

    move v1, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1c
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_15

    :cond_17
    nop

    :goto_15
    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1d
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    move v1, v15

    nop

    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IMemorySaverBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    move-result-object v3

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->fullRestoreCustomized(Ljava/lang/String;ZLjava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1e
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackup([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_1f
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_16

    :cond_19
    nop

    :goto_16
    move v9, v1

    move-object v1, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v2, v15

    goto :goto_17

    :cond_1a
    move v2, v9

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v3, v15

    goto :goto_18

    :cond_1b
    move v3, v9

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v4, v15

    goto :goto_19

    :cond_1c
    move v4, v9

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    move v5, v15

    goto :goto_1a

    :cond_1d
    move v5, v9

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    move v6, v15

    goto :goto_1b

    :cond_1e
    move v6, v9

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    move v7, v15

    goto :goto_1c

    :cond_1f
    move v7, v9

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    move v8, v15

    goto :goto_1d

    :cond_20
    move v8, v9

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    move v9, v15

    nop

    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Landroid/app/backup/IBackupManager$Stub;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_20
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_21
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_22
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_23
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_24
    move v15, v12

    move-object v12, v9

    move v9, v1

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    move v9, v15

    nop

    :cond_22
    move v0, v9

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_25
    move v15, v12

    move-object v12, v9

    move v9, v1

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    move v9, v15

    nop

    :cond_23
    move v0, v9

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_26
    move v15, v12

    move-object v12, v9

    move v9, v1

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    move v9, v15

    nop

    :cond_24
    move v0, v9

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_27
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_28
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_29
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2a
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2b
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_2c
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :cond_25
    move v15, v12

    move-object v12, v9

    move-object/from16 v21, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_data_0
    .packed-switch 0x1
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

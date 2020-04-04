.class public abstract Landroid/ktuca/IKtUcaIF$Stub;
.super Landroid/os/Binder;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ktuca/IKtUcaIF$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.ktuca.IKtUcaIF"

.field static final TRANSACTION_KUCA_CHInit:I = 0x13

.field static final TRANSACTION_KUCA_Close:I = 0x10

.field static final TRANSACTION_KUCA_CloseT:I = 0x19

.field static final TRANSACTION_KUCA_KUH_Establish:I = 0x15

.field static final TRANSACTION_KUCA_KUH_Release:I = 0x16

.field static final TRANSACTION_KUCA_KUH_Transmit:I = 0x17

.field static final TRANSACTION_KUCA_Open:I = 0xe

.field static final TRANSACTION_KUCA_OpenT:I = 0x18

.field static final TRANSACTION_KUCA_Transmit:I = 0xf

.field static final TRANSACTION_KUCA_UCAVersion:I = 0x12

.field static final TRANSACTION_KUCA_getHandle:I = 0x3

.field static final TRANSACTION_KUCA_getICCID:I = 0x6

.field static final TRANSACTION_KUCA_getIMSI:I = 0x5

.field static final TRANSACTION_KUCA_getMDN:I = 0x8

.field static final TRANSACTION_KUCA_getMODEL:I = 0x9

.field static final TRANSACTION_KUCA_getMSISDN:I = 0x4

.field static final TRANSACTION_KUCA_getPUID:I = 0x7

.field static final TRANSACTION_KUCA_getPinStatus:I = 0xc

.field static final TRANSACTION_KUCA_getSIMInfo:I = 0xa

.field static final TRANSACTION_KUCA_getSimStatus:I = 0x11

.field static final TRANSACTION_KUCA_printCHInfo:I = 0x14

.field static final TRANSACTION_KUCA_usimAUTH:I = 0xb

.field static final TRANSACTION_KUCA_verifyPin:I = 0xd

.field static final TRANSACTION_getResource:I = 0x1

.field static final TRANSACTION_releaseResource:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p0, p0, v0}, Landroid/ktuca/IKtUcaIF$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/ktuca/IKtUcaIF;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/ktuca/IKtUcaIF;

    return-object v1

    :cond_1
    new-instance v1, Landroid/ktuca/IKtUcaIF$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/ktuca/IKtUcaIF$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.ktuca.IKtUcaIF"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_21

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CloseT([BB)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-array v2, v1, [B

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    new-array v4, v3, [I

    :goto_1
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_OpenT([B[B[I)J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    return v11

    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-gez v15, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    new-array v0, v15, [B

    :goto_2
    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    new-array v0, v4, [I

    :goto_3
    move-object v3, v0

    move-object v0, v6

    move v1, v12

    move-object v2, v13

    move-object/from16 v16, v3

    move v3, v14

    move/from16 v17, v4

    move-object v4, v5

    move-object v11, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v2, v16

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v3, 0x1

    return v3

    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {v6, v0}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Release(B)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    return v3

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {v6, v0}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Establish(B)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    return v3

    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {v6, v0}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_printCHInfo(B)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    return v3

    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    new-array v2, v1, [B

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    new-array v4, v3, [I

    :goto_5
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CHInit(B[B[I)J

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    return v5

    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    new-array v2, v1, [B

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_7

    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    new-array v4, v3, [I

    :goto_7
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    return v5

    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    new-array v2, v1, [B

    :goto_8
    invoke-virtual {v6, v0, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSimStatus([B[B)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v5, 0x1

    return v5

    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Close([BB)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    new-array v0, v14, [B

    :goto_9
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    :cond_a
    new-array v0, v5, [I

    :goto_a
    move-object v4, v0

    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move v3, v13

    move-object/from16 v18, v4

    move-object v4, v15

    move/from16 v16, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v2, v18

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v3, 0x1

    return v3

    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_b

    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    new-array v2, v1, [B

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_c

    const/4 v4, 0x0

    goto :goto_c

    :cond_c
    new-array v4, v3, [I

    :goto_c
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Open([B[B[I)J

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    return v5

    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    :cond_d
    new-array v0, v14, [B

    :goto_d
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    :cond_e
    new-array v0, v5, [I

    :goto_e
    move-object v4, v0

    move-object v0, v6

    move-object v1, v11

    move v2, v12

    move-object v3, v13

    move-object/from16 v19, v4

    move-object v4, v15

    move/from16 v16, v5

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v2, v19

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v3, 0x1

    return v3

    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_f

    const/4 v3, 0x0

    goto :goto_f

    :cond_f
    new-array v3, v2, [B

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_10

    const/4 v5, 0x0

    goto :goto_10

    :cond_10
    new-array v5, v4, [I

    :goto_10
    invoke-virtual {v6, v0, v1, v3, v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v13, 0x1

    return v13

    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_11

    const/4 v0, 0x0

    goto :goto_11

    :cond_11
    new-array v0, v14, [B

    :goto_11
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_12

    const/4 v0, 0x0

    goto :goto_12

    :cond_12
    new-array v0, v5, [I

    :goto_12
    move-object v4, v0

    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v20, v4

    move-object v4, v15

    move/from16 v16, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v2, v20

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v3, 0x1

    return v3

    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_13

    const/4 v2, 0x0

    goto :goto_13

    :cond_13
    new-array v2, v1, [B

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_14

    const/4 v4, 0x0

    goto :goto_14

    :cond_14
    new-array v4, v3, [I

    :goto_14
    invoke-virtual {v6, v0, v2, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    return v5

    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_15

    const/4 v0, 0x0

    goto :goto_15

    :cond_15
    new-array v0, v12, [B

    :goto_15
    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    new-array v0, v14, [I

    :goto_16
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object v0, v6

    move-object v1, v11

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_17

    const/4 v0, 0x0

    goto :goto_17

    :cond_17
    new-array v0, v12, [B

    :goto_17
    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_18

    const/4 v0, 0x0

    goto :goto_18

    :cond_18
    new-array v0, v14, [I

    :goto_18
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object v0, v6

    move-object v1, v11

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_19

    const/4 v0, 0x0

    goto :goto_19

    :cond_19
    new-array v0, v12, [B

    :goto_19
    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_1a

    const/4 v0, 0x0

    goto :goto_1a

    :cond_1a
    new-array v0, v14, [I

    :goto_1a
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object v0, v6

    move-object v1, v11

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_1b

    const/4 v0, 0x0

    goto :goto_1b

    :cond_1b
    new-array v0, v12, [B

    :goto_1b
    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_1c

    const/4 v0, 0x0

    goto :goto_1c

    :cond_1c
    new-array v0, v14, [I

    :goto_1c
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object v0, v6

    move-object v1, v11

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_1d

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1d
    new-array v0, v12, [B

    :goto_1d
    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    new-array v0, v14, [I

    :goto_1e
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object v0, v6

    move-object v1, v11

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    new-array v0, v12, [B

    :goto_1f
    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_20

    const/4 v0, 0x0

    goto :goto_20

    :cond_20
    new-array v0, v14, [I

    :goto_20
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object v0, v6

    move-object v1, v11

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    :pswitch_17
    move v2, v11

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/ktuca/IKtUcaIF$Stub;->releaseResource()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_18
    move v2, v11

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/ktuca/IKtUcaIF$Stub;->getResource()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_21
    move v2, v11

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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

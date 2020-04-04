.class public abstract Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;
.super Landroid/os/Binder;
.source "ISamsungInternalService.java"

# interfaces
.implements Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

.field static final TRANSACTION_changeCallBarringPassword:I = 0x1d

.field static final TRANSACTION_changeIccFdnPassword:I = 0x15

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x3e

.field static final TRANSACTION_getActiveFgCallState:I = 0xc

.field static final TRANSACTION_getCallState:I = 0x3f

.field static final TRANSACTION_getIccPersoSubStateAsString:I = 0x9

.field static final TRANSACTION_getIccPin2RetryCount:I = 0x6

.field static final TRANSACTION_getIccPuk2retryCount:I = 0x8

.field static final TRANSACTION_getIccSerialNumber:I = 0x3a

.field static final TRANSACTION_getLine1Number:I = 0xa

.field static final TRANSACTION_getLteOnCdmaMode:I = 0xf

.field static final TRANSACTION_getMvnoName:I = 0x37

.field static final TRANSACTION_getOcsglAvailable:I = 0x34

.field static final TRANSACTION_getRevision:I = 0x1

.field static final TRANSACTION_getSubId:I = 0x3b

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x31

.field static final TRANSACTION_getVoiceMailNumber:I = 0x32

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x27

.field static final TRANSACTION_invokeUssdCommand:I = 0x2c

.field static final TRANSACTION_isCspPlmnEnabled:I = 0xd

.field static final TRANSACTION_isDataRoamingEnabled:I = 0x10

.field static final TRANSACTION_isFdnAvailable:I = 0xb

.field static final TRANSACTION_isIccFdnEnabled:I = 0x5

.field static final TRANSACTION_isIccPin2Blocked:I = 0x7

.field static final TRANSACTION_isNetworkPolicyRestrictBackground:I = 0x4

.field static final TRANSACTION_isOCSGLAvailable:I = 0xe

.field static final TRANSACTION_isOnVoLteVideoCall:I = 0x40

.field static final TRANSACTION_isUtEnabled:I = 0x13

.field static final TRANSACTION_notifyTtyPreferredModeChanged:I = 0x2

.field static final TRANSACTION_notifyVoicemailNumberChanged:I = 0x3

.field static final TRANSACTION_queryAvailableCsg:I = 0x2f

.field static final TRANSACTION_queryAvailableNetwork:I = 0x2d

.field static final TRANSACTION_queryCallBarring:I = 0x1b

.field static final TRANSACTION_queryCallForwardingOption:I = 0x20

.field static final TRANSACTION_queryCallWaiting:I = 0x19

.field static final TRANSACTION_queryCdmaRoamingPreference:I = 0x2b

.field static final TRANSACTION_queryEnhancedVoicePrivacy:I = 0x22

.field static final TRANSACTION_queryIcBarring:I = 0x1e

.field static final TRANSACTION_queryOutGoingCallerIdDisplay:I = 0x3c

.field static final TRANSACTION_queryPreferredNetworkList:I = 0x24

.field static final TRANSACTION_queryPreferredNetworkType:I = 0x26

.field static final TRANSACTION_selectCsg:I = 0x35

.field static final TRANSACTION_setCallBarring:I = 0x1c

.field static final TRANSACTION_setCallForwardingOption:I = 0x21

.field static final TRANSACTION_setCallWaiting:I = 0x1a

.field static final TRANSACTION_setCdmaRoamingPreference:I = 0x36

.field static final TRANSACTION_setCdmaSubscription:I = 0x2a

.field static final TRANSACTION_setCsgManually:I = 0x30

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x11

.field static final TRANSACTION_setEnhancedVoicePrivacy:I = 0x23

.field static final TRANSACTION_setIcBarring:I = 0x1f

.field static final TRANSACTION_setIccEpsLoci:I = 0x18

.field static final TRANSACTION_setIccFdnEnabled:I = 0x17

.field static final TRANSACTION_setIccFplmn:I = 0x14

.field static final TRANSACTION_setIccLoci:I = 0x42

.field static final TRANSACTION_setIccPsLoci:I = 0x41

.field static final TRANSACTION_setInternalPdnEnabled:I = 0x38

.field static final TRANSACTION_setNetworkManually:I = 0x2e

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x29

.field static final TRANSACTION_setOutGoingCallerIdDisplay:I = 0x3d

.field static final TRANSACTION_setPreferredNetworkList:I = 0x25

.field static final TRANSACTION_setPreferredNetworkType:I = 0x28

.field static final TRANSACTION_setRadioPower:I = 0x12

.field static final TRANSACTION_setVoiceMailNumber:I = 0x33

.field static final TRANSACTION_supplyIccNetworkDepersonalization:I = 0x39

.field static final TRANSACTION_supplyIccPuk2:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_f

    const/4 v0, 0x0

    packed-switch v9, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccPsLoci(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isOnVoLteVideoCall()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getCallState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->exitEmergencyCallbackMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setOutGoingCallerIdDisplay(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryOutGoingCallerIdDisplay(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getSubId(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v13

    nop

    :cond_0
    invoke-virtual {v8, v1, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccSerialNumber(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->supplyIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v13

    nop

    :cond_1
    invoke-virtual {v8, v1, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setInternalPdnEnabled(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getMvnoName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCdmaRoamingPreference(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->selectCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getOcsglAvailable(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v13

    nop

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    invoke-virtual {v8, v1, v3, v0, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCsgManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryAvailableCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v13

    nop

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    invoke-virtual {v8, v1, v3, v0, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setNetworkManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryAvailableNetwork(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->invokeUssdCommand(ILjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_17
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCdmaRoamingPreference(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_18
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCdmaSubscription(IILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_19
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setNetworkSelectionModeAutomatic(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_1a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setPreferredNetworkType(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_1b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->invokeOemRilRequestRaw(I[BLcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_1c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryPreferredNetworkType(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_1d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setPreferredNetworkList(ILjava/util/List;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_1e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryPreferredNetworkList(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_1f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v13

    nop

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v1, v0, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setEnhancedVoicePrivacy(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_20
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryEnhancedVoicePrivacy(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_21
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v13

    goto :goto_0

    :cond_5
    move v2, v0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v4, v13

    goto :goto_1

    :cond_6
    move v4, v0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v18

    move-object v0, v8

    move v1, v14

    move v3, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_22
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v13

    nop

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    invoke-virtual {v8, v1, v0, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallForwardingOption(IZILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_23
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIcBarring(I[Landroid/os/Bundle;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_24
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryIcBarring(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_25
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_26
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v2, v13

    goto :goto_2

    :cond_8
    move v2, v0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    move v4, v13

    goto :goto_3

    :cond_9
    move v4, v0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v16

    move-object v0, v8

    move v1, v7

    move-object v3, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallBarring(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_27
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v13

    nop

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    invoke-virtual {v8, v1, v0, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallBarring(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_28
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v13

    nop

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v1, v0, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallWaiting(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_29
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallWaiting(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccEpsLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v13

    nop

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    invoke-virtual {v8, v1, v0, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->supplyIccPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccFplmn(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isUtEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_30
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v0, v13

    nop

    :cond_d
    invoke-virtual {v8, v1, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setRadioPower(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_31
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v0, v13

    nop

    :cond_e
    invoke-virtual {v8, v1, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setDataRoamingEnabled(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_32
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isDataRoamingEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_33
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getLteOnCdmaMode(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_34
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isOCSGLAvailable(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_35
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isCspPlmnEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_36
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getActiveFgCallState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_37
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isFdnAvailable(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_38
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getLine1Number(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_39
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPersoSubStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_3a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPuk2retryCount(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isIccPin2Blocked(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPin2RetryCount(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isIccFdnEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isNetworkPolicyRestrictBackground()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->notifyVoicemailNumberChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_40
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->notifyTtyPreferredModeChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_41
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getRevision()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :cond_f
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_data_0
    .packed-switch 0x1
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

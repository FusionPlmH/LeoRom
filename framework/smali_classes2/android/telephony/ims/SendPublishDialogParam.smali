.class public Landroid/telephony/ims/SendPublishDialogParam;
.super Ljava/lang/Object;
.source "SendPublishDialogParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SendPublishDialogParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field callCnt:I

.field callDirections:[I

.field callIds:[I

.field callStates:[I

.field callTypes:[I

.field cnapNamePresentations:[I

.field cnapNames:[Ljava/lang/String;

.field domains:[I

.field isConferences:[Z

.field numberPresentations:[I

.field pullables:[Z

.field remoteUris:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/SendPublishDialogParam$1;

    invoke-direct {v0}, Landroid/telephony/ims/SendPublishDialogParam$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SendPublishDialogParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/SendPublishDialogParam;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/SendPublishDialogParam$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/SendPublishDialogParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallCnt()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callCnt:I

    return v0
.end method

.method public getCallDirections()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callDirections:[I

    return-object v0
.end method

.method public getCallIds()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callIds:[I

    return-object v0
.end method

.method public getCallStates()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callStates:[I

    return-object v0
.end method

.method public getCallTypes()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callTypes:[I

    return-object v0
.end method

.method public getCnapNamePresentations()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNamePresentations:[I

    return-object v0
.end method

.method public getCnapNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getDomains()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->domains:[I

    return-object v0
.end method

.method public getIsConferences()[Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->isConferences:[Z

    return-object v0
.end method

.method public getNumberPresentations()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->numberPresentations:[I

    return-object v0
.end method

.method public getPullables()[Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->pullables:[Z

    return-object v0
.end method

.method public getRemoteUris()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->remoteUris:[Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callCnt:I

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callIds:[I

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callIds:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->domains:[I

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->domains:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callStates:[I

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callStates:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callTypes:[I

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callTypes:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callDirections:[I

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callDirections:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_5

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->remoteUris:[Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->remoteUris:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_6

    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->pullables:[Z

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->pullables:[Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_7

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->numberPresentations:[I

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->numberPresentations:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_8

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNamePresentations:[I

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNamePresentations:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_9

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNames:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_a

    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->isConferences:[Z

    iget-object v1, p0, Landroid/telephony/ims/SendPublishDialogParam;->isConferences:[Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    :cond_a
    return-void
.end method

.method public setCallCnt(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callCnt:I

    return-void
.end method

.method public setCallDirections([I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callDirections:[I

    return-void
.end method

.method public setCallIds([I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callIds:[I

    return-void
.end method

.method public setCallStates([I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callStates:[I

    return-void
.end method

.method public setCallTypes([I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->callTypes:[I

    return-void
.end method

.method public setCnapNamePresentations([I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNamePresentations:[I

    return-void
.end method

.method public setCnapNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNames:[Ljava/lang/String;

    return-void
.end method

.method public setDomains([I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->domains:[I

    return-void
.end method

.method public setIsConferences([Z)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->isConferences:[Z

    return-void
.end method

.method public setNumberPresentations([I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->numberPresentations:[I

    return-void
.end method

.method public setPullables([Z)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->pullables:[Z

    return-void
.end method

.method public setRemoteUris([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SendPublishDialogParam;->remoteUris:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callIds:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callIds:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callIds:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->domains:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->domains:[I

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->domains:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->domains:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callStates:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callStates:[I

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callStates:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callStates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callTypes:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callTypes:[I

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callDirections:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callDirections:[I

    array-length v0, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callDirections:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->callDirections:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->remoteUris:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->remoteUris:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->remoteUris:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->remoteUris:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->pullables:[Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->pullables:[Z

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->pullables:[Z

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->pullables:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->numberPresentations:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->numberPresentations:[I

    array-length v0, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->numberPresentations:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->numberPresentations:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNamePresentations:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNamePresentations:[I

    array-length v0, v0

    if-lez v0, :cond_8

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNamePresentations:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNamePresentations:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNames:[Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNames:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->cnapNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->isConferences:[Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->isConferences:[Z

    array-length v0, v0

    if-lez v0, :cond_a

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->isConferences:[Z

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SendPublishDialogParam;->isConferences:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return-void
.end method

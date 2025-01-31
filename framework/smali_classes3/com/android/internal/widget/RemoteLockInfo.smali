.class public Lcom/android/internal/widget/RemoteLockInfo;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RemoteLockInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/RemoteLockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowFailCount:I

.field public bundle:Landroid/os/Bundle;

.field public clientName:Ljava/lang/CharSequence;

.field public emailAddress:Ljava/lang/CharSequence;

.field public enableEmergencyCall:Z

.field public lockState:Z

.field public lockTimeOut:J

.field public lockType:I

.field public message:Ljava/lang/CharSequence;

.field public permanentBlockCount:I

.field public phoneNumber:Ljava/lang/CharSequence;

.field public skipPinContainer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$1;

    invoke-direct {v0}, Lcom/android/internal/widget/RemoteLockInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iput-boolean p2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    iput-object p3, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    iput-boolean p6, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    iput-object p7, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    iput p8, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    iput-wide p9, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    iput p11, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    iput-boolean p12, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iput-object p13, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZLandroid/os/Bundle;Lcom/android/internal/widget/RemoteLockInfo$1;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/RemoteLockInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$000(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$100(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$200(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$300(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$400(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$500(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$600(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$700(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$800(Lcom/android/internal/widget/RemoteLockInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$900(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$1000(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->access$1100(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    new-array v0, v0, [Z

    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    aput-boolean v2, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

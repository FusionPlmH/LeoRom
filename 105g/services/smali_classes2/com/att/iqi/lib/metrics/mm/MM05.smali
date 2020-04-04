.class public Lcom/att/iqi/lib/metrics/mm/MM05;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/mm/MM05;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_SIP_CALL_STATE_ANSWERED:B = 0x8t

.field public static final IQ_SIP_CALL_STATE_CONNECTED:B = 0x9t

.field public static final IQ_SIP_CALL_STATE_DISCONNECTING:B = 0xbt

.field public static final IQ_SIP_CALL_STATE_HELD:B = 0xat

.field public static final IQ_SIP_CALL_STATE_IDLE:B = 0x1t

.field public static final IQ_SIP_CALL_STATE_INVITE:B = 0x2t

.field public static final IQ_SIP_CALL_STATE_NEGOTIATING:B = 0x5t

.field public static final IQ_SIP_CALL_STATE_PROGRESS:B = 0x4t

.field public static final IQ_SIP_CALL_STATE_RINGING:B = 0x7t

.field public static final IQ_SIP_CALL_STATE_TRYING:B = 0x3t

.field public static final IQ_SIP_CALL_STATE_UNKNOWN:B = 0x0t

.field public static final IQ_SIP_CALL_STATE_UPDATED:B = 0x6t


# instance fields
.field private a:B

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "MM05"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM05;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM05$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM05$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM05;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM05;->reset()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->a:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRegState()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->a:B

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->a:B

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->b:Ljava/lang/String;

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->a:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/mm/MM05;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setCallId(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM05;
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setCallState(B)Lcom/att/iqi/lib/metrics/mm/MM05;
    .locals 0

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->a:B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->a:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

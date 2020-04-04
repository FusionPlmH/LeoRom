.class public Landroid/os/VibrationEffect$SemHaptic;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemHaptic"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$SemHaptic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRepeat:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$SemHaptic$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$SemHaptic$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$SemHaptic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    iput p1, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    iput p2, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    iput p3, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitude:I

    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    aget-object v0, v0, p4

    iput-object v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-void
.end method

.method public constructor <init>(IILandroid/os/VibrationEffect$SemMagnitudeType;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    iput p1, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    iput p2, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    iput-object p3, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/VibrationEffect$SemHaptic;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/os/VibrationEffect$SemHaptic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$SemHaptic;

    iget v2, v0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    iget v3, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    iget v3, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    iget-object v3, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getDuration()J
    .locals 2

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    if-ltz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRepeat()I
    .locals 1

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget v1, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    const/16 v2, 0x25

    mul-int/2addr v1, v2

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    mul-int/2addr v0, v2

    iget-object v1, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v1

    mul-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemHaptic{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnitudeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 3

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "repeat must be bigger than -1repeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid haptic type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/VibrationEffect$SemHaptic;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

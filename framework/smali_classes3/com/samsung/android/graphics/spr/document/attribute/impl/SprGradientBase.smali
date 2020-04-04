.class public abstract Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;
.super Ljava/lang/Object;
.source "SprGradientBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final SPREAD_TYPE_NONE:B = 0x0t

.field public static final SPREAD_TYPE_PAD:B = 0x1t

.field public static final SPREAD_TYPE_REFLECT:B = 0x2t

.field public static final SPREAD_TYPE_REPEAT:B = 0x3t

.field static final sTileModeArray:[Landroid/graphics/Shader$TileMode;


# instance fields
.field public colors:[I

.field protected final mIntrinsic:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

.field public matrix:Landroid/graphics/Matrix;

.field public positions:[F

.field public shader:Landroid/graphics/Shader;

.field public spreadMode:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->sTileModeArray:[Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->spreadMode:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    aget v3, v3, v1

    aput v3, v2, v1

    iget-object v2, v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->updateGradient()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->spreadMode:B

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v5, v2

    aput v5, v4, v0

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprMatrix;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->updateGradient()V

    return-void
.end method

.method public getSPRSize()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    const/16 v1, 0x1e

    add-int/2addr v1, v0

    return v1
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->spreadMode:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    aget v2, v2, v1

    const v3, 0xffffff

    and-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    aget v2, v2, v1

    shr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprMatrix;->toSPR(Ljava/io/DataOutputStream;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public abstract updateGradient()V
.end method

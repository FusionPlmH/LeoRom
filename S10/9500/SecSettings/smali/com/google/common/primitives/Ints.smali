.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    sget-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/16 v3, 0x30

    add-int/2addr v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/16 v2, 0x41

    add-int/2addr v2, v0

    const/16 v3, 0xa

    add-int v4, v3, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/16 v2, 0x61

    add-int/2addr v2, v0

    add-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static saturatedCast(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x80000000

    return v0

    :cond_1
    long-to-int v0, p0

    return v0
.end method

.class Lcom/android/internal/widget/RandomString;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rand(II)I
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-gez v2, :cond_0

    neg-int v2, v2

    :cond_0
    add-int v3, p0, v2

    return v3
.end method

.method public static randomstring()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/internal/widget/RandomString;->randomstring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomstring(II)Ljava/lang/String;
    .locals 6

    invoke-static {p0, p1}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const/16 v4, 0x30

    const/16 v5, 0x39

    invoke-static {v4, v5}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x61

    const/16 v5, 0x7a

    invoke-static {v4, v5}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

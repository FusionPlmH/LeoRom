.class Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;
.super Ljava/lang/Object;
.source "StateColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/circle/StateColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field final state:I

.field final viewType:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;


# direct methods
.method public constructor <init>(Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;->viewType:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    iput p2, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;->state:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;->viewType:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    iget-object v4, v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;->viewType:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;->state:I

    iget v4, v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;->state:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;->viewType:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->hashCode()I

    move-result v1

    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/samsung/android/visualeffect/circle/StateColorManager$Key;->state:I

    add-int/2addr v2, v3

    return v2
.end method
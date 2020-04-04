.class public Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;
.super Ljava/lang/Object;
.source "MultiDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedMetaDataValue"
.end annotation


# instance fields
.field data:I

.field unit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimensionPixelSize(Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;III)I
    .locals 5

    iget v0, p0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->data:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->data:I

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iget v1, p0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->unit:I

    const v2, 0x3bcccccd    # 0.00625f

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int v1, v0, p1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    :pswitch_1
    mul-int v1, v0, p1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    :pswitch_2
    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    mul-int v1, p2, v0

    int-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v1, v3

    double-to-int v1, v1

    return v1

    :cond_1
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isFullscreen(Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->data:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->data:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseMetaData(Ljava/lang/String;)Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;
    .locals 5

    new-instance v0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;-><init>()V

    const-string v1, "\\D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    aput-object v3, v1, v2

    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v2, v0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->unit:I

    goto :goto_0

    :cond_1
    const-string v4, "PX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v2, v0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->unit:I

    goto :goto_0

    :cond_2
    const-string v4, "SP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    iput v4, v0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->unit:I

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    iput v4, v0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->unit:I

    :goto_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->data:I

    return-object v0
.end method

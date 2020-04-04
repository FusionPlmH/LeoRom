.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    const/16 v1, 0x8

    if-eq p0, v1, :cond_2

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>()V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    move-object v0, v1

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createClipBoardData(Landroid/os/Parcel;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>(Landroid/os/Parcel;)V

    move-object v0, v1

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

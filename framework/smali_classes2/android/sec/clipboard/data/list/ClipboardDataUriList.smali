.class public Landroid/sec/clipboard/data/list/ClipboardDataUriList;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataUriList.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final serialVersionUID:J = 0x1L


# instance fields
.field protected mUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardData;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-virtual {v3, v1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setUriList(Ljava/util/ArrayList;)Z

    return-object v0
.end method

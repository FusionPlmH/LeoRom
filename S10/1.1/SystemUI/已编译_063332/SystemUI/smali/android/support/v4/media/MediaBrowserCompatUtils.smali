.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_2

    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_4

    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_5

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9

    const/4 v0, -0x1

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    if-nez p0, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_2
    if-nez p1, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :goto_3
    const/4 v5, 0x1

    if-eq v1, v0, :cond_5

    if-ne v3, v0, :cond_4

    goto :goto_4

    :cond_4
    mul-int v6, v3, v1

    add-int v7, v6, v3

    sub-int/2addr v7, v5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x0

    const v7, 0x7fffffff

    :goto_5
    nop

    if-eq v2, v0, :cond_7

    if-ne v4, v0, :cond_6

    goto :goto_6

    :cond_6
    mul-int v0, v4, v2

    add-int v8, v0, v4

    sub-int/2addr v8, v5

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v0, 0x0

    const v8, 0x7fffffff

    :goto_7
    nop

    if-lt v7, v0, :cond_8

    if-lt v8, v6, :cond_8

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    return v5
.end method

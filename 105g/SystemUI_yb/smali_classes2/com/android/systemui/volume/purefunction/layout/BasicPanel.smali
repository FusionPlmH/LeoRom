.class public Lcom/android/systemui/volume/purefunction/layout/BasicPanel;
.super Ljava/lang/Object;
.source "BasicPanel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPanelWindowWidth(ZIIIII)I
    .locals 2

    move v0, p1

    if-eqz p0, :cond_1

    if-le p1, p3, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_1
    if-le p1, p4, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    move v0, v1

    :goto_2
    mul-int/lit8 v1, p5, 0x2

    sub-int v1, v0, v1

    return v1
.end method

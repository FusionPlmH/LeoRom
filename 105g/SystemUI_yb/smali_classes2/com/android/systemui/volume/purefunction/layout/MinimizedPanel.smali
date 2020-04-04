.class public Lcom/android/systemui/volume/purefunction/layout/MinimizedPanel;
.super Ljava/lang/Object;
.source "MinimizedPanel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmallDialogSidePadding(IIIII)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    add-int v0, p3, p2

    goto :goto_0

    :cond_0
    sub-int v1, p0, p1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, p4

    add-int v0, v1, p2

    :goto_0
    return v0
.end method

.class public abstract Landroid/support/design/internal/SeslAbsIndicatorView;
.super Landroid/view/View;
.source "SeslAbsIndicatorView.java"


# instance fields
.field mIndicatorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method abstract onHide()V
.end method

.method abstract onPressed()V
.end method

.method abstract onReleased()V
.end method

.method abstract onSetSelectedIndicatorColor(I)V
.end method

.method abstract onShow()V
.end method

.method public setHide()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslAbsIndicatorView;->onHide()V

    return-void
.end method

.method public setHideImmediatly()V
    .locals 0

    return-void
.end method

.method public setPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslAbsIndicatorView;->onPressed()V

    return-void
.end method

.method public setReleased()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslAbsIndicatorView;->onReleased()V

    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .locals 1

    iput p1, p0, Landroid/support/design/internal/SeslAbsIndicatorView;->mIndicatorColor:I

    iget v0, p0, Landroid/support/design/internal/SeslAbsIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslAbsIndicatorView;->onSetSelectedIndicatorColor(I)V

    return-void
.end method

.method public setShow()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslAbsIndicatorView;->onShow()V

    return-void
.end method

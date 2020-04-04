.class public Lcom/samsung/android/settings/widget/SecBottomScrollView;
.super Landroid/widget/ScrollView;
.source "SecBottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    invoke-interface {v2}, Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;->onBottomReached()V

    :cond_0
    return-void
.end method

.method public getOnBottomReachedListener()Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    invoke-interface {v2}, Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;->onBottomReached()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setOnBottomReachedListener(Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    return-void
.end method

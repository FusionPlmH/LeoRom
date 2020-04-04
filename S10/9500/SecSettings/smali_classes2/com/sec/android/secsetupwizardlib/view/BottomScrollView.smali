.class public Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "BottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;
    }
.end annotation


# instance fields
.field private isBottomReached:Z

.field mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    return-void
.end method


# virtual methods
.method public getOnBottomReachedListener()Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;

    return-object v0
.end method

.method public isBottomReached()Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    return v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;

    invoke-interface {v0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;->onBottomReached()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setOnBottomReachedListener(Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;

    return-void
.end method

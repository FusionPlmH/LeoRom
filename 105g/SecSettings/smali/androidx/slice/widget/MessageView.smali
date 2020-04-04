.class public Landroidx/slice/widget/MessageView;
.super Landroidx/slice/widget/SliceChildView;
.source "MessageView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mDetails:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroidx/slice/widget/SliceChildView;->onFinishInflate()V

    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroidx/slice/widget/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/MessageView;->mDetails:Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroidx/slice/widget/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/slice/widget/MessageView;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public resetView()V
    .locals 0

    return-void
.end method

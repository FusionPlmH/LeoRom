.class public Landroid/support/v7/util/SeslShowButtonBackgroundHelper;
.super Ljava/lang/Object;
.source "SeslShowButtonBackgroundHelper.java"


# instance fields
.field private mBackgroundOff:Landroid/graphics/drawable/Drawable;

.field private mBackgroundOn:Landroid/graphics/drawable/Drawable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public setBackgroundOff(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    const-string v0, "SeslSBBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "is same drawable with mBackgroundOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBackgroundOn(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public updateButtonBackground()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    iget-object v1, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateOverflowButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    return-void
.end method

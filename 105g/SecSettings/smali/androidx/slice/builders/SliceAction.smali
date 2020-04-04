.class public Landroidx/slice/builders/SliceAction;
.super Ljava/lang/Object;
.source "SliceAction.java"

# interfaces
.implements Landroidx/slice/core/SliceAction;


# instance fields
.field private mSliceAction:Landroidx/slice/core/SliceActionImpl;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1, p2, p3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    iput-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-void
.end method


# virtual methods
.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result v0

    return v0
.end method

.method public getImpl()Landroidx/slice/core/SliceActionImpl;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-object v0
.end method

.method public isToggle()Z
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    return v0
.end method

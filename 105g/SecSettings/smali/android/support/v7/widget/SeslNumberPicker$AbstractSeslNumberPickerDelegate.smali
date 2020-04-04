.class abstract Landroid/support/v7/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;
.super Ljava/lang/Object;
.source "SeslNumberPicker.java"

# interfaces
.implements Landroid/support/v7/widget/SeslNumberPicker$SeslNumberPickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractSeslNumberPickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDelegator:Landroid/support/v7/widget/SeslNumberPicker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslNumberPicker;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iput-object p2, p0, Landroid/support/v7/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.class public Landroid/support/v7/widget/SeslDatePicker$LunarDate;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarDate"
.end annotation


# instance fields
.field public day:I

.field public isLeapMonth:Z

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->year:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->month:I

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->day:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method


# virtual methods
.method public set(IIIZ)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->year:I

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->month:I

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->day:I

    iput-boolean p4, p0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    return-void
.end method

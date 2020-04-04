.class abstract Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "SeslTimePicker.java"

# interfaces
.implements Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/support/v7/widget/SeslTimePicker;

.field protected mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;

.field protected mOnTimeChangedListener:Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/support/v7/widget/SeslTimePicker;

    iput-object p2, p0, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    return-void
.end method

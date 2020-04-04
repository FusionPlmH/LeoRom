.class Landroid/support/design/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    return-void
.end method

.method static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Landroid/support/design/widget/ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

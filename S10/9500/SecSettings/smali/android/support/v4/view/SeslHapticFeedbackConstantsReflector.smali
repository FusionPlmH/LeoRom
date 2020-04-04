.class public Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;
.super Ljava/lang/Object;
.source "SeslHapticFeedbackConstantsReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;,
        Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;,
        Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/view/HapticFeedbackConstants;

    sput-object v0, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->mClass:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;-><init>(Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->IMPL:Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;-><init>(Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->IMPL:Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static semGetVibrationIndex(I)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->IMPL:Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;->semGetVibrationIndex(I)I

    move-result v0

    return v0
.end method

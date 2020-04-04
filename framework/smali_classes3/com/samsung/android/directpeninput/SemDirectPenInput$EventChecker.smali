.class Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventChecker"
.end annotation


# static fields
.field static action:I

.field static x:F

.field static y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    sput v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDuplicated(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, -0x1

    sput v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    if-ne v1, v4, :cond_2

    sget v4, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_2

    sget v4, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    sput v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->action:I

    sput v2, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->x:F

    sput v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->y:F

    return v0
.end method

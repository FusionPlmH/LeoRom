.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;ZLandroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;->f$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    iput-boolean p2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;->f$2:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;->f$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    iget-boolean v1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;->f$1:Z

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;->f$2:Landroid/view/MotionEvent;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->lambda$bypassEvent$1(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;ZLandroid/view/MotionEvent;)V

    return-void
.end method

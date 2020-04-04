.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeoGestureDetector"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public aVibrator(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureVibratorEnable:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureVibratorLevel:I

    invoke-static {p1, v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v4, v0, v1

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    const/high16 v7, 0x43160000    # 150.0f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    sub-float v4, v3, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureRightSlide:I

    invoke-static {v4, v5, v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->aVibrator(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sub-float v4, v1, v0

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    sub-float v4, v3, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureLeftSlide:I

    invoke-static {v4, v5, v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->aVibrator(Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 v4, 0x0

    return v4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->aVibrator(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureLongPress:I

    invoke-static {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

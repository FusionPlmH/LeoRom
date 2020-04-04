.class public Lcom/android/systemui/fusionleo/LeoFloatBall;
.super Landroid/widget/LinearLayout;
.source "LeoFloatBall.java"

# interfaces
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# static fields
.field private static final CLICK_LIMIT:J = 0xc8L

.field private static final LONG_CLICK_LIMIT:J = 0x12cL

.field private static final MODE_DOWN:I = 0x1

.field private static final MODE_GONE:I = 0x6

.field private static final MODE_LEFT:I = 0x3

.field private static final MODE_MOVE:I = 0x5

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_RIGHT:I = 0x4

.field private static final MODE_UP:I = 0x2

.field private static final OFFSET:I = 0x1e

.field private static final REMOVE_LIMIT:J = 0x5dcL

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public BallIcon:[Landroid/graphics/drawable/Drawable;

.field private mBigBallX:F

.field private mBigBallY:F

.field public mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mImgBg:Landroid/widget/ImageView;

.field private mImgBigBall:Landroid/widget/ImageView;

.field private mIsLongTouch:Z

.field private mIsTouching:Z

.field private mLastDownTime:J

.field private mLastDownX:F

.field private mLastDownY:F

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOffsetToParent:I

.field private mOffsetToParentY:I

.field private mRemoveBall:I

.field private mStatusBarHeight:I

.field private mTouchSlop:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/fusionleo/LeoFloatBall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fusionleo/LeoFloatBall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x12

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "tw_leo_tweaks"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ball_1"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ball_2"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "ball_3"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "ball_4"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "ball_6"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "ball_0"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "ball_7"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "ball_8"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "ball_9"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "ball_10"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "ball_11"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "ball_12"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "ball_14"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "ball_15"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, "ball_16"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "ball_17"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, "ball_18"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->BallIcon:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->initView()V

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->updateSetting()V

    return-void
.end method

.method private doGesture(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownY:F

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mTouchSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mTouchSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    cmpl-float v2, v0, v4

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    iput v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallX:F

    add-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallY:F

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    return-void

    :cond_3
    iput v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallX:F

    sub-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallY:F

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_1

    :cond_4
    cmpl-float v2, v1, v4

    if-lez v2, :cond_7

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x6

    if-ne v2, v4, :cond_5

    goto :goto_0

    :cond_5
    iput v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallX:F

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallY:F

    add-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    new-instance v2, Lcom/android/systemui/fusionleo/-$$Lambda$LeoFloatBall$fiTrgU4N1DuLNqw0l7y6jAWUVnc;

    invoke-direct {v2, p0}, Lcom/android/systemui/fusionleo/-$$Lambda$LeoFloatBall$fiTrgU4N1DuLNqw0l7y6jAWUVnc;-><init>(Lcom/android/systemui/fusionleo/LeoFloatBall;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/fusionleo/LeoFloatBall;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    return-void

    :cond_8
    iput v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallX:F

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallY:F

    sub-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    :goto_1
    return-void
.end method

.method private doUp()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    const/16 v3, 0xcb

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallRightAction:I

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v2, v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/fusionleo/LeoFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallLeftAction:I

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v2, v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/fusionleo/LeoFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallUPAction:I

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const/16 v3, 0xc9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/fusionleo/LeoFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallDownAction:I

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    const/16 v3, 0xca

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/fusionleo/LeoFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallX:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallY:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout/leo_floating"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->getLeoFloatResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "leo_floating_bg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    const-string v0, "leo_floating_img"

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mTouchSlop:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/widget/Until;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mStatusBarHeight:I

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mOffsetToParent:I

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mStatusBarHeight:I

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mOffsetToParent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mOffsetToParentY:I

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/fusionleo/-$$Lambda$LeoFloatBall$hrrjfERgtlOfxSjwOwNIYNpdQIc;

    invoke-direct {v1, p0}, Lcom/android/systemui/fusionleo/-$$Lambda$LeoFloatBall$hrrjfERgtlOfxSjwOwNIYNpdQIc;-><init>(Lcom/android/systemui/fusionleo/LeoFloatBall;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/fusionleo/-$$Lambda$LeoFloatBall$KXZgJE-xnjs6G0scgwEtAxOLFBg;

    invoke-direct {v1, p0}, Lcom/android/systemui/fusionleo/-$$Lambda$LeoFloatBall$KXZgJE-xnjs6G0scgwEtAxOLFBg;-><init>(Lcom/android/systemui/fusionleo/LeoFloatBall;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isClick(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mTouchSlop:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    cmpg-float v6, v0, v6

    if-gez v6, :cond_0

    mul-float v4, v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private isLongTouch()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsTouching:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mTouchSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mTouchSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private toRemove()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mRemoveBall:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->Vibrate(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->removeBallView(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateAction(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->Vibrate(Landroid/content/Context;)V

    move v0, p2

    if-gtz v0, :cond_0

    move v0, p4

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private updateSetting()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->doUp()V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallDownSlideDelete:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mRemoveBall:I

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->BallIcon:[Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallIconStyle:I

    aget-object v0, v0, v1

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallAlpha:I

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallIconSize:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoFloatBall;->setViewSize(F)V

    return-void
.end method


# virtual methods
.method public CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public Vibrate(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallVibratorEnabled:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallVibratorLevel:I

    invoke-static {p1, v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method

.method public dip2px(F)I
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getLeoFloatResource(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$doGesture$3$LeoFloatBall()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsTouching:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->toRemove()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$0$LeoFloatBall()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallX:F

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallY:F

    return-void
.end method

.method public synthetic lambda$initView$2$LeoFloatBall(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsLongTouch:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/fusionleo/LeoFloatBall;->isTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsLongTouch:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mOffsetToParent:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mOffsetToParentY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallX:F

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mBigBallY:F

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/fusionleo/LeoFloatBall;->doGesture(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsTouching:Z

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsLongTouch:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsLongTouch:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/systemui/fusionleo/LeoFloatBall;->isClick(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallClickAction:I

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/16 v5, 0xc8

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/systemui/fusionleo/LeoFloatBall;->updateAction(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->doUp()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mCurrentMode:I

    goto :goto_1

    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsTouching:Z

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mImgBigBall:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownTime:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLastDownY:F

    new-instance v0, Lcom/android/systemui/fusionleo/-$$Lambda$LeoFloatBall$rTD5xGjhmsvmGT0kxzyw6FfqdJ8;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/-$$Lambda$LeoFloatBall$rTD5xGjhmsvmGT0kxzyw6FfqdJ8;-><init>(Lcom/android/systemui/fusionleo/LeoFloatBall;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/fusionleo/LeoFloatBall;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :goto_1
    return v2
.end method

.method public synthetic lambda$null$1$LeoFloatBall()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->isLongTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mIsLongTouch:Z

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->Vibrate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;->updateSetting()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I\'m from China"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "developer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/fusionleo/LeoFloatBall;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 2
        0x73s
        0x61s
        0x6cs
        0x74s
    .end array-data
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoFloatBall;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public setViewSize(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->setScaleX(F)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/fusionleo/LeoFloatBall;->setScaleY(F)V

    return-void
.end method

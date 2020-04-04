.class public Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
.super Landroid/widget/FrameLayout;
.source "MultiWindowGuideWindow.java"


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG:Z = true

.field public static final STATE_DOCKING:I = 0x3

.field public static final STATE_NONE:I = -0x1

.field public static final STATE_NOT_SUPPORT:I = 0x2

.field public static final STATE_RESIZE:I = 0x0

.field public static final STATE_WARNING:I = 0x1

.field public static final STROKE_RESIZE:I = 0x4

.field public static final STROKE_WARNING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MultiWindowGuideWindow"


# instance fields
.field private mAttached:Z

.field private mBounds:Landroid/graphics/Rect;

.field private mColor:[I

.field private mColorView:Landroid/widget/ImageView;

.field private mIsScreenCornerR:Z

.field private mNotSupportView:Landroid/widget/ImageView;

.field private mState:I

.field private mStrokeWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mIsScreenCornerR:Z

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const v2, 0x403bbfeb

    aput v2, v1, v0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v1, 0x1

    const v2, 0x40ff8585

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v1, 0x4

    const v2, -0x33c44015    # -4.9217452E7f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v1, 0x5

    const v2, -0x33007a7b

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_CORNER_R"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mIsScreenCornerR:Z

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "GuideWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0xa2a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x10318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method private refreshUI()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v4, 0x5

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    aget v2, v4, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    nop

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGuideState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    return v0
.end method

.method public initialize()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mContext:Landroid/content/Context;

    const v3, 0x10807e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    :cond_2
    return-void
.end method

.method public isAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    return v0
.end method

.method public setGuideState(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setGuideWindowShapeWhenDocking(I)V
    .locals 13

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mIsScreenCornerR:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    move v1, v0

    move v2, v0

    move v3, v0

    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mContext:Landroid/content/Context;

    const v6, 0x10807e8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    const/16 v5, 0x8

    if-eq p1, v5, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    nop

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    iget-object v8, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    aget v4, v8, v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v7

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x0

    neg-int v9, v0

    neg-int v10, v2

    neg-int v11, v3

    neg-int v12, v1

    move-object v7, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object v7, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGuideWindowShapeWhenNotSupport()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mIsScreenCornerR:Z

    if-eqz v2, :cond_0

    const v2, 0x10807e7

    goto :goto_0

    :cond_0
    const v2, 0x10807e6

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public show(Landroid/graphics/Rect;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    neg-int v1, v1

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

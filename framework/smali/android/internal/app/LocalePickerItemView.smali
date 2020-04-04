.class public Landroid/internal/app/LocalePickerItemView;
.super Landroid/widget/LinearLayout;
.source "LocalePickerItemView.java"


# static fields
.field public static final LOCALE_PICKER_TYPE_HEADER:I = 0x0

.field public static final LOCALE_PICKER_TYPE_ITEM:I = 0x1

.field static final TAG:Ljava/lang/String; = "LocalePickerItemView"


# instance fields
.field mBottomLeftStroke:Landroid/graphics/drawable/Drawable;

.field mBottomRightStroke:Landroid/graphics/drawable/Drawable;

.field mBottomStroke:Landroid/graphics/drawable/Drawable;

.field mIsStrokeRoundedCorner:Z

.field mItemType:I

.field mOutlineBounds:Landroid/graphics/Rect;

.field mOutlineLeftStroke:Landroid/graphics/drawable/Drawable;

.field mOutlineRightStroke:Landroid/graphics/drawable/Drawable;

.field mRes:Landroid/content/res/Resources;

.field mRoundRadius:I

.field mRoundStrokeHeight:I

.field mRoundedCornerBounds:Landroid/graphics/Rect;

.field mRoundedCornerMode:I

.field mTheme:Landroid/content/res/Resources$Theme;

.field mTopLeftStroke:Landroid/graphics/drawable/Drawable;

.field mTopRightStroke:Landroid/graphics/drawable/Drawable;

.field mTopStroke:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTheme:Landroid/content/res/Resources$Theme;

    iput-boolean p4, p0, Landroid/internal/app/LocalePickerItemView;->mIsStrokeRoundedCorner:Z

    iput p2, p0, Landroid/internal/app/LocalePickerItemView;->mItemType:I

    invoke-direct {p0, p3}, Landroid/internal/app/LocalePickerItemView;->init(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private drawOutlineStroke(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Landroid/internal/app/LocalePickerItemView;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/internal/app/LocalePickerItemView;->mItemType:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineLeftStroke:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineRightStroke:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineLeftStroke:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundStrokeHeight:I

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineLeftStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineRightStroke:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundStrokeHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineRightStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "LocalePickerItemView"

    const-string v1, "Outline Stroke Drawable was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Landroid/internal/app/LocalePickerItemView;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerMode:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopStroke:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomStroke:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopLeftStroke:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopRightStroke:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomLeftStroke:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomRightStroke:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget v0, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopStroke:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/internal/app/LocalePickerItemView;->mRoundStrokeHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopLeftStroke:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopLeftStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopRightStroke:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mTopRightStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget v0, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomStroke:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundStrokeHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomLeftStroke:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomLeftStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v0, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomRightStroke:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/internal/app/LocalePickerItemView;->mBottomRightStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string v0, "LocalePickerItemView"

    const-string v1, "Stroke Drawable was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method private init(Landroid/view/LayoutInflater;)V
    .locals 5

    iget v0, p0, Landroid/internal/app/LocalePickerItemView;->mItemType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x109008f

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x109008d

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/internal/app/LocalePickerItemView;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_ROUNDED_CORNER_RADIUS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/internal/app/LocalePickerItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundRadius:I

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRes:Landroid/content/res/Resources;

    const v3, 0x10502ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/internal/app/LocalePickerItemView;->mRoundStrokeHeight:I

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRes:Landroid/content/res/Resources;

    const v3, 0x10808df

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mTopStroke:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mBottomStroke:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineRightStroke:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mOutlineLeftStroke:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRes:Landroid/content/res/Resources;

    const v3, 0x10808e0

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mTopLeftStroke:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRes:Landroid/content/res/Resources;

    const v3, 0x10808e1

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mTopRightStroke:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRes:Landroid/content/res/Resources;

    const v3, 0x10808dd

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mBottomLeftStroke:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mRes:Landroid/content/res/Resources;

    const v3, 0x10808de

    iget-object v4, p0, Landroid/internal/app/LocalePickerItemView;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/internal/app/LocalePickerItemView;->mBottomRightStroke:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/internal/app/LocalePickerItemView;->drawOutlineStroke(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/internal/app/LocalePickerItemView;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRoundedCorners(I)V
    .locals 0

    iput p1, p0, Landroid/internal/app/LocalePickerItemView;->mRoundedCornerMode:I

    return-void
.end method

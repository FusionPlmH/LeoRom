.class Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "SeslIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# instance fields
.field private mAdditionalSpace:I

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mBgTintColor:I

.field private mBigText:Ljava/lang/String;

.field private mContentMinHeight:F

.field private mContentPadding:I

.field private mContext:Landroid/content/Context;

.field private mDotHeight:I

.field mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

.field private mHeight:I

.field private mIndexScrollPreviewRadius:F

.field private mIsAlphabetInit:Z

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mPreviewLimitY:F

.field private mScreenHeight:I

.field private mScrollBottom:I

.field private mScrollBottomMargin:I

.field private mScrollThumbAdditionalHeight:I

.field private mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollThumbBgRect:Landroid/graphics/Rect;

.field private mScrollThumbBgRectHeight:I

.field private mScrollThumbBgRectPadding:I

.field private mScrollTop:I

.field private mScrollTopMargin:I

.field mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

.field private mSelectedIndex:I

.field private mSeparatorHeight:F

.field private mSmallText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mWidth:I

.field private mWidthShift:I

.field final synthetic this$0:Landroid/support/v7/widget/SeslIndexScrollView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/content/Context;III)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    iput p3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iput p4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    iput p5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput-object p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    return v0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    return p1
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$302(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;IF)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v0

    return v0
.end method

.method private adjustSeparatorHeight()V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$700(Landroid/support/v7/widget/SeslIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v3, v1

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v5

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v3, v1

    const-wide v5, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v5

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v7

    int-to-double v7, v1

    sub-double/2addr v3, v7

    double-to-float v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v3, v1

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v5

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iput v3, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v3, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    :cond_4
    :goto_1
    return-void
.end method

.method private allocateBgRectangle()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v4, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v0, v4, v1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v4, v5

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-direct {v1, v0, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-virtual {v1, v0, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbAdditionalHeight:I

    add-int/2addr v1, v5

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v1

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1000(Landroid/support/v7/widget/SeslIndexScrollView;)F

    move-result v1

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1000(Landroid/support/v7/widget/SeslIndexScrollView;)F

    move-result v2

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v3, v5

    if-gt v2, v3, :cond_3

    :cond_2
    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-lt v3, v5, :cond_4

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v1, v3, v5

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v2, v3, v5

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v1, v3, v5

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int v2, v1, v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v2, v3, v5

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v1, v2, v3

    :cond_6
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    if-nez v3, :cond_7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    goto :goto_3

    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    return-void
.end method

.method private calcDotPosition(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int v2, v2, p2

    const/4 v4, 0x0

    iget v5, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int v5, v5, p3

    const/4 v6, 0x0

    move/from16 v7, p3

    :goto_0
    if-ge v7, v5, :cond_0

    iget-object v8, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    sub-int v9, v7, p3

    iget-object v10, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v10, v10, v7

    aput-object v10, v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    move v7, v6

    move v6, v4

    move/from16 v4, p4

    :goto_1
    iget v8, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget v9, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_19

    iget-object v8, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_19

    sub-int v8, v2, v4

    div-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iget v11, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v12, 0x0

    if-ge v11, v9, :cond_a

    if-nez v7, :cond_a

    iget v11, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v11, v11, [Ljava/lang/String;

    iget v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v13, v10

    iput v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v13, v10

    iput v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v6, v6, 0x1

    iget v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v13, v10

    div-int v13, v8, v13

    add-int/2addr v13, v10

    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ne v14, v9, :cond_1

    const/4 v13, 0x2

    :cond_1
    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    nop

    :goto_2
    if-eqz v14, :cond_9

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-eq v14, v10, :cond_2

    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    :cond_2
    move/from16 v10, p3

    :goto_3
    if-ge v10, v5, :cond_3

    sub-int v16, v10, p3

    move/from16 v17, v2

    iget-object v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v2, v2, v10

    aput-object v2, v11, v16

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v17

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    const/4 v2, 0x1

    :goto_4
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v5

    const/4 v5, 0x1

    add-int/2addr v10, v5

    if-ge v2, v10, :cond_8

    mul-int v10, v13, v2

    mul-int v15, v12, v2

    sub-int/2addr v10, v15

    if-le v3, v5, :cond_4

    add-int/lit8 v5, v3, -0x1

    add-int/2addr v10, v5

    :cond_4
    if-lez v10, :cond_5

    if-ge v10, v8, :cond_5

    const-string v5, "."

    aput-object v5, v11, v10

    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_5
    if-lt v10, v8, :cond_7

    if-lez v14, :cond_7

    div-int/lit8 v5, v13, 0x2

    sub-int v5, v10, v5

    if-ge v5, v8, :cond_6

    div-int/lit8 v5, v13, 0x2

    sub-int v5, v10, v5

    const-string v16, "."

    aput-object v16, v11, v5

    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x1

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v18

    goto :goto_4

    :cond_8
    move v10, v5

    move/from16 v2, v17

    move/from16 v5, v18

    goto :goto_2

    :cond_9
    move/from16 v17, v2

    move/from16 v18, v5

    iput-object v11, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    goto/16 :goto_c

    :cond_a
    move/from16 v17, v2

    move/from16 v18, v5

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v3

    sub-int/2addr v10, v4

    packed-switch v10, :pswitch_data_0

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v11, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v3

    sub-int/2addr v10, v4

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_7

    :pswitch_0
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :pswitch_1
    const/4 v11, 0x1

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_7

    :pswitch_2
    const/4 v11, 0x1

    if-eqz v3, :cond_b

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-nez v10, :cond_b

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    if-eqz v3, :cond_c

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ne v10, v11, :cond_c

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    :cond_c
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :pswitch_3
    if-lez v4, :cond_d

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_d
    if-lez v3, :cond_e

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x1

    goto :goto_7

    :cond_f
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v6, v6, 0x1

    :goto_7
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-lez v10, :cond_18

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ltz v10, :cond_18

    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    if-gez v10, :cond_10

    move/from16 v19, v2

    goto/16 :goto_d

    :cond_10
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x0

    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-lez v14, :cond_11

    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    div-int v11, v6, v14

    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    rem-int v13, v6, v14

    :cond_11
    nop

    :goto_8
    if-ge v12, v3, :cond_12

    iget-object v14, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v14, v14, v12

    aput-object v14, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_12
    move v12, v3

    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v14, v4

    move/from16 v16, v13

    move v13, v7

    move v7, v5

    move v5, v3

    :goto_9
    if-ge v5, v14, :cond_16

    move/from16 v19, v2

    iget-object v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ge v12, v2, :cond_15

    if-nez v7, :cond_13

    iget-object v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    add-int v20, v12, p3

    aget-object v2, v2, v20

    aput-object v2, v10, v5

    add-int/lit8 v12, v12, 0x1

    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ge v13, v2, :cond_15

    const/4 v2, 0x1

    :goto_a
    move v7, v2

    goto :goto_b

    :cond_13
    const-string v2, "."

    aput-object v2, v10, v5

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v11

    if-lez v16, :cond_14

    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v12, v12, 0x1

    :cond_14
    const/4 v2, 0x0

    goto :goto_a

    :cond_15
    :goto_b
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v19

    goto :goto_9

    :cond_16
    move/from16 v19, v2

    if-lez v4, :cond_17

    iget-object v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v5, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v5, v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    aget-object v2, v2, v5

    aput-object v2, v10, v14

    :cond_17
    iput-object v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move/from16 v7, v19

    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    nop

    move/from16 v2, v17

    move/from16 v5, v18

    goto/16 :goto_1

    :cond_18
    move/from16 v19, v2

    :goto_d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    return-void

    :cond_19
    move/from16 v17, v2

    move/from16 v18, v5

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v9, v6, v8

    sub-float/2addr v7, v9

    const-string v9, "."

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    iget-object v10, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    add-float/2addr v9, v3

    iget v8, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v8, v8

    add-float/2addr v3, v8

    goto :goto_2

    :cond_1
    mul-float v9, v5, v8

    iget-object v10, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    add-float/2addr v9, v3

    add-float/2addr v3, v5

    :goto_2
    iget-object v8, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v9, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1000(Landroid/support/v7/widget/SeslIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private getColorWithAlpha(IF)I
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method private getIndex(I)I
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float/2addr v1, v0

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v3, v2

    add-float/2addr v3, v0

    float-to-int v2, v3

    :goto_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v2, v3, :cond_2

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v2, v3, -0x1

    :cond_2
    :goto_1
    return v2
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndex(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_7

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-le v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_7
    :goto_1
    const-string v0, ""

    return-object v0

    :cond_8
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method private init()V
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$500(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    const-string v2, "sec-roboto-light"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$502(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$500(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    iput v8, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    iput v8, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_text_size:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextSize:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_margin_top:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_margin_bottom:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottom:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_margin_horizontal:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_content_padding:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_content_min_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_additional_touch_boundary:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_radius:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_ypos_limit:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    move-object v9, v0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v10, v0, v9, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v11

    new-instance v12, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;IIIFF)V

    iput-object v12, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    new-instance v12, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;IIIFF)V

    iput-object v12, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_thumb_padding:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_thumb_additional_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbAdditionalHeight:I

    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_dot_separator_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v11, v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_index_bar_thumb_shape:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslIndexScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iput v11, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {v0, v1, v9, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    sget v0, Landroid/support/v7/appcompat/R$color;->sesl_index_bar_text_color:I

    invoke-static {v7, v0, v10}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    sget v0, Landroid/support/v7/appcompat/R$color;->sesl_index_bar_background_tint_color:I

    invoke-static {v7, v0, v10}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgTintColor:I

    goto :goto_0

    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$color;->sesl_index_bar_text_color_dark:I

    invoke-static {v7, v0, v10}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    sget v0, Landroid/support/v7/appcompat/R$color;->sesl_index_bar_background_tint_color_dark:I

    invoke-static {v7, v0, v10}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgTintColor:I

    :goto_0
    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_index_bar_bg:I

    invoke-virtual {v7, v0, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgTintColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    return-void
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 5

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    if-gt p1, v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private manageIndexScrollHeight()V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$700(Landroid/support/v7/widget/SeslIndexScrollView;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v0, v1, :cond_2

    iput v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v1, v1

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslIndexScrollView;->access$800(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslAbsIndexer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslAbsIndexer;->isUseDigitIndex()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v1}, Landroid/support/v7/widget/SeslIndexScrollView;->access$700(Landroid/support/v7/widget/SeslIndexScrollView;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v3, v2, v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v3, v2, v2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private setBgRectParams()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->allocateBgRectangle()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawEffect(F)V
    .locals 5

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sub-float/2addr v1, v2

    :goto_0
    const v2, -0x39e3c400    # -9999.0f

    cmpl-float v3, p1, v0

    if-lez v3, :cond_1

    cmpg-float v3, p1, v1

    if-gez v3, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    cmpg-float v3, p1, v0

    if-gtz v3, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    cmpl-float v3, p1, v1

    if-ltz v3, :cond_3

    move v2, v1

    :cond_3
    :goto_1
    const v3, -0x39e3c400    # -9999.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslIndexScrollView;->access$900(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslIndexScrollView;->access$900(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;->onPressed(F)V

    :cond_4
    return-void
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->close()V

    :cond_1
    return-void
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_3

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v2

    if-le p1, v0, :cond_4

    :cond_3
    const-string v0, ""

    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_8

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_0
    const-string v0, ""

    return-object v0

    :cond_7
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_a

    :cond_9
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v1, :cond_b

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_b

    :cond_a
    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_c

    goto :goto_1

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_d
    :goto_1
    const-string v0, ""

    return-object v0

    :cond_e
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    return v0
.end method

.method public resetSelectedIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput p3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iput p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    :cond_1
    return-void
.end method

.method public setEffectText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    return-void
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->allocateBgRectangle()V

    return-void
.end method

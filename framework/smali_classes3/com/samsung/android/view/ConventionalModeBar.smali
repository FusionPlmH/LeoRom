.class public Lcom/samsung/android/view/ConventionalModeBar;
.super Landroid/widget/FrameLayout;
.source "ConventionalModeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/ConventionalModeBar$Info;,
        Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;
    }
.end annotation


# static fields
.field private static final CHANGE_RATIO_BUTTON_BACKGROUND_COLOR:I = -0x50506

.field private static final CHANGE_RATIO_BUTTON_TEXT_COLOR:I = -0x767677

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "AspectRatioController"


# instance fields
.field private mChangeRatioButton:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mConventionalModeBarSize:I

.field private mConventionalModeChangeGuide:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

.field private final mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

.field private mIsFillNavigationColor:Z

.field private final mOwner:Lcom/android/internal/policy/DecorView;

.field private final mPackageName:Ljava/lang/String;

.field private mRecomputedNavBarSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/view/ConventionalModeBar;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/view/ConventionalModeBar$Info;

    invoke-direct {v0}, Lcom/samsung/android/view/ConventionalModeBar$Info;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeChangeGuide:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mIsFillNavigationColor:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mRecomputedNavBarSize:I

    iput-object p1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mOwner:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/view/ConventionalModeBar;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/view/ConventionalModeBar;)Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeChangeGuide:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/view/ConventionalModeBar;Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeChangeGuide:Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/view/ConventionalModeBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/view/ConventionalModeBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/view/ConventionalModeBar;)Lcom/android/internal/policy/DecorView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mOwner:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/view/ConventionalModeBar;->SAFE_DEBUG:Z

    return v0
.end method

.method private layoutInnerView(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mIsFillNavigationColor:Z

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    iget-boolean v1, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    iget-boolean v1, v1, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    iput-boolean v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mIsFillNavigationColor:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mIsFillNavigationColor:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/view/ConventionalModeBar;->removeAllViews()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mChangeRatioButton:Landroid/widget/TextView;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/view/ConventionalModeBar;->makeChangeRatioButton()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mChangeRatioButton:Landroid/widget/TextView;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mChangeRatioButton:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/view/ConventionalModeBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mChangeRatioButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar;->mOwner:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeBarSize:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar;->mChangeRatioButton:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar;->mChangeRatioButton:Landroid/widget/TextView;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar;->mChangeRatioButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    iget v4, v4, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    iget-object v5, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    iget v5, v5, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    invoke-virtual {v3, v4, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar;->mChangeRatioButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    iget v4, v4, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    :goto_1
    return-void
.end method

.method private makeChangeRatioButton()Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0x50506

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v2, 0x10400d4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, -0x767677

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v2, "sec-roboto-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    new-instance v2, Lcom/samsung/android/view/ConventionalModeBar$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/view/ConventionalModeBar$1;-><init>(Lcom/samsung/android/view/ConventionalModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method


# virtual methods
.method public getRecomputedNavBarSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mRecomputedNavBarSize:I

    return v0
.end method

.method public layout(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/view/ConventionalModeBar;->mRecomputedNavBarSize:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar;->mRecomputedNavBarSize:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar;->mRecomputedNavBarSize:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/view/ConventionalModeBar;->layoutInnerView(I)V

    return-void
.end method

.method public setInfo(Lcom/samsung/android/view/ConventionalModeBar$Info;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    invoke-virtual {v0, p1}, Lcom/samsung/android/view/ConventionalModeBar$Info;->set(Lcom/samsung/android/view/ConventionalModeBar$Info;)V

    iput p2, p0, Lcom/samsung/android/view/ConventionalModeBar;->mConventionalModeBarSize:I

    sub-int v0, p3, p2

    iput v0, p0, Lcom/samsung/android/view/ConventionalModeBar;->mRecomputedNavBarSize:I

    return-void
.end method

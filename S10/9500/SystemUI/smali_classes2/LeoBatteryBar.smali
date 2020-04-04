.class public Lcom/android/systemui/fusionleo/LeoBatteryBar;
.super Landroid/widget/RelativeLayout;
.source "LeoBatteryBar.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# static fields
.field private static final ANIM_DURATION:I = 0x3e8

.field private static final BATTERY_LOW_VALUE:I = 0xf

.field public static final STYLE_REGULAR:I = 0x0

.field public static final STYLE_SYMMETRIC:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAnimating:Z

.field private mAnimOffset:I

.field private mAttached:Z

.field mBarGradient:Landroid/graphics/drawable/GradientDrawable;

.field mBatteryBar:Landroid/view/View;

.field mBatteryBarLayout:Landroid/widget/LinearLayout;

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field private mBatteryLowColorWarning:I

.field mCharger:Landroid/view/View;

.field mChargerLayout:Landroid/widget/LinearLayout;

.field private mChargingColor:I

.field private mChargingLevel:I

.field private mColor:I

.field public mContext:Landroid/content/Context;

.field mGradientColors:[I

.field private mHighColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLowColor:I

.field private shouldAnimateCharging:Z

.field private useGradientColor:Z

.field vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mAttached:Z

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLevel:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargingLevel:I

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryCharging:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->shouldAnimateCharging:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->isAnimating:Z

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mColor:I

    const v1, -0xff0100

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargingColor:I

    const v3, -0x9a00

    iput v3, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLowColorWarning:I

    const/high16 v3, -0x10000

    iput v3, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mLowColor:I

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mHighColor:I

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->useGradientColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->vertical:Z

    new-instance v1, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;-><init>(Lcom/android/systemui/fusionleo/LeoBatteryBar;)V

    iput-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mGradientColors:[I

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mGradientColors:[I

    iget v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mLowColor:I

    aput v4, v3, v0

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mHighColor:I

    aput v0, v3, v2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mGradientColors:[I

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBarGradient:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p3, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryCharging:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p3, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryCharging:Z

    iput-boolean p4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->vertical:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/LeoBatteryBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/fusionleo/LeoBatteryBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/fusionleo/LeoBatteryBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryCharging:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/fusionleo/LeoBatteryBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/fusionleo/LeoBatteryBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->setProgress(I)V

    return-void
.end method

.method private colorToRgb(I)[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x18

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    aput v1, v0, v2

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    aput v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method private mixColors(IIF)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->colorToRgb(I)[I

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->colorToRgb(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v1, v2

    invoke-direct {p0, v3, v4, p3}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mixedValue(IIF)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    aget v4, v1, v2

    invoke-direct {p0, v3, v4, p3}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mixedValue(IIF)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    aget v4, v1, v2

    invoke-direct {p0, v3, v4, p3}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mixedValue(IIF)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x3

    aget v3, v0, v2

    aget v4, v1, v2

    invoke-direct {p0, v3, v4, p3}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mixedValue(IIF)I

    move-result v3

    aput v3, v0, v2

    invoke-direct {p0, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->rgbToColor([I)I

    move-result v2

    return v2
.end method

.method private mixedValue(IIF)I
    .locals 3

    int-to-float v0, p1

    mul-float v0, v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    int-to-float v2, p2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private rgbToColor([I)I
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private setProgress(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->vertical:Z

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getHeight()I

    move-result v0

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    add-double/2addr v5, v1

    double-to-int v0, v5

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getWidth()I

    move-result v0

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    add-double/2addr v5, v1

    double-to-int v0, v5

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->useGradientColor:Z

    if-eqz v0, :cond_1

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mGradientColors:[I

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mHighColor:I

    iget v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mLowColor:I

    invoke-direct {p0, v3, v4, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mixColors(IIF)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBarGradient:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mGradientColors:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBarGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryCharging:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargingColor:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xf

    if-le p1, v1, :cond_3

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mColor:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLowColorWarning:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->isAnimating:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 12

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mAttached:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mAttached:Z

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBar:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBar:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    iget-boolean v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->vertical:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mCharger:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mCharger:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, v5, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarMainBattery:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_1

    aget-object v10, v6, v9

    invoke-static {v10}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->updateSettings()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarMainBattery:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->updateSettings()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->shouldAnimateCharging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->vertical:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->isAnimating:Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->isAnimating:Z

    return-void
.end method

.method public updateSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mColor:I

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarChargingColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargingColor:I

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarLowColorWarning:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLowColorWarning:I

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarAnimateCharging:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->shouldAnimateCharging:Z

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarLowColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mLowColor:I

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarHighColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mHighColor:I

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarGradientColorEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->useGradientColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryCharging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLevel:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->shouldAnimateCharging:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->stop()V

    :goto_0
    iget v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mCharger:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar;->mChargingColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

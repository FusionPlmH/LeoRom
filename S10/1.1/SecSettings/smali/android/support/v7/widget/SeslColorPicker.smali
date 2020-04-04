.class public Landroid/support/v7/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "SeslColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslColorPicker$PickedColor;,
        Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;
    }
.end annotation


# static fields
.field static sIsLightTheme:Z


# instance fields
.field private mColorDescription:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

.field private mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

.field private final mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsInputFromUser:Z

.field private mIsOpacityBarEnabled:Z

.field private mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

.field private mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

.field private mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field private mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private final mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private final mRecentColorValues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsInputFromUser:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    new-instance v1, Landroid/support/v7/widget/SeslColorPicker$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslColorPicker$6;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    move v0, v4

    nop

    :cond_0
    sput-boolean v0, Landroid/support/v7/widget/SeslColorPicker;->sIsLightTheme:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$layout;->sesl_color_picker_layout:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Landroid/support/v7/widget/SeslRecentColorInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslRecentColorInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecentColorInfo;->getRecentColorInfo()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->init()V

    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/widget/SeslColorPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsInputFromUser:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$PickedColor;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslColorPicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->updateCurrentColor()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslOpacitySeekBar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslColorPicker;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslColorPicker;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslColorPicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initCurrentColorView()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initGradientColorSeekBar()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initOpacitySeekBar()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initGradientColorWheel()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initRecentColorLayout()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->updateCurrentColor()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->setInitialColors()V

    return-void
.end method

.method private initCurrentColorView()V
    .locals 11

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_current_color_view:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_picked_color_view:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_current_color_text:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_picked_color_text:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x3f99999a    # 1.2f

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    iget-object v4, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v5, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_selected_color_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    cmpl-float v5, v3, v2

    if-lez v5, :cond_0

    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    float-to-double v7, v2

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    float-to-double v9, v2

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    sget v5, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_current_color_focus:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_picked_color_focus:I

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    iput-object v7, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v7, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v8, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v8}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v7, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v8, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_current:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v8, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_new:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGradientColorSeekBar()V
    .locals 4

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_gradient_seekbar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslGradientColorSeekBar;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_gradient_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->init(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    new-instance v2, Landroid/support/v7/widget/SeslColorPicker$2;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslColorPicker$2;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    new-instance v2, Landroid/support/v7/widget/SeslColorPicker$3;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslColorPicker$3;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_brightness:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_slider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_double_tap_to_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGradientColorWheel()V
    .locals 4

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_gradient_wheel:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslGradientColorWheel;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setColor(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    new-instance v1, Landroid/support/v7/widget/SeslColorPicker$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslColorPicker$1;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setOnColorWheelInterface(Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_hue_and_saturation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_wheel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_double_tap_to_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initOpacitySeekBar()V
    .locals 4

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslOpacitySeekBar;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_opacity_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->init(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    new-instance v1, Landroid/support/v7/widget/SeslColorPicker$4;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslColorPicker$4;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    new-instance v1, Landroid/support/v7/widget/SeslColorPicker$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslColorPicker$5;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_opacity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_slider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_double_tap_to_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRecentColorLayout()V
    .locals 6

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_used_color_item_list_layout:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_one:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_two:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_three:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_four:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_five:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_six:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    sget-boolean v2, Landroid/support/v7/widget/SeslColorPicker;->sIsLightTheme:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/support/v7/appcompat/R$color;->sesl_color_picker_used_color_item_empty_slot_color_light:I

    goto :goto_0

    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$color;->sesl_color_picker_used_color_item_empty_slot_color_dark:I

    :goto_0
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/support/v7/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private mapColorOnColorWheel(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setColor(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setColor(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->restoreColor(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->restoreColor(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getV()F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getAlpha()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setV(F)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslGradientColorWheel;->updateCursorColor(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setV(F)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    :cond_4
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_color_picker_used_color_item_slot:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x1

    new-array v5, v4, [[I

    new-array v6, v2, [I

    aput-object v6, v5, v2

    new-array v4, v4, [I

    aput v1, v4, v2

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v2, v3

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInitialColors()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method private updateCurrentColor()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->changeColorBase(I)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->changeColorBase(I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslGradientColorWheel;->updateCursorColor(I)V

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    return-object v0
.end method

.method public setOnColorChangedListener(Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    return-void
.end method

.method public setOpacityBarEnabled(Z)V
    .locals 5

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_gradient_wheel_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    nop

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    iget-object v4, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.class public Lcom/android/internal/widget/DirectionLockView;
.super Landroid/widget/RelativeLayout;
.source "DirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DirectionLockView$Direction;
    }
.end annotation


# static fields
.field public static DEFAULT_ARROW_SIZE:I

.field private static DIRECTION_TOLERANCE_ANGLE:D

.field public static FOUR_CONFIGURATION_MODE:Z


# instance fields
.field private ARROW_SIZE:I

.field private REFERENCE_SQUARE_DIMENSION:I

.field private SETTINGS_APP:Z

.field private TAG:Ljava/lang/String;

.field private final TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private currentErrorResId:I

.field private isParentArrowSize:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllow:Z

.field private mAllowDouble:Z

.field mBeepEast:Landroid/media/MediaPlayer;

.field mBeepNorth:Landroid/media/MediaPlayer;

.field mBeepSouth:Landroid/media/MediaPlayer;

.field mBeepWest:Landroid/media/MediaPlayer;

.field private mBlankBitmap:Landroid/graphics/Bitmap;

.field private mBottomY:D

.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mCurrentPassword:Ljava/lang/String;

.field private mCurrentPasswordNumbers:Ljava/lang/String;

.field private mDirectionBitmapDown:Landroid/graphics/Bitmap;

.field private mDirectionBitmapLeft:Landroid/graphics/Bitmap;

.field private mDirectionBitmapRight:Landroid/graphics/Bitmap;

.field private mDirectionBitmapUp:Landroid/graphics/Bitmap;

.field private mDirectionDetected:Z

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mDownAnnounce:Ljava/lang/String;

.field private final mDownChar:C

.field private final mDownNumber:I

.field private mErrorBitmap:Landroid/graphics/Bitmap;

.field private mForceRestart:Z

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInsideReferenceSquare:Z

.field private mLeftAnnounce:Ljava/lang/String;

.field private final mLeftChar:C

.field private final mLeftNumber:I

.field private mLeftX:D

.field private mParentArrowSize:I

.field private mPlayBeep:Z

.field private mPlayVibration:Z

.field private mPlayVoice:Z

.field private mRightAnnounce:Ljava/lang/String;

.field private final mRightChar:C

.field private final mRightNumber:I

.field private mRightX:D

.field private mScreenHeight:D

.field private mScreenWidth:D

.field private mShowArrow:Z

.field private mSquare_size:D

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTopY:D

.field private mTradeSpace:D

.field private mUpAnnounce:Ljava/lang/String;

.field private final mUpChar:C

.field private final mUpNumber:I

.field private mVibratePattern:I

.field private final mVibration_pattern_down:I

.field private final mVibration_pattern_left:I

.field private final mVibration_pattern_right:I

.field private final mVibration_pattern_up:I

.field private mVibrator:Landroid/os/Vibrator;

.field myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4056800000000000L    # 90.0

    sput-wide v0, Lcom/android/internal/widget/DirectionLockView;->DIRECTION_TOLERANCE_ANGLE:D

    const/16 v0, 0xb6

    sput v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/DirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "DirectionLockView"

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    const-string/jumbo v0, "tts_default_rate"

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

    const/16 v0, 0x55

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mUpChar:C

    const/16 v0, 0x44

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDownChar:C

    const/16 v0, 0x4c

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftChar:C

    const/16 v0, 0x52

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightChar:C

    const/16 v0, 0x31

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mUpNumber:I

    const/16 v0, 0x39

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftNumber:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightNumber:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDownNumber:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->REFERENCE_SQUARE_DIMENSION:I

    const v0, 0xc36b

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_up:I

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_down:I

    const v0, 0xc36f

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_right:I

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_left:I

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DirectionLockView$1;-><init>(Lcom/android/internal/widget/DirectionLockView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->initDirectionLockView()V

    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x1

    if-gt v0, p3, :cond_0

    if-le v1, p2, :cond_1

    :cond_0
    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v1, 0x2

    :goto_0
    div-int v5, v3, v2

    if-le v5, p3, :cond_1

    div-int v5, v4, v2

    if-le v5, p2, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v2
.end method

.method private calculateTradeSpace(DD)D
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in calculateTradeSpace()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p1, v0

    div-double v4, p3, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double v0, p1, v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method private createReferenceSquare(DDZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in createReferenceSquare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    sub-double v0, p1, v0

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p3, v0

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    if-eqz p5, :cond_3

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v6, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    sub-double/2addr v4, v6

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " eventY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLeftX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "  mRightX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mBottomY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mTopY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dipToPixels(D)D
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    double-to-float v1, p1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v1, v1

    return-wide v1
.end method

.method private freeBitmapMemory()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in freeBitmapMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->releaseDirectionBitmaps()V

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapFromResource start  reqWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reqHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  resid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/widget/DirectionLockView;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_5

    :try_start_0
    invoke-static {v2, p3, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    instance-of v1, v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v1, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource recycle"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    instance-of v1, v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v1, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :goto_2
    instance-of v5, v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v6, "getBitmapFromResource recycle"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_4
    throw v1

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource End"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private getDirectionImageView(IIZI)Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in getDirectionImageView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v0, :cond_0

    iput p4, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_2

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/DirectionLockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->invalidate()V

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v1
.end method

.method private initDirectionLockView()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in initDirectinLockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.SMT.KEY_PARAM"

    const-string v2, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->refreshScreenDimensions()V

    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1100007

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1100004

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1100006

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1100005

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_rate"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTextToSpeech Rate - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v3, 0x10402bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mUpAnnounce:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v3, 0x10402ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDownAnnounce:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v3, 0x10402bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftAnnounce:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v3, 0x10402bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightAnnounce:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/widget/DirectionLockView;->REFERENCE_SQUARE_DIMENSION:I

    int-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->dipToPixels(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    sget-wide v4, Lcom/android/internal/widget/DirectionLockView;->DIRECTION_TOLERANCE_ANGLE:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->calculateTradeSpace(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tradeSpace ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x10402b8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isVibrationSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadDirectionBitmaps(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in loadDirectionBitmaps()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v4, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    int-to-double v4, p1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->dipToPixels(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    iput v4, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    if-nez v4, :cond_1

    const v0, 0x10802cd

    const v3, 0x10802ce

    const v2, 0x10802cf

    const v1, 0x10802cc

    goto :goto_1

    :cond_1
    const v0, 0x10802d2

    const v3, 0x10802d4

    const v2, 0x10802d6

    const v1, 0x10802d0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v2, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    return-void
.end method

.method private refreshScreenDimensions()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in refreshScreenDimensions()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in refreshScreenDimensions() mScreenWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " mScreenHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseDirectionBitmaps()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    double-to-int v0, v0

    iget-wide v1, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    double-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCurrentPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPasswordNumbers()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    return-object v0
.end method

.method getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDirection() curX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " curY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " leftX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " rightX ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " topY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9, p10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " bottomY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p11, p12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_0

    cmpl-double v1, p1, p7

    if-ltz v1, :cond_0

    cmpg-double v1, p3, p9

    if-gtz v1, :cond_0

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto/16 :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_1

    cmpg-double v1, p1, p5

    if-gtz v1, :cond_1

    cmpg-double v1, p3, p9

    if-gtz v1, :cond_1

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto/16 :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_2

    cmpl-double v1, p1, p7

    if-ltz v1, :cond_2

    cmpl-double v1, p3, p11

    if-ltz v1, :cond_2

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_3

    cmpg-double v1, p1, p5

    if-gtz v1, :cond_3

    cmpl-double v1, p3, p11

    if-ltz v1, :cond_3

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_4

    cmpg-double v1, p1, p7

    if-gtz v1, :cond_5

    cmpl-double v1, p1, p5

    if-ltz v1, :cond_5

    :cond_4
    cmpg-double v1, p3, p9

    if-gez v1, :cond_5

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_6

    cmpg-double v1, p1, p7

    if-gtz v1, :cond_7

    cmpl-double v1, p1, p5

    if-ltz v1, :cond_7

    :cond_6
    cmpl-double v1, p3, p11

    if-lez v1, :cond_7

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_7
    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_8

    cmpg-double v1, p3, p11

    if-gtz v1, :cond_9

    cmpl-double v1, p3, p9

    if-ltz v1, :cond_9

    :cond_8
    cmpl-double v1, p1, p7

    if-lez v1, :cond_9

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_9
    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_a

    cmpg-double v1, p3, p11

    if-gtz v1, :cond_b

    cmpl-double v1, p3, p9

    if-ltz v1, :cond_b

    :cond_a
    cmpg-double v1, p1, p5

    if-gez v1, :cond_b

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    :cond_b
    :goto_0
    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    :cond_c
    return-object v0
.end method

.method public getDirectionImageView()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(I)Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(II)Landroid/widget/ImageView;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(III)Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in handleDirectionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " detected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    const-string v7, ""

    sget-object v8, Lcom/android/internal/widget/DirectionLockView$2;->$SwitchMap$com$android$internal$widget$DirectionLockView$Direction:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/DirectionLockView$Direction;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const v9, 0xc36b

    const v10, 0xc36f

    packed-switch v8, :pswitch_data_0

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "Invalid Direction !"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_0
    const/16 v8, 0x4c

    if-eq v8, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    move v3, v2

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    if-eqz v3, :cond_1a

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "L"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "9"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftAnnounce:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v0, v9}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v2, :cond_6

    iput v10, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_7
    const-string v7, "LEFT"

    goto/16 :goto_6

    :pswitch_1
    const/16 v8, 0x44

    if-eq v8, v4, :cond_8

    goto :goto_3

    :cond_8
    move v2, v0

    :goto_3
    move v3, v2

    if-nez v1, :cond_9

    if-nez p2, :cond_9

    if-eqz v3, :cond_1a

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "D"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "7"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mDownAnnounce:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v0, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v2, :cond_c

    iput v9, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    :cond_c
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_d
    const-string v7, "DOWN"

    goto/16 :goto_6

    :pswitch_2
    const/16 v8, 0x52

    if-eq v8, v4, :cond_e

    goto :goto_4

    :cond_e
    move v2, v0

    :goto_4
    move v3, v2

    if-nez v1, :cond_f

    if-nez p2, :cond_f

    if-eqz v3, :cond_1a

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "R"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "3"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mRightAnnounce:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v0, v9}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_10
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    :cond_11
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v2, :cond_12

    iput v10, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    :cond_12
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_13
    const-string v7, "RIGHT"

    goto :goto_6

    :pswitch_3
    const/16 v8, 0x55

    if-eq v8, v4, :cond_14

    goto :goto_5

    :cond_14
    move v2, v0

    :goto_5
    move v3, v2

    if-nez v1, :cond_15

    if-nez p2, :cond_15

    if-eqz v3, :cond_1a

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "U"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mUpAnnounce:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v0, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_16
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    :cond_17
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v2, :cond_18

    iput v9, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    :cond_18
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_19
    const-string v7, "UP"

    :cond_1a
    :goto_6
    if-nez v1, :cond_1c

    if-nez p2, :cond_1c

    if-eqz v3, :cond_1b

    goto :goto_7

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ignored"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_1c
    :goto_7
    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->isVibrationSupport()Z

    move-result v2

    if-nez v2, :cond_1e

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    :cond_1e
    iget-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0, v2, v6, v5, v8}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    iget-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v0, v7, v2}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    :cond_20
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onAttached()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->loadDirectionBitmaps(I)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->refreshScreenDimensions()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->freeBitmapMemory()V

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->isEnabled()Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_0

    return v14

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v15, 0x1

    if-eq v0, v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v15, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v0, :cond_2

    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-interface {v0}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionStarted()V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v11, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v9, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto/16 :goto_a

    :cond_3
    iget-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    if-nez v0, :cond_14

    iget-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v1, :cond_e

    iget-wide v1, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v3, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v1, v3

    cmpl-double v1, v11, v1

    if-ltz v1, :cond_4

    iget-wide v1, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpg-double v1, v11, v1

    if-gez v1, :cond_4

    iget-wide v1, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v1, v9, v1

    if-gtz v1, :cond_4

    iget-wide v1, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v3, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v1, v3

    cmpl-double v1, v9, v1

    if-ltz v1, :cond_4

    move v1, v15

    goto :goto_0

    :cond_4
    move v1, v14

    :goto_0
    iget-wide v2, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpl-double v2, v9, v2

    if-lez v2, :cond_5

    iget-wide v2, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v4, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v2, v4

    cmpg-double v2, v9, v2

    if-gtz v2, :cond_5

    iget-wide v2, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpl-double v2, v11, v2

    if-ltz v2, :cond_5

    iget-wide v2, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v4, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v2, v4

    cmpg-double v2, v11, v2

    if-gtz v2, :cond_5

    move v2, v15

    goto :goto_1

    :cond_5
    move v2, v14

    :goto_1
    iget-wide v3, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpg-double v3, v9, v3

    if-gez v3, :cond_6

    iget-wide v3, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v5, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v3, v5

    cmpl-double v3, v9, v3

    if-ltz v3, :cond_6

    iget-wide v3, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpl-double v3, v11, v3

    if-ltz v3, :cond_6

    iget-wide v3, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v5, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v3, v5

    cmpg-double v3, v11, v3

    if-gtz v3, :cond_6

    move v3, v15

    goto :goto_2

    :cond_6
    move v3, v14

    :goto_2
    iget-wide v4, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v6, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v4, v6

    cmpl-double v4, v11, v4

    if-ltz v4, :cond_7

    iget-wide v4, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpg-double v4, v11, v4

    if-gez v4, :cond_7

    iget-wide v4, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpl-double v4, v9, v4

    if-ltz v4, :cond_7

    iget-wide v4, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v6, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v4, v6

    cmpg-double v4, v9, v4

    if-gtz v4, :cond_7

    move v4, v15

    goto :goto_3

    :cond_7
    move v4, v14

    :goto_3
    iget-wide v5, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpl-double v5, v11, v5

    if-ltz v5, :cond_8

    iget-wide v5, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v5, v7

    cmpg-double v5, v11, v5

    if-gtz v5, :cond_8

    iget-wide v5, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpl-double v5, v9, v5

    if-ltz v5, :cond_8

    iget-wide v5, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v5, v7

    cmpg-double v5, v9, v5

    if-gtz v5, :cond_8

    move v5, v15

    goto :goto_4

    :cond_8
    move v5, v14

    :goto_4
    iget-wide v6, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v6, v11, v6

    if-gtz v6, :cond_9

    iget-wide v6, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v14, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v6, v14

    cmpl-double v6, v11, v6

    if-ltz v6, :cond_9

    iget-wide v6, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpg-double v6, v9, v6

    if-gez v6, :cond_9

    iget-wide v6, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v14, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v6, v14

    cmpl-double v6, v9, v6

    if-ltz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v7, v11, v7

    if-gtz v7, :cond_a

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v14, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v7, v14

    cmpl-double v7, v11, v7

    if-ltz v7, :cond_a

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpl-double v7, v9, v7

    if-ltz v7, :cond_a

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v14, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v7, v14

    cmpg-double v7, v9, v7

    if-gtz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    iget-wide v14, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpl-double v8, v11, v14

    if-ltz v8, :cond_b

    iget-wide v14, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move/from16 v16, v7

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v14, v7

    cmpg-double v7, v11, v14

    if-gtz v7, :cond_c

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v7, v9, v7

    if-gtz v7, :cond_c

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v14, v13, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v7, v14

    cmpl-double v7, v9, v7

    if-ltz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    move/from16 v16, v7

    :cond_c
    const/4 v7, 0x0

    :goto_7
    if-nez v1, :cond_d

    if-nez v2, :cond_d

    if-nez v3, :cond_d

    if-nez v4, :cond_d

    if-nez v5, :cond_d

    if-nez v6, :cond_d

    if-nez v16, :cond_d

    if-eqz v7, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    move v14, v0

    sget-object v15, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    if-nez v14, :cond_f

    iget-wide v5, v13, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v7, v13, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v3, v13, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v1, v13, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object v0, v13

    move-wide/from16 v16, v1

    move-wide v1, v11

    move-wide/from16 v18, v3

    move-wide v3, v9

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    move-wide/from16 v18, v11

    move-wide/from16 v11, v16

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/widget/DirectionLockView;->getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;

    move-result-object v15

    goto :goto_8

    :cond_f
    move-wide/from16 v20, v9

    move-wide/from16 v18, v11

    :goto_8
    sget-object v0, Lcom/android/internal/widget/DirectionLockView$2;->$SwitchMap$com$android$internal$widget$DirectionLockView$Direction:[I

    invoke-virtual {v15}, Lcom/android/internal/widget/DirectionLockView$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    invoke-virtual {v13, v15, v0}, Lcom/android/internal/widget/DirectionLockView;->handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V

    const/4 v5, 0x0

    move-object v0, v13

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DirectionLockView;->createReferenceSquare(DDZ)V

    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    goto :goto_9

    :pswitch_1
    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onTouchEvent() Diagonal Detected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-nez v0, :cond_10

    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v0, :cond_11

    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    const-string v1, "DIAGONAL"

    iget-boolean v2, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    :cond_11
    :goto_9
    nop

    const/4 v0, 0x1

    goto :goto_b

    :cond_12
    move-wide/from16 v20, v9

    move-wide/from16 v18, v11

    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    goto :goto_b

    :cond_13
    move-wide/from16 v20, v9

    move-wide/from16 v18, v11

    move v0, v15

    iput-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    const/4 v5, 0x1

    move-object v0, v13

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DirectionLockView;->createReferenceSquare(DDZ)V

    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onTouchEvent() ACTION_DOWN called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    const/4 v1, 0x0

    iput-boolean v1, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    goto :goto_b

    :cond_14
    :goto_a
    move v0, v15

    :goto_b
    return v0

    :cond_15
    :goto_c
    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onTouchEvent() ACTION_UP or ACTION_CANCEL called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v0, :cond_16

    iget-object v0, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    const-string v1, "FINGER_LIFT"

    iget-boolean v2, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reloadBitmap()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in reloadBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->releaseDirectionBitmaps()V

    iget-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->loadDirectionBitmaps(I)V

    :cond_1
    return-void
.end method

.method public resetPassword()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    return-void
.end method

.method public setAllow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in setAllow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    return-void
.end method

.method public setCurrentPassword(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_3

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x52

    if-eq v1, v2, :cond_1

    const/16 v2, 0x55

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    return-void
.end method

.method public setPlayBeep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    return-void
.end method

.method public setPlayVibration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    return-void
.end method

.method public setPlayVoice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    return-void
.end method

.method public setSettingsMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    return-void
.end method

.method public showDirectionArrow(C)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in showDirectionArrow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x55

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x4c

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x44

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showErrorImage()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in showErrorImage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x10802d3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x10802d5

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x10802d7

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x10802d1

    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v3, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

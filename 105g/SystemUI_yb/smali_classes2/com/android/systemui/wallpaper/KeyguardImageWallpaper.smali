.class public Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/tilt/Drawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;,
        Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    }
.end annotation


# static fields
.field public static final SUPPORT_MGS_LSS:Z


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurrentAlpha:I

.field private mCurrentUserId:I

.field private mCurrentWhich:I

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field mIsLand:Z

.field private mLastBottom:I

.field private mLastCommand:Ljava/lang/String;

.field private mLastMultipleWallpaperSwitchedTime:J

.field private mLastRight:I

.field private mOldBitmap:Landroid/graphics/Bitmap;

.field private mOldDrawMatrix:Landroid/graphics/Matrix;

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field private mSelectedUser:Landroid/os/UserHandle;

.field private mShouldEnableScreenRotation:Z

.field mSmartCroppedResult:Landroid/graphics/Rect;

.field private mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

.field private mUpdateWallpaperSequence:I

.field private mUseCache:Z

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperUpdator:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mygalaxystories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->SUPPORT_MGS_LSS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;IZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Z)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    const/16 v2, 0xff

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mIsLand:Z

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastCommand:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    const-string v0, "KeyguardImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardImageWallpaper: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , useCache = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const-string v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {p1}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    iput-boolean p5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/Drawer;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    new-instance v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "KeyguardImageWallpaper: recycle cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return v0
.end method

.method static synthetic access$004(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->applyOldBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->canRotate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateSmartCrop()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->init()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastCommand:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method private applyOldBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "set matrix to old"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "switch to new wallpaper immediately, not in interactive mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private canRotate()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->isLockScreenRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "lockscreen_wallpaper_transparent"

    sget-boolean v3, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "sub_display_lockscreen_wallpaper_transparency"

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->isCustom(Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->isEnabledMultiLockWallpaper()Z

    move-result v5

    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method private checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const-string v6, "KeyguardImageWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDeviceDensity deviceHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " deviceWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " deviceRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bitmapWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bitmapHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    if-eq v3, v6, :cond_0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    :cond_0
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_1
    const/4 v6, 0x0

    if-ge v2, v5, :cond_2

    if-ge v1, v4, :cond_2

    int-to-float v7, v2

    int-to-float v8, v5

    div-float/2addr v7, v8

    int-to-float v8, v1

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "KeyguardImageWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resize scale down.:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v7

    :cond_2
    return-object p1
.end method

.method private checkMultipleWallpaperOnCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isEnabledMultiLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KeyguardImageWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMultipleWallpaperOnCommand: skipped not multiple "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SCREEN_TURNED_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-wide v3, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    :cond_1
    return-void

    :cond_2
    const-string v0, "SCREEN_TURNED_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KeyguardImageWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMultipleWallpaperOnCommand: skipped not screen off "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->SUPPORT_MGS_LSS:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    const-string v6, "keyguard_mgs_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v8, v6, :cond_4

    const-string v0, "LSS"

    goto :goto_0

    :cond_4
    const-string v6, "dymlock_suspend_multiwallpaper_switching"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v8, v6, :cond_5

    const-string v0, "dynamic lock screen"

    :cond_5
    :goto_0
    move-object v6, v0

    if-eqz v6, :cond_6

    const-string v0, "KeyguardImageWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMultipleWallpaperOnCommand: skipped, switching suspended by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    return-void

    :cond_6
    move-wide v9, v3

    const-string v0, "lockreen_multiple_wallpaper_switched_time"

    const-wide/16 v11, 0x0

    invoke-static {v5, v0, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    iget-wide v7, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_7

    const-string v0, "KeyguardImageWallpaper"

    const-string v7, "checkMultipleWallpaperOnCommand: init"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v9, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    return-void

    :cond_7
    cmp-long v0, v13, v11

    if-eqz v0, :cond_8

    iget-wide v7, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    cmp-long v0, v13, v7

    if-eqz v0, :cond_8

    const-string v0, "KeyguardImageWallpaper"

    const-string v7, "checkMultipleWallpaperOnCommand: fine"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v13, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    return-void

    :cond_8
    iget-wide v7, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    sub-long v7, v9, v7

    const-wide/16 v11, 0xbb8

    cmp-long v0, v7, v11

    if-lez v0, :cond_9

    const/4 v15, 0x1

    goto :goto_1

    :cond_9
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_a

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v11, v0

    const-string v0, "KeyguardImageWallpaper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMultipleWallpaperOnCommand: start KEYGUARD_WALLPAPER_UPDATOR "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " timeGap:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "content://com.samsung.android.keyguardwallpaperupdator.MultipleWallpaperContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v11, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "KeyguardImageWallpaper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMultipleWallpaperOnCommand:  unable to call KeyguardWallpaperUpdator CP "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_a
    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMultipleWallpaperOnCommand: skipped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v10, v4

    div-float/2addr v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    mul-int/2addr v13, v3

    iget v14, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    mul-int/2addr v14, v4

    const/high16 v15, 0x3f800000    # 1.0f

    if-le v13, v14, :cond_1

    iget v13, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v13, v13

    int-to-float v14, v4

    div-float/2addr v13, v14

    mul-float/2addr v13, v15

    :goto_0
    goto :goto_1

    :cond_1
    iget v13, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v13, v13

    int-to-float v14, v3

    div-float/2addr v13, v14

    mul-float/2addr v13, v15

    goto :goto_0

    :goto_1
    invoke-static {v13}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCroppedScaled(F)V

    const-string v5, "KeyguardImageWallpaper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMetricsHeight="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMetricsWidth="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    div-float/2addr v2, v13

    iget v5, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v15

    div-float/2addr v5, v13

    div-float v11, v2, v9

    sub-float v6, v8, v11

    const/4 v11, 0x0

    cmpg-float v12, v6, v11

    if-gez v12, :cond_2

    const/4 v6, 0x0

    :cond_2
    div-float v9, v5, v9

    sub-float v7, v10, v9

    cmpg-float v9, v7, v11

    if-gez v9, :cond_3

    const/4 v7, 0x0

    :cond_3
    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "widthOrigin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "heightOrigin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scale = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "centerX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "centerY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "height = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v3, v9, :cond_4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v4, v9, :cond_4

    const-string v9, "KeyguardImageWallpaper"

    const-string v11, "It doesn\'t need to crop bitmap"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v11, 0x1

    if-lt v9, v11, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-lt v9, v11, :cond_8

    iget v9, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    if-lt v9, v11, :cond_8

    iget v9, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    if-ge v9, v11, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v9, v11

    if-gt v9, v3, :cond_7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v9, v11

    if-le v9, v4, :cond_6

    goto :goto_2

    :cond_6
    const-string v9, "KeyguardImageWallpaper"

    const-string v11, "Cropping..."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v1, v9, v11, v12, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    :cond_7
    :goto_2
    const-string v9, "KeyguardImageWallpaper"

    const-string v11, "Calculated crop size error"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_8
    :goto_3
    const/4 v9, 0x0

    const-string v11, "KeyguardImageWallpaper"

    const-string v12, "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_9
    :goto_4
    const/4 v9, 0x0

    return-object v9
.end method

.method private getOperatorWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method private init()Z
    .locals 6

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "KeyguardImageWallpaper"

    const-string v2, "cached wallpaper is null or is recycled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "KeyguardImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeight()  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mStatusBarHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-ne v0, v2, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mPaddingLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mPaddingRight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mPaddingTop:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mPaddingBottom:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    mul-int/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    :goto_0
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v0, v0

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v0, v5

    mul-float/2addr v0, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v1, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBitmapWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBitmapHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->invalidate()V

    const/4 v1, 0x1

    return v1

    :cond_4
    :goto_1
    const-string v0, "KeyguardImageWallpaper"

    const-string v2, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isCustom(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private recycleCaches()V
    .locals 3

    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recycleCaches: mCurrentWhich="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private setMDMFileObserver(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observing path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private updateSmartCrop()V
    .locals 37

    move-object/from16 v1, p0

    const-string v0, "KeyguardImageWallpaper"

    const-string v2, "updateSmartCropRect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    iget v2, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KeyguardImageWallpaper"

    const-string v3, "mBackground == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v2, Landroid/view/DisplayInfo;->rotation:I

    iget v6, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v15, v8

    new-instance v8, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    invoke-direct {v8}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;-><init>()V

    move-object v14, v8

    new-instance v8, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v8}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    move-object v13, v8

    invoke-virtual {v13}, Lcom/samsung/android/media/face/SemFaceDetection;->init()I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v8

    mul-int v8, v7, v15

    new-array v8, v8, [I

    move-object v11, v8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v9, v8

    iget v8, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v8, v9}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(ILandroid/graphics/Bitmap;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v9

    move-object/from16 v19, v9

    move-object v9, v11

    move/from16 v10, v16

    move-object/from16 v20, v11

    move v11, v7

    move-object/from16 v21, v12

    move/from16 v12, v17

    move-object/from16 v22, v13

    move/from16 v13, v18

    move-object/from16 v23, v14

    move v14, v7

    move/from16 v24, v15

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-string v8, "KeyguardImageWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bmpWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", bmpHeight : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v24

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "KeyguardImageWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceWidth : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", deviceHeight : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-eq v5, v9, :cond_2

    const/4 v11, 0x3

    if-ne v5, v11, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    nop

    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    int-to-float v11, v4

    int-to-float v12, v3

    :goto_1
    div-float/2addr v11, v12

    goto :goto_2

    :cond_3
    int-to-float v11, v3

    int-to-float v12, v4

    goto :goto_1

    :goto_2
    move v12, v7

    int-to-float v13, v7

    mul-float/2addr v13, v11

    float-to-int v13, v13

    const-string v14, "KeyguardImageWallpaper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceRatio: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", landBitmapWidth : "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", landBitmapHeight : "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v14, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v14, 0x1000

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v15, v23

    invoke-virtual {v15, v0, v7, v10, v14}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage([IIII)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v2, v19

    move-object/from16 v0, v21

    move-object/from16 v14, v22

    invoke-virtual {v14, v2, v0}, Lcom/samsung/android/media/face/SemFaceDetection;->run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    move-result v16

    move/from16 v28, v16

    move-object/from16 v29, v2

    const-string v2, "KeyguardImageWallpaper"

    move/from16 v30, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v4

    const-string v4, "Number of faces = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v3}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v32, v0

    const-string v0, "KeyguardImageWallpaper"

    move/from16 v33, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v6

    const-string v6, "faceRect is : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v0, v5, :cond_4

    move-object v0, v3

    move-object v8, v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v32

    move/from16 v5, v33

    move-object/from16 v6, v34

    goto :goto_3

    :cond_5
    move-object/from16 v32, v0

    move/from16 v33, v5

    move-object/from16 v34, v6

    invoke-virtual {v14}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    if-nez v4, :cond_6

    invoke-virtual {v15}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect()Landroid/graphics/Rect;

    move-result-object v0

    const-string v2, "KeyguardImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ findObjectRect() ] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    :cond_6
    const-string v0, "KeyguardImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recognizedRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v13, 0x2

    div-int/lit8 v5, v10, 0x2

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    sub-int v6, v5, v3

    move/from16 v35, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_7
    move/from16 v35, v4

    sub-int v4, v10, v3

    if-le v2, v4, :cond_8

    sub-int v4, v10, v13

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    if-lt v2, v3, :cond_9

    sub-int v4, v2, v3

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_9
    :goto_4
    iput-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    const-string v4, "KeyguardImageWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v0

    const-string v0, "[ findCropRect() of Real Image] : "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseImage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v2, "KeyguardImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang.LinkageError occurred when smart cropping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v2, "KeyguardImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred when smart cropping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    nop

    :goto_6
    return-void
.end method

.method private updateWallpaper()V
    .locals 5

    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWallpaper() START useCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KeyguardImageWallpaper"

    const-string v3, "updateWallpaper: cancel update wallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    :cond_0
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;)V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->cleanUp()V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->recycleCaches()V

    return-void
.end method

.method public loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->setMDMFileObserver(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    nop

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, v7

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "KeyguardImageWallpaper"

    const-string v8, "load MDM wallpaper!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-interface {v7, v1, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "KeyguardImageWallpaper"

    const-string v8, "Can\'t load MDM wallpaper!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v6, "KeyguardImageWallpaper"

    const-string v7, "file problem!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v1, v2

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->loadBitmapForScreenSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportFBE()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getFbeWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_7
    :goto_3
    :try_start_1
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setOperatorWallpaper(Z)V

    const/4 v2, 0x1

    if-nez v1, :cond_b

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    goto :goto_4

    :cond_8
    move v4, p1

    :goto_4
    const-string v5, "KeyguardImageWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBitmap: which = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {v5, v4, v6}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_9

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v3, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v1, v6

    goto :goto_5

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getOperatorWallpaper()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    if-nez v1, :cond_a

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v3, v5}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;I)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    goto :goto_5

    :cond_a
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setOperatorWallpaper(Z)V

    :cond_b
    :goto_5
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    if-nez v3, :cond_c

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v3

    :cond_c
    if-eqz v1, :cond_e

    const-string v3, "KeyguardImageWallpaper"

    const-string v4, "loadBitmap end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-interface {v3, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_d
    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :cond_e
    :try_start_2
    const-string v2, "KeyguardImageWallpaper"

    const-string v3, "loadBitmap: fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v2

    :try_start_3
    const-string v3, "KeyguardImageWallpaper"

    const-string v4, "Can\'t decode file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :goto_6
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onAttachedToWindow()V

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "onAttachedToWindow: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->start()V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommand: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "SCREEN_TURNED_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->checkMultipleWallpaperOnCommand(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->onCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastCommand:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->canRotate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "onDetachedFromWindow: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stop()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "cached wallpaper is null or is recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getWallpaperUpdateStyle()I

    move-result v0

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v5, v1, :cond_4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mIsLand:Z

    goto :goto_1

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mIsLand:Z

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v7}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->prepareDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_2
    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-eqz v1, :cond_6

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->postInvalidateDelayed(J)V

    goto :goto_3

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mIsLand:Z

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->canRotate()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "KeyguardImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDraw, mSmartCroppedResult + "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v4

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    const-string v1, "KeyguardImageWallpaper"

    const-string v2, "onDraw"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_b
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_c
    :goto_4
    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "mBitmapWidth == 0 || mBitmapHeight == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onLayout(ZIIII)V

    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout:  \nchanged = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], \nleft = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], \ntop = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], \nright = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], \nbottom = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastRight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastBottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_1

    :cond_0
    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout called init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->init()Z

    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onResume()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->canRotate()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestDraw()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->invalidate()V

    return-void
.end method

.method public update()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->update()V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    if-eq v1, v0, :cond_0

    const-string v1, "KeyguardImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

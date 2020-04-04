.class public Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardVideoWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

.field private mCurrentWhich:I

.field private mDlsViewMode:I

.field private mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field private mHasWindowFocus:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private final mPluginLockMgr:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field protected mStatusBarHeight:I

.field private mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceTransformHandler:Landroid/os/Handler;

.field private mTextureView:Landroid/view/TextureView;

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentWhich:I

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mDlsViewMode:I

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTransformHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardVideoWallpaper$9yFSnswEEVLdz9tOTf5xRZbH3O8;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardVideoWallpaper$9yFSnswEEVLdz9tOTf5xRZbH3O8;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentWhich:I

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    new-instance v1, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string v2, "video_1.mp4"

    invoke-static {v1, p3, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    new-instance v1, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getViewMode()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isVideoWallpaperEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v2, "KeyguardVideoWallpaper"

    const-string v3, "Showing state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/video/VideoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private drawVideo(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mDlsViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    const-string v0, "KeyguardVideoWallpaper"

    const-string v1, "drawVideo() skip by DLS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawVideo() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    :goto_0
    return-void
.end method

.method private isPlayVideoReason(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;FFFFII)V
    .locals 3

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScaleSurface() sx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", px = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", py = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p5, v1, Landroid/os/Message;->arg1:I

    iput p6, v1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTransformHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private loadMediaPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string v1, "releaseVideoPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    return-void
.end method

.method private setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;I)V

    return-void
.end method

.method private setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;I)V
    .locals 4

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState() c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", n = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    const-string v1, "KeyguardVideoWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenState, prevState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$4;->$SwitchMap$com$android$systemui$wallpaper$KeyguardVideoWallpaper$ScreenState:[I

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->cancelReleaseResource()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->isPlayVideoReason(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    nop

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommand() action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extras = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WAKE_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    const-string v1, "SCREEN_ON_REASON"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;I)V

    goto :goto_0

    :cond_1
    const-string v0, "ACTION_UNLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    goto :goto_0

    :cond_2
    const-string v0, "SLEEP_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method public onDlsViewModeChanged(IZ)V
    .locals 3

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDlsViewModeChanged(), mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mDlsViewMode:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    if-eq v2, p5, :cond_2

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    if-eq v2, v1, :cond_2

    :cond_0
    const-string v2, "KeyguardVideoWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayout called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(II)V

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "KeyguardVideoWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "KeyguardVideoWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update new video wallpaper! path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string v3, "video_1.mp4"

    invoke-static {v2, v1, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v3, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_1
    return-void
.end method

.method public updateBlurState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_0
    return-void
.end method

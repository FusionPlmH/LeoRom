.class public Lcom/android/server/SecExternalDisplayOrientation;
.super Ljava/lang/Object;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;,
        Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_FORCE_MIRROR:Ljava/lang/String; = "isForceMirror"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayOrientation_Java"

.field private static bIsCameraOn:Z

.field protected static bIsLogEnabled:Z

.field private static bIsTabletConnected:Z

.field private static newOrientation:I


# instance fields
.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDockSurfaceParameter:I

.field protected mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

.field mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

.field private final mSidesyncContentObserver:Landroid/database/ContentObserver;

.field private mSidesyncDisplayId:I

.field private setOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsCameraOn:Z

    sput-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    sput v0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    sput-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceParameter:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mSidesyncDisplayId:I

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayOrientation$2;-><init>(Lcom/android/server/SecExternalDisplayOrientation;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/SecExternalDisplayOrientation$3;-><init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mSidesyncContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceParameter:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mSidesyncDisplayId:I

    new-instance v1, Lcom/android/server/SecExternalDisplayOrientation$2;

    invoke-direct {v1, p0}, Lcom/android/server/SecExternalDisplayOrientation$2;-><init>(Lcom/android/server/SecExternalDisplayOrientation;)V

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Lcom/android/server/SecExternalDisplayOrientation$3;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/server/SecExternalDisplayOrientation$3;-><init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mSidesyncContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const-string v1, "SecExternalDisplayOrientation_Java"

    const-string v2, "SecExternalDisplayService constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/SecExternalDisplayOrientation;->setOrientationListenerForCamera(Landroid/content/Context;)V

    const-string/jumbo v1, "persist.sys.SecEDS.Logs"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v7, 0x1

    if-le v4, v5, :cond_0

    if-eqz v6, :cond_1

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    :cond_0
    if-ge v4, v5, :cond_2

    if-eq v6, v7, :cond_1

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    :cond_1
    sput-boolean v7, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    goto :goto_0

    :cond_2
    sput-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-boolean v7, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    invoke-virtual {v0, v7}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayType(Z)Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsCameraOn:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/SecExternalDisplayOrientation;)I
    .locals 1

    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mSidesyncDisplayId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/SecExternalDisplayOrientation;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mSidesyncDisplayId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/SecExternalDisplayOrientation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SecExternalDisplayOrientation;->handleBlankDispDuringSidesync()V

    return-void
.end method

.method private handleBlankDispDuringSidesync()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_source_presentation"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    nop

    :cond_0
    move v1, v0

    if-eqz v1, :cond_1

    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBlankDispDuringSidesync, MODE_OFF, blankDisp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBlankDispDuringSidesync, MODE_ON, blankDisp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SecExternalDisplayOrientation_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getSideSyncSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private registerSideSync_SettingObserver(Z)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-boolean v1, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "SecExternalDisplayOrientation_Java"

    const-string v2, "Registering ContentObserver for sidesync_source_presentation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sidesync_source_presentation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mSidesyncContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Unregister ContentObserver for sidesync_source_presentation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mSidesyncContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method private setOrientationListenerForCamera(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SecExternalDisplayOrientation$1;-><init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public SecExternalDisplaySetOrientationMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleCameraConnection(I)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Camera Connection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->toStatus(I)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$4;->$SwitchMap$com$android$server$SecExternalDisplayOrientation$EDS_CameraStatus:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->toStatus(I)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v3, "Camera Stop Case"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_4

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v3, "Create SmartDock Surface"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-boolean v0, v0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    :cond_4
    sput-boolean v1, Lcom/android/server/SecExternalDisplayOrientation;->bIsCameraOn:Z

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_e

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayOrientation;->SecExternalDisplaySetOrientationMode(Z)V

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_6

    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Camera Start Case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_9

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_8

    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Destroy SmartDock Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    :cond_9
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_d

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsCameraOn:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_a

    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Calling Camera with setOrientation Value :  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget v1, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    :cond_d
    :goto_0
    sput-boolean v2, Lcom/android/server/SecExternalDisplayOrientation;->bIsCameraOn:Z

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_e

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayOrientation;->SecExternalDisplaySetOrientationMode(Z)V

    :cond_e
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleKddiAuShareLink(Z)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered handleKddiAuShareLink with status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v4, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Start:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v4, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v3

    float-to-double v3, v3

    cmpg-double v1, v3, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v4, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Stop:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v4, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v3

    float-to-double v3, v3

    cmpg-double v1, v3, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public handleRVFConnection(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_1
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered handleRVFConnection with status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    :cond_3
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    const/4 v0, 0x1

    return v0
.end method

.method public handleSideSyncConnection(Z)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered handleSideSyncConnection with status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v5, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Start:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v5}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v5, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v5}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v4

    float-to-double v4, v4

    cmpg-double v1, v4, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Registering display listener for sidesync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/SecExternalDisplayOrientation;->registerSideSync_SettingObserver(Z)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v4, v4, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v4, :cond_5

    const-string v4, "SecExternalDisplayOrientation_Java"

    const-string v5, "Unregister display listener for sidesync"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v4, v4, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/SecExternalDisplayOrientation;->registerSideSync_SettingObserver(Z)V

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v4, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v4, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Stop:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v4, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v1

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_7
    :goto_0
    return v3
.end method

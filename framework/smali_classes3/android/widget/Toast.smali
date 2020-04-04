.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;,
        Landroid/widget/Toast$Duration;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DESKTOP_DISPLAY_SUPPORT:Z = true

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final MAX_LOOP_COUNT:I = 0x64

.field public static final SEM_DISPLAY_TYPE_DEFAULT:I = 0x0

.field public static final SEM_DISPLAY_TYPE_DEX:I = 0x1

.field public static final SEM_LENGTH_LONG_DOUBLE:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mCustomDisplayId:I

.field mDuration:I

.field mIsCustomView:Z

.field mNextView:Landroid/view/View;

.field final mTN:Landroid/widget/Toast$TN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/Toast;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Toast;->mIsCustomView:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/Toast$TN;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mY:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mGravity:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v1, v1, Landroid/widget/Toast$TN;->mY:I

    iput v1, v0, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v1, v1, Landroid/widget/Toast$TN;->mGravity:I

    iput v1, v0, Landroid/widget/Toast$TN;->mDefaultGravity:I

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastGravityEnabledState()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Toast"

    const-string v2, "Knox Customization: Using custom gravity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastGravity()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput v1, v2, Landroid/widget/Toast$TN;->mGravity:I

    :cond_0
    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastGravityXOffset()I

    move-result v3

    iput v3, v2, Landroid/widget/Toast$TN;->mX:I

    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastGravityYOffset()I

    move-result v3

    iput v3, v2, Landroid/widget/Toast$TN;->mY:I

    :cond_1
    return-void
.end method

.method static synthetic access$100()Landroid/app/INotificationManager;
    .locals 1

    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private checkGameHomeWhiteList()Z
    .locals 7

    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_no_interruption"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "game_no_interruption_white_list"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Toast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GameNoInterruption mode. Show game toast. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v2, "Toast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameNoInterruption mode. Block toast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    const-string v3, "Toast"

    const-string v4, "gameNoInterruption is on, but whitelist is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v2
.end method

.method private checkMirrorLinkEnabled()Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-boolean v1, Landroid/widget/Toast;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkMirrorLinkEnabled returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private checkShowingCondition()Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Toast;->checkMirrorLinkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/widget/Toast;->checkWhiteList()Z

    move-result v0

    return v0
.end method

.method private checkWhiteList()Z
    .locals 13

    const-string v0, "com.samsung.mirrorlink.acms.pkgnames"

    const-string/jumbo v1, "pkgname"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v9, "com.mirrorlink.android.service.ACCESS_PERMISSION"

    iget-object v3, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    const-string v3, "Toast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check Access Permission  : res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    return v11

    :cond_0
    iget-object v3, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v3, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v1, v5, v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "Toast"

    const-string v5, "Cursor is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "Toast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentPackageName =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Toast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "db column packagename ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    move v4, v11

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_1
    return v4
.end method

.method private getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0

    :cond_0
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static isContextForDesktopDisplay(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private isDexDualModeEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "desktopmode"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    :cond_1
    sget-boolean v2, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "Toast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDexDualModeEnabled: isDesktopDualMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 7

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    const v6, 0x111008d

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v4, v5

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const v6, 0x109012f

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    const v6, 0x1090158

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_1
    new-instance v5, Landroid/widget/Toast$4;

    invoke-direct {v5, v0}, Landroid/widget/Toast$4;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v5, 0x102000b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 5

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const v3, 0x1090130

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/Toast$3;

    invoke-direct {v3, v0}, Landroid/widget/Toast$3;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput p2, v0, Landroid/widget/Toast;->mDuration:I

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->cancel()V

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->access$000(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public semSetPreferredDisplayType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    :goto_0
    return-void
.end method

.method public setDuration(I)V
    .locals 1

    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mDuration:I

    return-void
.end method

.method public setGravity(III)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    return-void
.end method

.method public setMargin(FF)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return-void
.end method

.method public setShowForAllUsers()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->setShowForAllUsers()V

    return-void
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Toast was not created with Toast.makeText()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    move-object v0, p1

    new-instance v1, Landroid/widget/Toast$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$2;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Toast;->mIsCustomView:Z

    return-void
.end method

.method public show()V
    .locals 27

    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastEnabledState()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Toast"

    const-string v3, "Knox Customization: Not showing toast"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->checkShowingCondition()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/widget/Toast;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Toast"

    const-string/jumbo v3, "showing not allowed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Landroid/widget/Toast;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Toast"

    const-string/jumbo v3, "showing allowed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->checkGameHomeWhiteList()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    iget-object v3, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Toast;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    move v6, v5

    :goto_0
    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getInstance()Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getCurrentFocusDisplayId()I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    move v8, v5

    :goto_1
    iget v9, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-eq v9, v10, :cond_8

    iget v9, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    if-nez v9, :cond_7

    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    iget v9, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    if-ne v9, v11, :cond_8

    const/4 v8, 0x1

    :cond_8
    :goto_2
    sget-boolean v9, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v9, :cond_9

    const-string v9, "Toast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "show: focusDisplayId = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", isFocusInDesktop = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " mCustomDisplayId="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v9, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v9, :cond_a

    const-string v9, "Toast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "show: isActivityContext = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v9, v1, Landroid/widget/Toast;->mIsCustomView:Z

    if-nez v9, :cond_d

    if-nez v6, :cond_d

    if-eqz v8, :cond_d

    iget-object v9, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/widget/Toast;->isContextForDesktopDisplay(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/Toast;->isDexDualModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    const-string v10, "display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayManager;

    if-eqz v9, :cond_c

    const-string v10, "com.samsung.android.hardware.display.category.DESKTOP"

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v10

    array-length v12, v10

    if-lez v12, :cond_c

    aget-object v12, v10, v5

    if-eqz v12, :cond_c

    new-instance v12, Landroid/view/DisplayInfo;

    invoke-direct {v12}, Landroid/view/DisplayInfo;-><init>()V

    aget-object v13, v10, v5

    invoke-virtual {v13, v12}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    sget-boolean v13, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v13, :cond_b

    const-string v13, "Toast"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "show: createDisplayContext displays = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v10, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v13, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    aget-object v14, v10, v5

    invoke-virtual {v13, v14}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_c

    new-instance v14, Landroid/view/ContextThemeWrapper;

    const v15, 0x103012b

    invoke-direct {v14, v13, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v14

    :cond_c
    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    move-object v9, v0

    const v10, 0x102000b

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastShowPackageNameState()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_e

    if-eqz v14, :cond_e

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v10

    const/16 v4, 0x3e

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x3c

    invoke-virtual {v10, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const-string v11, "%1s: %2s"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v18, v0

    move-object/from16 v17, v2

    const/4 v2, 0x2

    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v14, v0, v2

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v10, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v0, v16

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    const/4 v10, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    :goto_4
    const-string v2, "Toast"

    const-string v4, "Exception thrown :"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "%1s: %2s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v14, v5, v10

    const/4 v10, 0x1

    aput-object v2, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_e
    move-object/from16 v17, v2

    const/4 v10, 0x1

    :goto_5
    iget-boolean v0, v1, Landroid/widget/Toast;->mIsCustomView:Z

    const/4 v2, 0x0

    if-nez v0, :cond_11

    if-eqz v9, :cond_11

    const/4 v0, 0x0

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v9, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x109012f

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/Toast$1;

    invoke-direct {v2, v1}, Landroid/widget/Toast$1;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v11, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v2, v11

    check-cast v2, Landroid/widget/TextView;

    if-eqz v5, :cond_f

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    sget-boolean v11, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v11, :cond_10

    const-string v11, "Toast"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "show: new view = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    nop

    move-object v2, v0

    goto :goto_6

    :cond_11
    nop

    :goto_6
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-boolean v0, v0, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    if-nez v0, :cond_13

    const v0, 0x105039c

    if-eqz v9, :cond_12

    iget-object v4, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/Toast$TN;->mY:I

    goto :goto_7

    :cond_12
    iget-object v4, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v5, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/Toast$TN;->mY:I

    :goto_7
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v4, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v4, v4, Landroid/widget/Toast$TN;->mY:I

    iput v4, v0, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    :cond_13
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v11, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    if-eqz v2, :cond_14

    move-object v0, v2

    goto :goto_8

    :cond_14
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    :goto_8
    iput-object v0, v11, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eqz v2, :cond_15

    goto :goto_9

    :cond_15
    const/4 v10, 0x0

    :goto_9
    iput-boolean v10, v11, Landroid/widget/Toast$TN;->mIsDisplayContext:Z

    iget-object v0, v11, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    const v10, 0x102000b

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const-string v0, ""

    const/4 v12, -0x1

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    move-object v13, v0

    :try_start_2
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v0, v5, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v15, v14, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v15

    nop

    move v12, v0

    goto :goto_a

    :catch_2
    move-exception v0

    const-string v14, "Toast"

    const-string/jumbo v15, "show: cannot get uid!!!"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    if-eqz v9, :cond_17

    move-object v0, v9

    goto :goto_b

    :cond_17
    :try_start_3
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    :goto_b
    invoke-static {v0}, Landroid/widget/Toast;->isContextForDesktopDisplay(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v14
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    if-nez v14, :cond_18

    :try_start_4
    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v14
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v26, v2

    goto :goto_f

    :cond_18
    :try_start_5
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    :goto_c
    sget-boolean v15, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v15, :cond_19

    const-string v15, "Toast"

    move-object/from16 v25, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v26, v2

    :try_start_6
    const-string/jumbo v2, "show: enqueueToastForDisplay displayId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_19
    move-object/from16 v25, v0

    move-object/from16 v26, v2

    :goto_d
    iget v0, v1, Landroid/widget/Toast;->mDuration:I

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v11

    move/from16 v21, v0

    move/from16 v22, v14

    move-object/from16 v23, v13

    move/from16 v24, v12

    invoke-interface/range {v18 .. v24}, Landroid/app/INotificationManager;->enqueueToastForDisplay(Ljava/lang/String;Landroid/app/ITransientNotification;IILjava/lang/String;I)V

    goto :goto_e

    :cond_1a
    move-object/from16 v25, v0

    move-object/from16 v26, v2

    iget v0, v1, Landroid/widget/Toast;->mDuration:I

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v11

    move/from16 v21, v0

    move-object/from16 v22, v13

    move/from16 v23, v12

    invoke-interface/range {v18 .. v23}, Landroid/app/INotificationManager;->enqueueToastLog(Ljava/lang/String;Landroid/app/ITransientNotification;ILjava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_e
    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v26, v2

    :goto_f
    sget-boolean v2, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v2, :cond_1b

    const-string v2, "Toast"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RemoteException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_10
    return-void

    :cond_1c
    move-object/from16 v17, v2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setView must have been called"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

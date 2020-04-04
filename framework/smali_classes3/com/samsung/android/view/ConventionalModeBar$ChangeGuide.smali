.class public final Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;
.super Ljava/lang/Object;
.source "ConventionalModeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/ConventionalModeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangeGuide"
.end annotation


# static fields
.field private static final RESTART_DELAY_FOR_TOAST:I = 0x12c

.field private static final SETTING_NAME_SHOWN_FULLSCREEN_GUIDE_POPUP:Ljava/lang/String; = "shown_fullscreen_guide_popup_for_conventional_mode"

.field private static final SETTING_NAME_SHOWN_GUIDE_TOAST:Ljava/lang/String; = "shown_guide_toast_for_conventional_mode"


# instance fields
.field private final mChangeGuidePopupRunnable:Ljava/lang/Runnable;

.field private final mChangeGuideToastRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mEnable:Z

.field private final mFullscreenGuidePopupRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mPkg:Ljava/lang/String;

.field private mRestartTaskId:I

.field private final mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$1;-><init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V

    iput-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mChangeGuidePopupRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$2;-><init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V

    iput-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mFullscreenGuidePopupRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide$3;-><init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V

    iput-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mChangeGuideToastRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mUid:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Lcom/samsung/android/view/SemWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->setShownGuideToast()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->setShownFullscreenGuidePopup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->shouldShowChangeGuideToast()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mRestartTaskId:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic lambda$showChangeGuide$0(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mUid:I

    iget-boolean v3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mEnable:Z

    iget v4, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mRestartTaskId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/view/SemWindowManager;->setMaxAspectPackageRestartTask(Ljava/lang/String;IZI)V

    return-void
.end method

.method private setShownFullscreenGuidePopup()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_fullscreen_guide_popup_for_conventional_mode"

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setShownGuideToast()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_guide_toast_for_conventional_mode"

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private shouldShowChangeGuidePopup()Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mRestartTaskId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v1, v4, v2, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AspectRatioController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get ApplicationInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/view/ConventionalModeBar;->access$400()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " of"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, " "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_3

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    if-nez v1, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2

    :cond_5
    return v3
.end method

.method private shouldShowChangeGuideToast()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_guide_toast_for_conventional_mode"

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method private shouldShowFullscreenGuidePopup()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_fullscreen_guide_popup_for_conventional_mode"

    iget v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method


# virtual methods
.method public showChangeGuide(Ljava/lang/String;IZILandroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mPkg:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mUid:I

    iput-boolean p3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mEnable:Z

    iput p4, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mRestartTaskId:I

    iput-object p5, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->shouldShowChangeGuidePopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mChangeGuidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mChangeGuidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/view/-$$Lambda$ConventionalModeBar$ChangeGuide$SJ_1iDhsR6BJ3nymGVp-jihCgGQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/view/-$$Lambda$ConventionalModeBar$ChangeGuide$SJ_1iDhsR6BJ3nymGVp-jihCgGQ;-><init>(Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->shouldShowFullscreenGuidePopup()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mFullscreenGuidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mFullscreenGuidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mChangeGuideToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mChangeGuideToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    const-string v0, "AspectRatioController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showChangeGuide: Handler is null. enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/view/ConventionalModeBar;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/view/ConventionalModeBar$ChangeGuide;->mRestartTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

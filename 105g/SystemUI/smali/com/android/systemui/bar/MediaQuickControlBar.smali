.class public Lcom/android/systemui/bar/MediaQuickControlBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "MediaQuickControlBar.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field private static final EMERGENCY_MODE_URI:Landroid/net/Uri;

.field private static final MEDIA_DEVICES_PANEL_SETTING:Ljava/lang/String; = "com.android.systemui.qspanel_media_devices_setting"

.field public static final MEDIA_DEVICES_USING_REMOTE_VIEW:Ljava/lang/String; = "qspanel_media_devices_using_remote_view"

.field public static final MEDIA_QUICK_CONTROL_AVAILABLE:Ljava/lang/String; = "qspanel_media_quickcontrol_bar_available"


# instance fields
.field private mAvailable:Z

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/view/View;

.field private mHeight:I

.field private mMediaContainer:Landroid/widget/LinearLayout;

.field private mMediaIcon:Landroid/widget/ImageView;

.field private mMediaTitleText:Landroid/widget/TextView;

.field private mQuickControlContainer:Landroid/widget/LinearLayout;

.field private mQuickControlIcon:Landroid/widget/ImageView;

.field private mQuickControlTitleText:Landroid/widget/TextView;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mUsingRemoteView:Z

.field private mediaQuickControlEditor:Landroid/content/SharedPreferences$Editor;

.field private mediaQuickControlPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bar/MediaQuickControlBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mAvailable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    new-instance v2, Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$BJBtMfDj-WjxNRcESEHo8d7gjjE;

    invoke-direct {v2, p0}, Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$BJBtMfDj-WjxNRcESEHo8d7gjjE;-><init>(Lcom/android/systemui/bar/MediaQuickControlBar;)V

    iput-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "qspanel_media_devices_using_remote_view"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "qspanel_media_quickcontrol_bar_available"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v4, v0, [Landroid/net/Uri;

    sget-object v5, Lcom/android/systemui/bar/MediaQuickControlBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    const-string v4, "media_quickcontrol_pref"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlPref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlPref:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlPref:Landroid/content/SharedPreferences;

    const-string v4, "initialized"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "initialized"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "2005"

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarSettingOn()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "show"

    goto :goto_0

    :cond_1
    const-string v3, "hide"

    :goto_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mediaQuickControlEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bar/MediaQuickControlBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MediaQuickControlBar;->startActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/bar/MediaQuickControlBar;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/bar/MediaQuickControlBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private getButtonBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f080612

    goto :goto_0

    :cond_0
    const v1, 0x7f080610

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    const v2, 0x7f060265

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public static synthetic lambda$8YHi7_mzxSJDJuPZ9BP2FPl79FY(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/bar/MediaQuickControlBar;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateViewVisibilty()V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    const v3, 0x7f070670

    const v4, 0x7f070673

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onTuningChanged() : mBarRootView is null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    nop

    :cond_1
    iput v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mHeight:I

    return-void

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    if-eqz v0, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateContainerHeight(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v1}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onBarLayoutChanged()V

    :cond_5
    return-void
.end method

.method private refreshLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070673

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startActivity(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.mdx.quickboard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$8YHi7_mzxSJDJuPZ9BP2FPl79FY;->INSTANCE:Lcom/android/systemui/bar/-$$Lambda$MediaQuickControlBar$8YHi7_mzxSJDJuPZ9BP2FPl79FY;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startSizeChangeAnimation(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/bar/MediaQuickControlBar$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/MediaQuickControlBar$3;-><init>(Lcom/android/systemui/bar/MediaQuickControlBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/bar/MediaQuickControlBar$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/MediaQuickControlBar$4;-><init>(Lcom/android/systemui/bar/MediaQuickControlBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateContainerHeight(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContainerHeight height ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mHeight:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mHeight:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/MediaQuickControlBar;->startSizeChangeAnimation(II)V

    iput p1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mHeight:I

    return-void
.end method

.method private updateRemoteViewsSettings()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mAvailable:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_DEVICES_PANEL_SETTING = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.systemui.qspanel_media_devices_setting"

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.qspanel_media_devices_setting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.mdx.quickboard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updateViewVisibilty()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    const/16 v2, 0x8

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mAvailable:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public getBarHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mAvailable:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mHeight:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d01a9

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0328

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mMediaTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0326

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mMediaIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a044f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQuickControlTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a044e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQuickControlIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0177

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0325

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mMediaContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a044d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQuickControlContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mMediaContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/bar/MediaQuickControlBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/bar/MediaQuickControlBar$1;-><init>(Lcom/android/systemui/bar/MediaQuickControlBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQuickControlContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/bar/MediaQuickControlBar$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/bar/MediaQuickControlBar$2;-><init>(Lcom/android/systemui/bar/MediaQuickControlBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/bar/MediaQuickControlBar;->refresh()V

    invoke-direct {p0}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateViewVisibilty()V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateShowButtonBackground(Z)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isShowingWhenExpanded()Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mIsPanelShort:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateQSColoringResources(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateShowButtonBackground(Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/bar/QSBarItem;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bar/MediaQuickControlBar;->refreshLayout()V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTuningChanged() : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "qspanel_media_devices_using_remote_view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    invoke-direct {p0}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateRemoteViewsSettings()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/bar/MediaQuickControlBar;->refresh()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mAvailable:Z

    iget-boolean v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mUsingRemoteView:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateRemoteViewsSettings()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/bar/MediaQuickControlBar;->refresh()V

    :goto_1
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mStatusBarState:I

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->updateQSColoringResources(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mDivider:Landroid/view/View;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public updateShowButtonBackground(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bar/MediaQuickControlBar;->updateQSColoringResources(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mMediaContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MediaQuickControlBar;->getButtonBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQuickControlContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/MediaQuickControlBar;->getButtonBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_2

    const v1, 0x7f060218

    goto :goto_0

    :cond_2
    const v1, 0x7f060265

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mMediaIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQuickControlTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mQuickControlIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mDivider:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804d4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

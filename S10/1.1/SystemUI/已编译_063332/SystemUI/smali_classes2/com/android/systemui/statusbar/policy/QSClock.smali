.class public Lcom/android/systemui/statusbar/policy/QSClock;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;
.source "QSClock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAttached:Z

.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z

.field private mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

.field private mNonAdaptedColor:I

.field private final mShowDark:Z

.field private mUseWallpaperTextColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/QSClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->Clock:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private updateClock()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getSmallTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getContentDescription()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/android/systemui/statusbar/policy/QSClock;->notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    sget-object v3, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "sans-serif-light"

    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockBoxSize:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QSClock;->setLeoTextSize(I)V

    goto :goto_0

    :cond_1
    const-string v4, "sec-roboto-light"

    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockSize:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QSClock;->setLeoTextSize(I)V

    :goto_0
    sget-boolean v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockActionEnabled:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QSClock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/QSClock;->setClickable(Z)V

    :goto_1
    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockFont:I

    invoke-virtual {p0, v5, v4, v2}, Lcom/android/systemui/statusbar/policy/QSClock;->setLeoTextFont(ILjava/lang/String;I)V

    sget-boolean v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockEnabled:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    return-void
.end method

.method private updateClockVisibility()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 2

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setClockVisibilityByPolicy(Z)V

    :cond_1
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    if-nez p3, :cond_7

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;->onTimeTextChanged()V

    :cond_0
    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockChinaTimeDetailScaling:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockChinaTimeDetailStyle:I

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockChinaTimeDetailZoomEnabled:I

    const-string v4, ""

    sget-object v5, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockChinaTimeDetailsEnabled:Z

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x5

    if-lt v2, v7, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/4 v7, 0x0

    if-eqz v6, :cond_3

    sget v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockChinaTimeDetailSymbolStyle:I

    const-string v9, ","

    invoke-virtual {v0, v8, v7, v9}, Lcom/android/systemui/statusbar/policy/QSClock;->LeoSaltSymbol(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6, v2, v7}, Lcom/android/systemui/statusbar/policy/QSClock;->getLeoTimeStyle(IZILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v12, 0x1

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    if-ne v3, v12, :cond_4

    new-instance v15, Landroid/text/style/RelativeSizeSpan;

    invoke-static {v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->leoSizeSpan(I)F

    move-result v9

    invoke-direct {v15, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    move-object v9, v15

    const/16 v15, 0x22

    invoke-virtual {v11, v9, v14, v13, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/QSClock;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/policy/QSClock;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v13

    const-string v14, "status_bar_clock"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextSize(F)V

    const-string v13, "QSClock"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FusionLeo Team\nWhat are you looking for? Need help? leosalt0803@gmail.com"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "I\'m from China"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "developer"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") mClockVisibleByPolicy:"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", mClockVisibleByUser:"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", visible?"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getVisibility()I

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", parent:"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object/from16 v15, p1

    goto :goto_2

    :cond_7
    move-object/from16 v15, p1

    move-object/from16 v9, p2

    :goto_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClock()V

    new-instance v0, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoQSHeadsClock:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockVibratorEnabled:I

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockVibratorLevel:I

    invoke-static {v0, v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockClickCollapsePanels:I

    invoke-static {v0, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->collapsePanel(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mContext:Landroid/content/Context;

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderClockActionStyle:I

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoQSHeadsClock:[Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->LeoSysUiShortcut(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    const-string v0, "keyguard_status_bar_clock"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "status_bar_clock"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    const v0, 0x7f07079b

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/systemui/statusbar/policy/QSClock;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoQSHeadsClock:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClock()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "clock"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setClockVisibleByUser(Z)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

    return-void
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClockVisibility()V

    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "keyguard_status_bar_clock"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "status_bar_clock"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClockVisibility()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-super {p0, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->setVisibility(I)V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mContext:Landroid/content/Context;

    const v1, 0x7f0403bc

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :goto_0
    return-void
.end method

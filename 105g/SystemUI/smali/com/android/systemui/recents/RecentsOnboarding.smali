.class public Lcom/android/systemui/recents/RecentsOnboarding;
.super Ljava/lang/Object;
.source "RecentsOnboarding.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private mBlacklistedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentActionMessage:I

.field private mCurrentMessage:I

.field private mGestureHintSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

.field private mGestureSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

.field private mGestureSettingCallbackRegistered:Z

.field mHandler:Landroid/os/Handler;

.field private mHasDismissedQuickScrubTip:Z

.field private mHasDismissedSwipeUpTip:Z

.field private mIsImeShowing:Z

.field private mLastGestureStatus:Z

.field private final mLayout:Landroid/view/View;

.field private mLayoutAttachedToWindow:Z

.field private mNavBarHeight:I

.field private mNavBarWidth:I

.field private mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private mNumAppsLaunchedSinceSwipeUpTipDismiss:I

.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOverviewOpenedCountSinceQuickScrubTipDismiss:I

.field private mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyListenerRegistered:Z

.field private mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private final mTaskListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

.field private mTaskListenerRegistered:Z

.field private mTipAction:Ljava/lang/Runnable;

.field private final mTipPopupYpos:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/recents/RecentsOnboarding$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    new-instance v0, Lcom/android/systemui/recents/RecentsOnboarding$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsOnboarding$2;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    new-instance v0, Lcom/android/systemui/recents/RecentsOnboarding$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsOnboarding$3;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mWindowManager:Landroid/view/WindowManager;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mBlacklistedPackages:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mBlacklistedPackages:Ljava/util/Set;

    const v2, 0x7f030040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTipPopupYpos:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsOnboarding;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mBlacklistedPackages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenQuickScrubOnboarding()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recents/RecentsOnboarding;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->setHasSeenSwipeUpOnboarding(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->incrementOpenedOverviewFromHomeCount()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->incrementOpenedOverviewCount()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedQuickScrubTip:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedQuickScrubTip:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/recents/RecentsOnboarding;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayoutAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedSwipeUpTip:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->showTipPopup()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/recents/RecentsOnboarding;)Lcom/samsung/android/widget/SemTipPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/recents/RecentsOnboarding;Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasDismissedQuickScrubOnboardingOnce()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/recents/RecentsOnboarding;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->setHasDismissedQuickScrubOnboardingOnce(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/RecentsOnboarding;)Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureHintSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/RecentsOnboarding;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->setOpenedOverviewCount(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getSwipeRightTipSeenCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/RecentsOnboarding;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->setSwipeRightTipSeenCount(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/RecentsOnboarding;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->setHasSeenQuickScrubOnboarding(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/RecentsOnboarding;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/RecentsOnboarding;->notifyOnTip(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenSwipeUpOnboarding()Z

    move-result v0

    return v0
.end method

.method private getDismissedSwipeUpOnboardingCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "DismissedRecentsSwipeUpOnboardingCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOpenedKeyboardTipCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarKeyboardTipSeenCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOpenedOverviewCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "OverviewOpenedCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOpenedOverviewFromHomeCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "OverviewOpenedFromHomeCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSwipeRightTipSeenCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarGestureSwipeRightTipSeenCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSwipeUpHoldTipSeenCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarGestureSwipeUpAndHoldTipSeenCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureHintSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;->isGestureHintEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;->isGestureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-int v1, v0

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    const/16 v1, 0x208

    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v7, 0x7d8

    const/4 v9, -0x3

    move-object v2, v10

    move v5, p2

    move v8, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v3, "RecentsOnboarding"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v2
.end method

.method private hasDismissedQuickScrubOnboardingOnce()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "HasDismissedRecentsQuickScrubOnboardingOnce"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private hasSeenQuickScrubOnboarding()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenRecentsQuickScrubOnboarding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private hasSeenSwipeUpOnboarding()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenRecentsSwipeUpOnboarding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private incrementOpenedOverviewCount()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->setOpenedOverviewCount(I)V

    return-void
.end method

.method private incrementOpenedOverviewFromHomeCount()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewFromHomeCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->setOpenedOverviewFromHomeCount(I)V

    return-void
.end method

.method public static synthetic lambda$initSwipeUpAndHoldOnboarding$3(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getSwipeUpHoldTipSeenCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;->isGestureEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLastGestureStatus:Z

    if-eq v2, v1, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    if-eqz v1, :cond_1

    const v2, 0x7f120440

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->show(II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->setSwipeUpHoldTipSeenCount(I)V

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLastGestureStatus:Z

    return-void
.end method

.method public static synthetic lambda$showKeyboardTip$4(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic lambda$showKeyboardTip$5(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedKeyboardTipCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$iggOgW3uQuDz4THu_f8NgRyxqwU;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$iggOgW3uQuDz4THu_f8NgRyxqwU;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTipAction:Ljava/lang/Runnable;

    const v1, 0x7f120b6f

    const v2, 0x7f120b6e

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->setOpenedKeyboardTipCount(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showTipPopup$0(Lcom/android/systemui/recents/RecentsOnboarding;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showTipPopup$1(Lcom/android/systemui/recents/RecentsOnboarding;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTipAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$showTipPopup$2(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method

.method private notifyOnTip(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onTip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private setHasDismissedQuickScrubOnboardingOnce(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "HasDismissedRecentsQuickScrubOnboardingOnce"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private setHasSeenQuickScrubOnboarding(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenRecentsQuickScrubOnboarding"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :cond_0
    return-void
.end method

.method private setHasSeenSwipeUpOnboarding(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenRecentsSwipeUpOnboarding"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenQuickScrubOnboarding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :cond_0
    return-void
.end method

.method private setOpenedKeyboardTipCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarKeyboardTipSeenCount"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setOpenedOverviewCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "OverviewOpenedCount"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setOpenedOverviewFromHomeCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "OverviewOpenedFromHomeCount"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setSwipeRightTipSeenCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarGestureSwipeRightTipSeenCount"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setSwipeUpHoldTipSeenCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarGestureSwipeUpAndHoldTipSeenCount"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private shouldShow()Z
    .locals 3

    const-string/jumbo v0, "persist.quickstep.onboarding.enabled"

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showTipPopup()V
    .locals 4

    new-instance v0, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mCurrentMessage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    const/16 v2, 0x8c

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTipPopupYpos:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$bx0uyfXOXlki6tWPExhlLez4QzI;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$bx0uyfXOXlki6tWPExhlLez4QzI;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    iget v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mCurrentActionMessage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTipAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mCurrentActionMessage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$Uh4en4khwcUiRclqsk8HKt1xJHE;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$Uh4en4khwcUiRclqsk8HKt1xJHE;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$PdRbFpBtvmG8D_l4QAayeJa1chA;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$PdRbFpBtvmG8D_l4QAayeJa1chA;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "RecentsOnboarding {"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mTaskListenerRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mOverviewProxyListenerRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mLayoutAttachedToWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayoutAttachedToWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mHasDismissedSwipeUpTip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedSwipeUpTip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mHasDismissedQuickScrubTip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedQuickScrubTip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mNumAppsLaunchedSinceSwipeUpTipDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasSeenSwipeUpOnboarding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenSwipeUpOnboarding()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasSeenQuickScrubOnboarding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenQuickScrubOnboarding()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      getDismissedSwipeUpOnboardingCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getDismissedSwipeUpOnboardingCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasDismissedQuickScrubOnboardingOnce: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasDismissedQuickScrubOnboardingOnce()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      getOpenedOverviewCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      getOpenedOverviewFromHomeCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewFromHomeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      getOpenedKeyboardTipCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedKeyboardTipCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    }"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hide(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayoutAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public init(Lcom/android/systemui/OverviewProxyService;Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureHintSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureHintSetting;

    iput-object p3, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureSettingCallbackRegistered:Z

    return-void
.end method

.method public initSwipeUpAndHoldOnboarding()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureSettingCallbackRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getSwipeUpHoldTipSeenCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureSettingCallbackRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mGestureSetting:Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$_bgj5DlnAZfnavwN_yvt_UhoWXo;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$_bgj5DlnAZfnavwN_yvt_UhoWXo;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureWhileHiddenSetting;->addCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    :cond_0
    return-void
.end method

.method public onConnectedToLauncher()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenSwipeUpOnboarding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenQuickScrubOnboarding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/OverviewProxyService;->addCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    :cond_2
    return-void
.end method

.method public onDisconnectedFromLauncher()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/OverviewProxyService;->removeCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedSwipeUpTip:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedQuickScrubTip:Z

    iput v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    iput v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void
.end method

.method public setImeState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mIsImeShowing:Z

    return-void
.end method

.method public setNavBarHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarHeight:I

    return-void
.end method

.method public setNavBarWidth(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarWidth:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    :cond_0
    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarWidth:I

    return-void
.end method

.method public show(II)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->shouldShow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mIsImeShowing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayoutAttachedToWindow:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v1, 0x53

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mCurrentMessage:I

    iput p2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mCurrentActionMessage:I

    return v2

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public showKeyboardTip()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$hUKi3W0fpGJd_8MLEI1bssP6S6E;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$hUKi3W0fpGJd_8MLEI1bssP6S6E;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

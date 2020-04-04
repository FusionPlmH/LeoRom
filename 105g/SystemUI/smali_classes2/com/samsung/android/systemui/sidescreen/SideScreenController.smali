.class public Lcom/samsung/android/systemui/sidescreen/SideScreenController;
.super Ljava/lang/Object;
.source "SideScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;,
        Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;,
        Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockSide:I

.field private final mEdgeBackgroundWithDisplayCutout:Lcom/samsung/android/systemui/sidescreen/EdgeBackgroundWithDisplayCutout;

.field private final mH:Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

.field private mLastFocusedWindowingMode:I

.field private mLidOpened:Z

.field private final mMenusMode:Landroid/util/SparseIntArray;

.field private mMinimized:Z

.field private mMode:I
    .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
    .end annotation
.end field

.field private final mPrimaryMenu:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

.field private final mScreenDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

.field private final mSecondaryMenu:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

.field private mSideScreenVisible:Z

.field private final mSideScreenWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

.field private mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mStableInsets:Landroid/graphics/Rect;

.field private final mStackDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;

.field private mWasScreenOff:Z


# direct methods
.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/systemui/sidescreen/SideScreenController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMode:I

    return p1
.end method

.method static synthetic access$1002(Lcom/samsung/android/systemui/sidescreen/SideScreenController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mLidOpened:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/systemui/sidescreen/SideScreenController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mWasScreenOff:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMinimized:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/systemui/sidescreen/SideScreenController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMinimized:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/samsung/android/systemui/sidescreen/SideScreenController;Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->initializeSnapAlgorithm()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mPrimaryMenu:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSecondaryMenu:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDockSide:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/systemui/sidescreen/SideScreenController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDockSide:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/EdgeBackgroundWithDisplayCutout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mEdgeBackgroundWithDisplayCutout:Lcom/samsung/android/systemui/sidescreen/EdgeBackgroundWithDisplayCutout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMenusMode:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->isInFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mScreenDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mLastFocusedWindowingMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStackDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/systemui/sidescreen/SideScreenController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSideScreenVisible:Z

    return p1
.end method

.method private initializeSnapAlgorithm()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayWidth:I

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayHeight:I

    iget-object v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStableInsets:Landroid/graphics/Rect;

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDockSide:I

    if-nez v0, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    iget-boolean v8, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMinimized:Z

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayWidth:I

    iget v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayHeight:I

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStableInsets:Landroid/graphics/Rect;

    iget v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDockSide:I

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    nop

    move v1, v2

    :goto_1
    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getFixedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :goto_2
    return-void
.end method

.method private isInFocusMode()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMenusMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mMenusMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayHeight:I

    return v0
.end method

.method getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mDisplayWidth:I

    return v0
.end method

.method getSideScreenVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSideScreenVisible:Z

    return v0
.end method

.method getStableInset()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStableInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindowManager()Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSideScreenWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    return-object v0
.end method

.method isUnFolding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mLidOpened:Z

    return v0
.end method

.method isUserSetupComplete()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUserSetupComplete()Z

    move-result v0

    return v0
.end method

.method updateStackDividerColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStackDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mStackDivider:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->updateStackDividerColor(Z)V

    :cond_0
    return-void
.end method

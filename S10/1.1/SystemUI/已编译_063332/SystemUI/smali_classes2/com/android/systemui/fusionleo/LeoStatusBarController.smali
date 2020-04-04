.class public Lcom/android/systemui/fusionleo/LeoStatusBarController;
.super Ljava/lang/Object;
.source "LeoStatusBarController.java"

# interfaces
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCarrierLabelView:Lcom/android/keyguard/CarrierText;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mContext:Landroid/content/Context;

.field private mGrandParentView:Landroid/view/ViewGroup;

.field private mLeftContainer:Landroid/view/ViewGroup;

.field private mLeoCarrierPosition:I

.field private mLeoClockPosition:I

.field private mLeoEndAction:Lcom/android/systemui/fusionleo/LeoEndAction;

.field private mLeoLOGOPosition:I

.field private mLeoLogoShow:Z

.field private mLeoNetworkTrafficPosition:I

.field private mLeoStartAction:Lcom/android/systemui/fusionleo/LeoStartAction;

.field private mLeoTempPosition:I

.field private mLogoView:Lcom/android/systemui/fusionleo/LeoLogoView;

.field private mMiddleContainer:Landroid/view/ViewGroup;

.field private mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field private mNetworkTrafficView:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

.field private mRightContainer:Landroid/view/ViewGroup;

.field private mTempDisplay:Z

.field private mTempView:Lcom/android/systemui/fusionleo/LeoTemp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/fusionleo/LeoStatusBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    const-string v1, "id/left_clock_container"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v1, "id/middle_clock_container"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mMiddleContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v1, "id/right_clock_container"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v1, "id/networkSpeed"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mCarrierLabelView:Lcom/android/keyguard/CarrierText;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v1, "leo_statusbar_traffic_view"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mNetworkTrafficView:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fusionleo/LeoEndAction;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoEndAction:Lcom/android/systemui/fusionleo/LeoEndAction;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fusionleo/LeoStartAction;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoStartAction:Lcom/android/systemui/fusionleo/LeoStartAction;

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    new-instance v0, Lcom/android/systemui/fusionleo/LeoLogoView;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/fusionleo/LeoLogoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLogoView:Lcom/android/systemui/fusionleo/LeoLogoView;

    new-instance v0, Lcom/android/systemui/fusionleo/LeoTemp;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/fusionleo/LeoTemp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mTempView:Lcom/android/systemui/fusionleo/LeoTemp;

    new-instance v0, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarLogo:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarNetworkTraffic:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarCarrier:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarTemp:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarClock:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->StatusbarIcon:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_6

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updatePosition()V

    :cond_7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarLogo:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updatePosition()V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarNetworkTraffic:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updatePosition()V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarCarrier:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updatePosition()V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarTemp:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updatePosition()V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_9

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updatePosition()V

    return-void

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I\'m from China"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "developer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/fusionleo/LeoStatusBarController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarClock:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_b

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updatePosition()V

    return-void

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->StatusbarIcon:[Ljava/lang/String;

    array-length v3, v1

    :goto_6
    if-ge v2, v3, :cond_d

    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updatePosition()V

    return-void

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    return-void

    :array_0
    .array-data 2
        0x73s
        0x61s
        0x6cs
        0x74s
    .end array-data
.end method

.method public updateCarrierLabel(Lcom/android/keyguard/CarrierText;)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierSingleLine:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierColor:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierCustomColorEnabled:I

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarDarkCarrierColor:I

    sget v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierCustomDarkColorEnabled:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrierColor(IIII)V

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierCustom:I

    sget v7, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierSingleLine:I

    sget-object v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierStringA:Ljava/lang/String;

    sget-object v9, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierStringB:Ljava/lang/String;

    const-string v10, "\n"

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/keyguard/CarrierText;->setSingleLine(Z)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierMultiSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/CarrierText;->setTextSize(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/keyguard/CarrierText;->setSingleLine(Z)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierSingleSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/CarrierText;->setTextSize(F)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierFont:I

    const-string v4, "sec-roboto-light"

    invoke-static {v1, v3, v4, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/CarrierText;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierStartPadding:F

    float-to-int v1, v1

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierEndPadding:F

    float-to-int v3, v3

    invoke-virtual {p1, v1, v2, v3, v2}, Lcom/android/keyguard/CarrierText;->setPaddingRelative(IIII)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierOrientation:I

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoCarrierPosition:I

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBar5Gicon:Z

    invoke-virtual {p1, v1}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier5G(Z)V

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Lcom/android/keyguard/CarrierText;->setGravity(I)V

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarCarrierShow:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    return-void
.end method

.method public updatePosition()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarNetworkState:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setVisibility(I)V

    :cond_1
    :goto_0
    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarStatusbarNetworkOrientation:I

    iput v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoNetworkTrafficPosition:I

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarDarkLogoOrientation:I

    iput v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoLOGOPosition:I

    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLogoShow:Z

    iput-boolean v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoLogoShow:Z

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempOrientation:I

    iput v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoTempPosition:I

    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempEnabled:Z

    iput-boolean v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mTempDisplay:Z

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarClockOrientation:I

    iput v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoClockPosition:I

    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLeftGestureEnable:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoStartAction:Lcom/android/systemui/fusionleo/LeoStartAction;

    invoke-virtual {v3, v1}, Lcom/android/systemui/fusionleo/LeoStartAction;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoStartAction:Lcom/android/systemui/fusionleo/LeoStartAction;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fusionleo/LeoStartAction;->setVisibility(I)V

    :goto_1
    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarRightGestureEnable:Z

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoEndAction:Lcom/android/systemui/fusionleo/LeoEndAction;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fusionleo/LeoEndAction;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoEndAction:Lcom/android/systemui/fusionleo/LeoEndAction;

    invoke-virtual {v1, v2}, Lcom/android/systemui/fusionleo/LeoEndAction;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mCarrierLabelView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updateCarrierLabel(Lcom/android/keyguard/CarrierText;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStatusBarController;->updateResources()V

    return-void
.end method

.method public updateResources()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v1, "id/system_icon_area"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v3, "id/left_clock_container"

    invoke-static {v3}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mNetworkTrafficView:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    nop

    move-object v6, v5

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget v6, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoNetworkTrafficPosition:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_5

    if-eqz v6, :cond_5

    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoClockPosition:I

    const/4 v10, 0x2

    if-eq v9, v7, :cond_2

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    nop

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v11, "dimen/status_bar_left_clock_end_padding"

    invoke-static {v11}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "dimen/status_bar_left_clock_starting_padding"

    invoke-static {v12}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoClockPosition:I

    if-eq v12, v7, :cond_4

    if-eq v12, v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v10, v11, v8, v9, v8}, Lcom/android/systemui/statusbar/policy/Clock;->setPaddingRelative(IIII)V

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v10, v9, v8, v11, v8}, Lcom/android/systemui/statusbar/policy/Clock;->setPaddingRelative(IIII)V

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v10, v9, v8, v9, v8}, Lcom/android/systemui/statusbar/policy/Clock;->setPaddingRelative(IIII)V

    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLogoView:Lcom/android/systemui/fusionleo/LeoLogoView;

    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const/16 v11, 0x8

    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoLOGOPosition:I

    if-eq v10, v7, :cond_6

    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    nop

    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoLogoShow:Z

    if-eqz v10, :cond_7

    invoke-virtual {v9, v8}, Lcom/android/systemui/fusionleo/LeoLogoView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/fusionleo/LeoLogoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v11}, Lcom/android/systemui/fusionleo/LeoLogoView;->setVisibility(I)V

    :cond_8
    :goto_4
    iget-object v10, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mTempView:Lcom/android/systemui/fusionleo/LeoTemp;

    iget-object v12, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v12, :cond_b

    if-eqz v10, :cond_b

    iget-object v12, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v12, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v12, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoTempPosition:I

    if-eq v12, v7, :cond_9

    iget-object v12, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_9
    iget-object v12, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    nop

    :goto_5
    iget-boolean v12, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mTempDisplay:Z

    if-eqz v12, :cond_a

    invoke-virtual {v10, v8}, Lcom/android/systemui/fusionleo/LeoTemp;->setVisibility(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v10, v11}, Lcom/android/systemui/fusionleo/LeoTemp;->setVisibility(I)V

    :cond_b
    :goto_6
    iget-object v11, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mCarrierLabelView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    nop

    move-object v13, v12

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget v13, p0, Lcom/android/systemui/fusionleo/LeoStatusBarController;->mLeoCarrierPosition:I

    if-nez v13, :cond_c

    invoke-virtual {v3, v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_7
    return-void
.end method

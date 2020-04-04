.class public Lcom/android/systemui/fusionleo/LeoBatteryBarController;
.super Landroid/widget/LinearLayout;
.source "LeoBatteryBarController.java"

# interfaces
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# static fields
.field protected static final CURRENT_LOC:I = 0x1

.field public static final STYLE_REGULAR:I = 0x0

.field public static final STYLE_REVERSE:I = 0x2

.field public static final STYLE_SYMMETRIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BatteryBarController"


# instance fields
.field alternateStyleBar:Lcom/android/systemui/fusionleo/LeoBatteryBar;

.field isAttached:Z

.field isVertical:Z

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLocation:I

.field mLocationToLookFor:I

.field mStyle:I

.field mainBar:Lcom/android/systemui/fusionleo/LeoBatteryBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mStyle:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mLocation:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mLocationToLookFor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryLevel:I

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryCharging:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isAttached:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    new-instance v1, Lcom/android/systemui/fusionleo/LeoBatteryBarController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController$1;-><init>(Lcom/android/systemui/fusionleo/LeoBatteryBarController;)V

    iput-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string v1, "http://schemas.android.com/apk/res/com.android.systemui"

    const-string v2, "viewLocation"

    invoke-interface {p2, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mLocationToLookFor:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/LeoBatteryBarController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/fusionleo/LeoBatteryBarController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/fusionleo/LeoBatteryBarController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryCharging:Z

    return p1
.end method


# virtual methods
.method public addBars()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarThickness:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    if-eqz v4, :cond_0

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    if-eqz v4, :cond_1

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig$Prefs;->getLastBatteryLevel(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryLevel:I

    iget v4, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mStyle:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/systemui/fusionleo/LeoBatteryBar;

    iget-object v7, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryCharging:Z

    iget v9, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryLevel:I

    iget-boolean v10, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/android/systemui/fusionleo/LeoBatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    const/high16 v8, 0x43340000    # 180.0f

    if-ne v4, v7, :cond_4

    new-instance v4, Lcom/android/systemui/fusionleo/LeoBatteryBar;

    iget-object v7, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v9, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryCharging:Z

    iget v10, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryLevel:I

    iget-boolean v11, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    invoke-direct {v4, v7, v9, v10, v11}, Lcom/android/systemui/fusionleo/LeoBatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    new-instance v7, Lcom/android/systemui/fusionleo/LeoBatteryBar;

    iget-object v9, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v10, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryCharging:Z

    iget v11, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryLevel:I

    iget-boolean v12, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/android/systemui/fusionleo/LeoBatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    iget-boolean v9, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    if-eqz v9, :cond_3

    invoke-virtual {v7, v8}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->setRotation(F)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v4, v8}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v8}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->setRotation(F)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v4, v8}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    new-instance v4, Lcom/android/systemui/fusionleo/LeoBatteryBar;

    iget-object v7, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v9, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryCharging:Z

    iget v10, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mBatteryLevel:I

    iget-boolean v11, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    invoke-direct {v4, v7, v9, v10, v11}, Lcom/android/systemui/fusionleo/LeoBatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    invoke-virtual {v4, v8}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->setRotation(F)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    :goto_2
    nop

    :goto_3
    return-void
.end method

.method protected isLocationValid(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mLocationToLookFor:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onConfigurationChanged$0$LeoBatteryBarController()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->updateSettings()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isAttached:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isVertical:Z

    iput-boolean v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarMainBattery:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->updateSettings()V

    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/fusionleo/-$$Lambda$LeoBatteryBarController$Q9zC0u7wLa5Qz0-tMIoSsrVd7Wg;

    invoke-direct {v1, p0}, Lcom/android/systemui/fusionleo/-$$Lambda$LeoBatteryBarController$Q9zC0u7wLa5Qz0-tMIoSsrVd7Wg;-><init>(Lcom/android/systemui/fusionleo/LeoBatteryBarController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->removeBars()V

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarMainBattery:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->updateSettings()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeBars()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->removeAllViews()V

    return-void
.end method

.method public updateSettings()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarStyle:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mStyle:I

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarBatteryBarLocation:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mLocation:I

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->mLocation:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->isLocationValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->removeBars()V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->addBars()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->removeBars()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->setVisibility(I)V

    :goto_0
    return-void
.end method

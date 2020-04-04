.class public Lcom/android/systemui/fusionleo/LeoMainBattery;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;
.source "LeoMainBattery.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private ACTION_BATTERY:Ljava/lang/String;

.field public mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomBattery:Landroid/graphics/drawable/Drawable;

.field private mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;

.field private mCustomBatteryPKG:Ljava/lang/String;

.field private mIsPlugged:Z

.field private mShouldUseQsTintColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->ACTION_BATTERY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mShouldUseQsTintColor:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/LeoMainBattery;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fusionleo/LeoMainBattery;->handleBatteryChange(IZ)V

    return-void
.end method

.method private getCustomBattery(Ljava/lang/String;)V
    .locals 5

    const-string v0, "drawable"

    invoke-direct {p0, p1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->isCustomBatteryInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "stat_sys_battery"

    invoke-virtual {v3, v4, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBattery:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "stat_sys_battery_charge"

    invoke-virtual {v3, v4, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBattery:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private handleBatteryChange(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iput p1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mBatteryLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mIsPlugged:Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBattery:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mBatteryLevel:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setImageLevel(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBattery:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mBatteryLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mIsPlugged:Z

    new-instance v0, Lcom/android/systemui/fusionleo/LeoMainBattery$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/LeoMainBattery$1;-><init>(Lcom/android/systemui/fusionleo/LeoMainBattery;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->updateSettings()V

    return-void
.end method

.method private isCustomBatteryInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private updateVisibility(I)V
    .locals 2

    const/16 v0, 0x8

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getColorForIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->ACTION_BATTERY:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->updateSettings()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_battery_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setBatteryLightColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setBatteryDarkColor()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->getColorForDarkIntensity(FII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mNonAdaptedColor:I

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

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mNonAdaptedColor:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mNonAdaptedColor:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mUseWallpaperTextColor:Z

    if-nez v0, :cond_2

    const v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setAlpha(F)V

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mNonAdaptedColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_qs_battery_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mShouldUseQsTintColor:Z

    if-eqz v0, :cond_3

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mNonAdaptedColor:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLightModeFillColor:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/fusionleo/LeoMainBattery;->getColorForIntensity(FII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mNonAdaptedColor:I

    :cond_4
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public setBatteryDarkColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarMainBatteryCustomDarkColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarMainBatteryDarkColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    :goto_0
    return v0
.end method

.method public setBatteryLightColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarMainBatteryCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarMainBatteryColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLightModeFillColor:I

    :goto_0
    return v0
.end method

.method public setForceQsTintColor(ZF)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mShouldUseQsTintColor:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const v2, -0x42000001    # -0.12499999f

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/fusionleo/LeoMainBattery;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public updateBatteryColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_battery_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mNonAdaptedColor:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setBatteryDarkColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setBatteryLightColor()I

    move-result v0

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public updateSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarMainBatteryStartPadding:F

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarMainBatteryEndPadding:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setLeoImagePadding(FF)V

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusbarMainBatteryPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->getLeMianBatteryStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBatteryPKG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mCustomBatteryPKG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->getCustomBattery(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mBatteryLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mIsPlugged:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->handleBatteryChange(IZ)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusbarMainBatteryEnabled:I

    invoke-direct {p0, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->updateVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->updateBatteryColor()V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mUseWallpaperTextColor:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mUseWallpaperTextColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mUseWallpaperTextColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mContext:Landroid/content/Context;

    const-string v1, "attr/wallpaperTextColor"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/fusionleo/LeoMainBattery;->mNonAdaptedColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoMainBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

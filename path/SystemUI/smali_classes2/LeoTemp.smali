.class public Lcom/android/systemui/fusionleo/LeoTemp;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;
.source "LeoTemp.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final TEMP:Ljava/lang/String; = " \u2103"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTempDisplay:Z

.field private mTempDisplayFont:I

.field private mTempDisplaySize:I

.field private mTempDisplayStyle:I

.field private final mTemperatureReceiver:Landroid/content/BroadcastReceiver;

.field private final mTemperatureTick:Ljava/lang/Runnable;

.field private mUseWallpaperTextColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/LeoTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fusionleo/LeoTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/fusionleo/LeoTemp$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/LeoTemp$1;-><init>(Lcom/android/systemui/fusionleo/LeoTemp;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/fusionleo/LeoTemp$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/LeoTemp$2;-><init>(Lcom/android/systemui/fusionleo/LeoTemp;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTemperatureTick:Ljava/lang/Runnable;

    const-string v0, "leo_statusbar_temp_view"

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setGravity(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setSingleLine(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/LeoTemp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fusionleo/LeoTemp;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTemperatureTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getBatteryTemperature()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getBatteryTemp()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCPUTemperature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/fusionleo/LeoTemp;->getCpuTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2103"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLeoTempVoltageData(I)Ljava/lang/String;
    .locals 9

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getCPUTemperature()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getBatteryTemperature()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu"

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoTemp;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoTemp;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eq p1, v8, :cond_1

    const/4 v8, 0x2

    if-eq p1, v8, :cond_0

    return-object v7

    :cond_0
    return-object v6

    :cond_1
    return-object v5
.end method


# virtual methods
.method public getLeoTempVoltage()V
    .locals 6

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTempDisplay:Z

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempStyle:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTempDisplayStyle:I

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempFont:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTempDisplayFont:I

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempSize:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTempDisplaySize:I

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTempDisplay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTemperatureTick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long v2, v2, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTempDisplayStyle:I

    invoke-direct {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->getLeoTempVoltageData(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTempDisplayFont:I

    const/4 v1, 0x1

    const-string v2, "roboto-regular"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/fusionleo/LeoTemp;->setLeoTextFont(ILjava/lang/String;I)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempStartPadding:F

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempEndPadding:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoTemp;->setLeoTextPadding(FF)V

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTempDisplaySize:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setLeoTextSize(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_statusbar_temp_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mNonAdaptedColor:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTempDarkColor()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTempLightColor()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getLeoTempVoltage()V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_statusbar_temp_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTempLightColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTempDarkColor()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/fusionleo/LeoTemp;->getColorForDarkIntensity(FII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mNonAdaptedColor:I

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

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mNonAdaptedColor:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mNonAdaptedColor:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mUseWallpaperTextColor:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mTemperatureTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoTemp;->getLeoTempVoltage()V

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public setTempDarkColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempCustomDarkColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarDarkTempColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    :goto_0
    return v0
.end method

.method public setTempLightColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarTempColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLightModeFillColor:I

    :goto_0
    return v0
.end method

.method public useWallpaperTextColor(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mUseWallpaperTextColor:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mUseWallpaperTextColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mUseWallpaperTextColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mContext:Landroid/content/Context;

    const-string v1, "attr/wallpaperTextColor"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/fusionleo/LeoTemp;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoTemp;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

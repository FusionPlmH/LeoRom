.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DevicePickerActivity.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static canLaunchQuickBtView:Z

.field public static mMyPlacesCalled:Z


# instance fields
.field fromHelp:Z

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mBTEnableDisplayed:Z

.field private mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mInitiateScan:Z

.field private mIsDisabledAppBar:Z

.field private mIsExpandedAppBar:Z

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsDisabledAppBar:Z

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsExpandedAppBar:Z

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private applyExtendedAppBar()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3ec4b5dd    # 0.3842f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070618

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsExpandedAppBar:Z

    invoke-virtual {v3, v4}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    if-lez v2, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsDisabledAppBar:Z

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x258

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x1e0

    if-ge v3, v5, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ge v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ge v3, v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getScreenHeightDp()I
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method private measureContentFrame()V
    .locals 15

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f070520

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07051f

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v5, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v6, 0x320

    if-lt v5, v6, :cond_0

    iget v6, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getScreenHeightDp()I

    move-result v6

    if-le v5, v6, :cond_0

    int-to-float v7, v6

    int-to-float v8, v5

    div-float v2, v7, v8

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v1, v7, v8

    :cond_0
    const v6, 0x7f0a01d0

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/DevicePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f0a01ca

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/DevicePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f0a01cb

    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/DevicePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    nop

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    nop

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v12, "DevicePickerActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "measureContentFrame : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    const-string v0, "DevicePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged :: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->applyExtendedAppBar()V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->measureContentFrame()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    const-string v2, "DevicePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate :: mInitiateScan : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "DevicePickerActivity"

    const-string v1, "onCreate :: Intent.getAction() is return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v3, "DevicePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate :: getAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    goto :goto_1

    :cond_2
    const-string v3, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sput-boolean v1, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_4

    const-string v0, "DevicePickerActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_5
    const v3, 0x7f0d0029

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setContentView(I)V

    const v3, 0x7f0a001d

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const v4, 0x7f0a019a

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const v4, 0x7f0a0087

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout;

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->applyExtendedAppBar()V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->measureContentFrame()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromHelp"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v5, 0x2f

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    :cond_6
    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onDestroy of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onPause of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    const-string v0, "DevicePickerActivity"

    const-string v1, "onPostResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "DevicePickerActivity"

    const-string v1, "Does not start scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    const-string v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside onResume with mBTEnableDisplayed= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_BT_SupportMissingPhone"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "lock"

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setTitle(I)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

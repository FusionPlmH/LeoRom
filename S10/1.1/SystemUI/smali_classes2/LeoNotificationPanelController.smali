.class public Lcom/android/systemui/fusionleo/LeoNotificationPanelController;
.super Ljava/lang/Object;
.source "LeoNotificationPanelController.java"

# interfaces
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fusionleo/LeoNotificationPanelController$LeoGestureDetector;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLeoAnalogClock:Lcom/android/systemui/fusionleo/AnalogClock;

.field private mLeoDeviceInfoView:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

.field private mLeoDoubleTapGesture:Landroid/view/GestureDetector;

.field private mLeoDoubleTapToSleepAnywhere:Z

.field private mLeoDoubleTapToSleepEnabled:Z

.field private mLeoPanelCarrierView:Lcom/android/keyguard/CarrierText;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPulldownPanel:Landroid/widget/LinearLayout;

.field private mStatusBarHeaderHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/LeoNotificationPanelController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateLeoDetector()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardDoubleTapToSleepEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDoubleTapToSleepEnabled:Z

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardDoubleTapToSleepAnywhere:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDoubleTapToSleepAnywhere:Z

    return-void
.end method


# virtual methods
.method public LeoDetector()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/fusionleo/LeoNotificationPanelController$LeoGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/fusionleo/LeoNotificationPanelController$LeoGestureDetector;-><init>(Lcom/android/systemui/fusionleo/LeoNotificationPanelController;Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDoubleTapGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Leo Salt"

    const-string v2, "Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->updateLeoDetector()V

    return-void
.end method

.method public intLeoPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 8

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v1, "id/notification_panel_carrier_label"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoPanelCarrierView:Lcom/android/keyguard/CarrierText;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v1, "leo_pulldown_panel"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mPulldownPanel:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/fusionleo/AnalogClock;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/fusionleo/AnalogClock;

    new-instance v0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDeviceInfoView:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->updateSettings()V

    new-instance v0, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->NotificationPanel:[Ljava/lang/String;

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
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoDeviceInfo:[Ljava/lang/String;

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
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->StatusbarIcon:[Ljava/lang/String;

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
    return-void
.end method

.method public loadLeoDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen/status_bar_header_height_expanded"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mStatusBarHeaderHeight:I

    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->NotificationPanel:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->updateSettings()V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->StatusbarIcon:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->updateSettings()V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
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

    sget-object v1, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoDeviceInfo:[Ljava/lang/String;

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->updateSettings()V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void

    :array_0
    .array-data 2
        0x73s
        0x61s
        0x6cs
        0x74s
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDoubleTapToSleepEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mStatusBarHeaderHeight:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDoubleTapGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDoubleTapToSleepAnywhere:Z

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDoubleTapGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSettings()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mPulldownPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mPulldownPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mPulldownPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDeviceInfoView:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-virtual {v0}, Lcom/android/systemui/fusionleo/AnalogClock;->updateAnalogClock()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/fusionleo/AnalogClock;

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelAnalogClockShow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->setVisibility(I)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoEnabled:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoDeviceInfoView:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-virtual {v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setLeoDeviceInfo()V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/android/systemui/fusionleo/AnalogClock;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mLeoPanelCarrierView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCarrierColor:I

    invoke-virtual {v1, v3}, Lcom/android/keyguard/CarrierText;->setLeoTogePanelCarrierColor(I)V

    sget v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCustomCarrier:I

    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCarrierMulti:I

    sget-object v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCustomCarrierStringA:Ljava/lang/String;

    sget-object v7, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCustomCarrierStringB:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    sget v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCarrierSymbol:I

    sget-object v9, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCustomCarrierSymbol:Ljava/lang/String;

    const-string v10, "\uff5c"

    invoke-static {v3, v8, v9, v10}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoSymbolStyle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBar5Gicon:Z

    invoke-virtual {v1, v3}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier5G(Z)V

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCarrierSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/CarrierText;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->mContext:Landroid/content/Context;

    sget v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelCarrierFont:I

    const-string v5, "sec-roboto-light"

    invoke-static {v3, v4, v5, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/CarrierText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.class public Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeoStatusBar"
.end annotation


# instance fields
.field public mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field public mContext:Landroid/content/Context;

.field public mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field public mKeyguardLeoBattery:Lcom/android/systemui/fusionleo/LeoMainBattery;

.field public mKeyguardStatus:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field public mLeoBattery:Lcom/android/systemui/fusionleo/LeoMainBattery;

.field public mLeoStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mLeoStatusBarbgView:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setLeBackground()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarbgView:Landroid/widget/FrameLayout;

    sget-boolean v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarShowBG:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-boolean v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarShowBG:Z

    if-eqz v4, :cond_4

    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarStrokeEnabled:Z

    sget v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarStrokeThickness:I

    sget v21, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarStrokeDashWidth:I

    sget v22, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarStrokeDashGap:I

    sget v23, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarStrokeDashColor:I

    sget v24, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientBackGroundCornerRadius:I

    sget v25, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarWallpaperColor:I

    sget v26, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarBgWallpaperAlpha:I

    sget-object v27, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarBgWallpaper:Ljava/lang/String;

    sget v15, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarBGStyle:I

    if-nez v15, :cond_1

    sget v11, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarBgBasicColor:I

    move v5, v3

    move v6, v4

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    invoke-static/range {v5 .. v11}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoBasicColor(ZIIIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move v0, v15

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    if-ne v15, v5, :cond_2

    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientBgStartColor:I

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientBgCenterColor:I

    sget v7, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientBgEndColor:I

    sget v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientColorFour:I

    sget v9, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientColorFive:I

    sget v10, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientColorSix:I

    sget v11, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientEnableCenterColor:I

    sget v12, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarBgGradientBgStyle:I

    sget v19, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientBgType:I

    sget v20, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarGradientBackGroundColorRadius:I

    move v13, v3

    move v14, v4

    move v0, v15

    move/from16 v15, v21

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v24

    invoke-static/range {v5 .. v20}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->LeoGradientDrawable(IIIIIIIIZIIIIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    move v0, v15

    :goto_1
    const/16 v5, 0x3e7

    if-ne v0, v5, :cond_3

    if-eqz v27, :cond_3

    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarBlurBgDegree:I

    sget v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarWallpaperColorEnable:I

    sget-boolean v10, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarBgWallpaperAlphaEnable:Z

    sget-boolean v12, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoUesrStatusbarBgWallpaperBlurEnabled:Z

    move-object/from16 v6, v27

    move/from16 v9, v25

    move/from16 v11, v26

    invoke-static/range {v5 .. v12}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoWallpaper(Landroid/content/Context;Ljava/lang/String;IIIZIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    goto :goto_2

    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public LeoStatusBar(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 8

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardStatus:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->uploadLeoStatusBar()V

    new-instance v0, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarMainBattery:[Ljava/lang/String;

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
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarClock:[Ljava/lang/String;

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
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->CustomStatusbarBg:[Ljava/lang/String;

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
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoKeyguardCarrier:[Ljava/lang/String;

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
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

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
    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->StatusbarIcon:[Ljava/lang/String;

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
    return-void
.end method

.method public getUIdentifier(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarMainBattery:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->uploadLeoStatusBar()V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->uploadLeoStatusBar()V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->CustomStatusbarBg:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->uploadLeoStatusBar()V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoKeyguardCarrier:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->uploadLeoStatusBar()V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarClock:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_9

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->uploadLeoStatusBar()V

    return-void

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_b

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->uploadLeoStatusBar()V

    return-void

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->StatusbarIcon:[Ljava/lang/String;

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_d

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->uploadLeoStatusBar()V

    return-void

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method public setViewSize(Landroid/widget/ImageView;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateCarrierLabel(Lcom/android/keyguard/CarrierText;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCarrierColor:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCarrierCustomColorEnabled:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardDarkCarrierColor:I

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCustomDarkColorEnabled:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrierColor(IIII)V

    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCustomCarrier:I

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCarrierMulti:I

    sget-object v7, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCustomCarrierStringA:Ljava/lang/String;

    sget-object v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCustomCarrierStringB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCarrierSymbol:I

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCustomCarrierSymbol:Ljava/lang/String;

    const-string v3, ","

    invoke-static {v0, v1, v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoSymbolStyle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCarrier:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCarrierSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setTextSize(F)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBar5Gicon:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier5G(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardCarrierFont:I

    const-string v3, "sec-roboto-condensed"

    invoke-static {v0, v2, v3, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public uploadLeoStatusBar()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarbgView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardStatus:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mCarrierText:Lcom/android/keyguard/CarrierText;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->updateCarrierLabel(Lcom/android/keyguard/CarrierText;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const-string v1, "leo_battery_view"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->getUIdentifier(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardStatus:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->getUIdentifier(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/fusionleo/LeoMainBattery;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoBattery:Lcom/android/systemui/fusionleo/LeoMainBattery;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardStatus:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/fusionleo/LeoMainBattery;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardLeoBattery:Lcom/android/systemui/fusionleo/LeoMainBattery;

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarSignalOrientation:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->setLeBackground()V

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusbarMainBatterySize:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoBattery:Lcom/android/systemui/fusionleo/LeoMainBattery;

    invoke-virtual {p0, v4, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->setViewSize(Landroid/widget/ImageView;II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardLeoBattery:Lcom/android/systemui/fusionleo/LeoMainBattery;

    invoke-virtual {p0, v4, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->setViewSize(Landroid/widget/ImageView;II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoBattery:Lcom/android/systemui/fusionleo/LeoMainBattery;

    invoke-virtual {v4}, Lcom/android/systemui/fusionleo/LeoMainBattery;->updateSettings()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardLeoBattery:Lcom/android/systemui/fusionleo/LeoMainBattery;

    invoke-virtual {v4}, Lcom/android/systemui/fusionleo/LeoMainBattery;->updateSettings()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->updateSettings()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->updateSettings()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v5, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->getUIdentifier(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v6, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->getUIdentifier(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mLeoStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v7, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->getUIdentifier(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    nop

    move-object v8, v7

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-nez v2, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    sget-boolean v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoMiniPopEnabled:Z

    invoke-static {v8}, Lcom/android/systemui/util/LeoDrawable;->setMinipopVisibility(Z)V

    sget-boolean v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoFloatBallEnabled:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->addBallView(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar$LeoStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->removeBallView(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

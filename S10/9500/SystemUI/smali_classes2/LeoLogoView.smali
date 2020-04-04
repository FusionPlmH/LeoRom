.class public Lcom/android/systemui/fusionleo/LeoLogoView;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;
.source "LeoLogoView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mAttached:Z

.field private mLeoLogoStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/LeoLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fusionleo/LeoLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "leo_statusbar_logo_view"

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoLogoView;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mAttached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mAttached:Z

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->updateSettings()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_statusbar_logo_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->setLogoLightColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->setLogoDarkColor()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/fusionleo/LeoLogoView;->getColorForDarkIntensity(FII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mNonAdaptedColor:I

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

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mNonAdaptedColor:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mNonAdaptedColor:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mUseWallpaperTextColor:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mNonAdaptedColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoLogoView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mAttached:Z

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public setLogoDarkColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLogoCustomDarkColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarDarkLogoColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    :goto_0
    return v0
.end method

.method public setLogoLightColor()I
    .locals 2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLogoCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLogoColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLightModeFillColor:I

    :goto_0
    return v0
.end method

.method public updateLeoLogo()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->LogoIcon:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mLeoLogoStyle:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoLogoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateLogoColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_statusbar_logo_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mNonAdaptedColor:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->mDarkModeFillColor:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->setLogoDarkColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->setLogoLightColor()I

    move-result v0

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoLogoView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public updateSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLogoStyle:I

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mLeoLogoStyle:I

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLogoStartPadding:F

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLogoEndPadding:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoLogoView;->setLeoImagePadding(FF)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLogoSize:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoLogoView;->setLeoIconSize(F)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->updateLeoLogo()V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoLogoView;->updateLogoColor()V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mUseWallpaperTextColor:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mUseWallpaperTextColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mUseWallpaperTextColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mContext:Landroid/content/Context;

    const-string v1, "attr/wallpaperTextColor"

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoLogoView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/fusionleo/LeoLogoView;->mNonAdaptedColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/fusionleo/LeoLogoView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

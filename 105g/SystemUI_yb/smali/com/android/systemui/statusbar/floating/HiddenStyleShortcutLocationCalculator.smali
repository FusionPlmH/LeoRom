.class public Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;
.super Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;
.source "HiddenStyleShortcutLocationCalculator.java"


# instance fields
.field private mIconBottomMargin:I

.field private mIconBottomMarginLand:I

.field private mIconSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getIconBottomMargin()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMarginLand:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMargin:I

    return v0
.end method

.method public getScreenRotation()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    return v0
.end method

.method public getShortcutLocation(IIII)Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    new-instance v0, Landroid/graphics/Point;

    sub-int/2addr v1, p2

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    sub-int v2, p4, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    add-int/2addr v2, p3

    sub-int/2addr v1, p2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    mul-int/2addr v1, v3

    add-int/2addr v1, p4

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    sub-int v1, p3, v1

    add-int/lit8 v2, p2, -0x1

    mul-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    mul-int/2addr v2, v3

    add-int/2addr v2, p4

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public loadDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->setInDisplayFingerprintSensorPosition(Landroid/content/Context;)V

    sget v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    sget v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_IMAGE_SIZE:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMarginLand:I

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMargin:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMargin:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMarginLand:I

    :goto_0
    return-void
.end method

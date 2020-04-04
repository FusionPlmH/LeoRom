.class public Lcom/android/systemui/fusionleo/LeoKeyguardWeather;
.super Landroid/widget/LinearLayout;
.source "LeoKeyguardWeather.java"

# interfaces
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# instance fields
.field private i:I

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mComponent:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mWidgetClass:Ljava/lang/String;

.field private mWidgetId:I

.field private mWidgetPackage:Ljava/lang/String;

.field private mWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->i:I

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather$1;-><init>(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private GetWidget()Landroid/appwidget/AppWidgetHostView;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->WidgetData(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->WidgetDataName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetClass:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/fusionleo/LeoProvider/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v1, v4, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetId:I

    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetClass:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mComponent:Landroid/content/ComponentName;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x2

    const-string v6, "appWidgetCategory"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    const-class v6, Landroid/appwidget/AppWidgetManager;

    const-string v7, "bindAppWidgetId"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    const-class v10, Landroid/content/ComponentName;

    aput-object v10, v9, v2

    const-class v10, Landroid/os/Bundle;

    aput-object v10, v9, v5

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-array v9, v8, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mComponent:Landroid/content/ComponentName;

    aput-object v3, v9, v2

    aput-object v1, v9, v5

    invoke-virtual {v6, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetId:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetId:I

    invoke-virtual {v3, v5, v6, v2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetId:I

    invoke-virtual {v3, v5, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetHostView;->setMinimumHeight(I)V

    iget v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetHostView;->setMinimumWidth(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/fusionleo/LeoProvider/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    aget-object v8, v9, v8

    const/16 v9, 0x15e

    invoke-static {v7, v8, v9}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    return-object v4

    :cond_2
    :goto_0
    return-object v4
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->i:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->i:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;)Landroid/appwidget/AppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetHost;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/fusionleo/LeoKeyguardWeather;Landroid/appwidget/AppWidgetManager;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p1
.end method

.method private initUI()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->GetWidget()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->setPadding(IIII)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->setGravity(I)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->startView()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->KeyguardWeather:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->startView()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetView:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    const-string v2, "appWidgetCategory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetView:Landroid/view/View;

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected startView()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->initUI()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardWeather;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    :cond_1
    return-void
.end method

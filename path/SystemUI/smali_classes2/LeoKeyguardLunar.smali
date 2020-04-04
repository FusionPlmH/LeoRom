.class public Lcom/android/systemui/fusionleo/LeoKeyguardLunar;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "LeoKeyguardLunar.java"

# interfaces
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# instance fields
.field private leolunar:Ljava/lang/String;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->initView()V

    return-void
.end method

.method private initView()V
    .locals 8

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->updateKeyguardLunar()V

    new-instance v0, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoKeyguardLunar:[Ljava/lang/String;

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
    return-void
.end method

.method private updateKeyguardLunar()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->ioChinese()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunar:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoLunar;-><init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V

    sget-boolean v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunarFestivalSymbolEnabled:Z

    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunarZodiacSymbolEnabled:Z

    sget v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunarMonthStyle:I

    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunarStyle:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->toLeoLunarChineseLunar(ZZII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->leolunar:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->leolunar:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunarSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->mContext:Landroid/content/Context;

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunarFont:I

    const-string v3, "sec-roboto-condensed"

    invoke-static {v0, v2, v3, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->setTypeface(Landroid/graphics/Typeface;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunarColorEnabled:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardLunarColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->setLeoCustomColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->setLeoRemoveCustomColor()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoKeyguardLunar:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardLunar;->updateKeyguardLunar()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

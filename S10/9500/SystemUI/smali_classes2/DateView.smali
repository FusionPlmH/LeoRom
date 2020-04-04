.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;
.source "DateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DateView"


# instance fields
.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDatePattern:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mLeoIntent:Landroid/content/Intent;

.field private mScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mScreenOn:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->DateView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "MMMd"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/DateView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/DateView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateStatus()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/DateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method private updateStatus()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$2ltwd0JC3ZpBBgrwz5liz_FGPHg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$2ltwd0JC3ZpBBgrwz5liz_FGPHg;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateStatus$0$DateView()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    new-instance v1, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoQSHeadsDate:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    invoke-static {v7}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateClickStyle:I

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoQSHeadsDate:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->onLeoDateClick(ILjava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoQSHeadsDate:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I\'m from China"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "developer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DateView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 2
        0x73s
        0x61s
        0x6cs
        0x74s
    .end array-data
.end method

.method public onLeoDateClick(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLeoIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateVibratorEnabled:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateVibratorLevel:I

    invoke-static {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateClickCollapsePanels:I

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->collapsePanel(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLeoIntent:Landroid/content/Intent;

    invoke-static {v1, v2, p1, p2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->LeoSysUiShortcut(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V

    return-void
.end method

.method protected updateClock()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    :cond_0
    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfig;->mLeoTag:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sans-serif-light"

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderBoxDateSize:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setLeoTextSize(I)V

    goto :goto_0

    :cond_1
    const-string v1, "sec-roboto-light"

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateSize:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setLeoTextSize(I)V

    :goto_0
    sget-boolean v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateDisplayEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setVisibility(I)V

    sget-boolean v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateLunarDisplayEnabled:Z

    new-instance v4, Landroid/text/SpannableString;

    const-string v5, " "

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->updateDateClock(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->isChineseLanguage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/DateView;->updateLunarDivisionClock(ZLjava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->updateLunarClock(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateClickEnabled:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/DateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/DateView;->setClickable(Z)V

    :goto_2
    return-void
.end method

.method public updateDateClock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateFormat:Ljava/lang/String;

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateWeekStyle:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v0, "default_date_format"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DateView;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateWeekLocation:I

    sget-boolean v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateWeekDisplayEnabled:Z

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateWeekSymbolStyle:I

    const/4 v7, 0x0

    move-object v2, p0

    move v5, v1

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/DateView;->getLeoDateStyle(IZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/fusionleo/LeoX/systemui/LeoConfig$TypefaceFonts;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateDateFont:I

    const/4 v7, 0x0

    invoke-static {v5, v6, p2, v7}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusionleo/LeoX/systemui/LeoConfig$TypefaceFonts;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/DateView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateLunarClock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateLunarStyle:I

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateLunarMonthStyle:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/fusionleo/LeoX/systemui/LeoLunar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fusionleo/LeoX/systemui/LeoLunar;-><init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V

    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateLunarFestivalSymbolEnabled:Z

    sget-boolean v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateLunarZodiacSymbolEnabled:Z

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->toLeoLunarChineseLunar(ZZII)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateView"

    const-string v4, "\u4e0d\u54b8\u7684\u76d0\u5df4"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/fusionleo/LeoX/systemui/LeoConfig$TypefaceFonts;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateLunarFont:I

    const/4 v7, 0x0

    invoke-static {v5, v6, p2, v7}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusionleo/LeoX/systemui/LeoConfig$TypefaceFonts;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/DateView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateLunarDivisionClock(ZLjava/lang/String;)V
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\n"

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setSingleLine(Z)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setGravity(I)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoQSheaderDateLunarSymbolStyle:I

    const/4 v2, 0x0

    const-string v3, ","

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DateView;->LeoSaltSymbol(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

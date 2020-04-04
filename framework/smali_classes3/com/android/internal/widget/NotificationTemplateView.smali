.class public Lcom/android/internal/widget/NotificationTemplateView;
.super Landroid/widget/FrameLayout;
.source "NotificationTemplateView.java"


# static fields
.field private static final COLOR_CONTRASTED_PRIMARY:I = -0xa18478

.field private static final COLOR_HEADER:I = -0x32dadadb

.field private static final COLOR_HEADER_INVERT:I = -0x32262627

.field private static final COLOR_TEXT:I = -0x32dadadb

.field private static final COLOR_TEXT_INVERT:I = -0x32262627

.field private static final COLOR_TITLE:I = -0xdadadb

.field private static final COLOR_TITLE_INVERT:I = -0x262627

.field private static final COLOR_TYPO_TEXT:I = -0xdadadb

.field private static final COLOR_TYPO_TEXT_INVERT:I = -0x19191a

.field private static final COLOR_TYPO_TIME:I = -0xc3c3c4

.field private static final COLOR_TYPO_TIME_INVERT:I = -0x2d2d2e

.field private static final DIMMED_BG_COLOR:I = 0x74fafafa

.field private static final DIMMED_BG_COLOR_ON_WHITE:I = -0x58050506

.field public static final MODE_NIO:I = 0x2

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_PUBLIC:I = 0x1

.field public static final MODE_TYPO_PRIVATE:I = 0x3

.field public static final MODE_TYPO_PUBLIC:I = 0x4

.field private static final STACK_SCROLLER_BG_COLOR:I = -0x7f171718

.field private static final STACK_SCROLLER_BG_COLOR_ON_WHITE:I = 0x67a5a5a5

.field private static final TAG:Ljava/lang/String; = "NTV"


# instance fields
.field private final INVERSION_DB:Ljava/lang/String;

.field private mAppNameText:Ljava/lang/String;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mDimmedBGView:Landroid/view/View;

.field private mDimmedBGViewForTypo:Landroid/view/View;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIconView:Landroid/widget/ImageView;

.field private mInvertTextRunnable:Ljava/lang/Runnable;

.field private mIsAdaptiveTextColor:Z

.field private mIsInOpenTheme:Z

.field private mIsWallpaperChangedInOpenTheme:Z

.field private mIsWhiteWallpaper:Z

.field private mNIOBackground:Landroid/graphics/drawable/Drawable;

.field private mNIOBackgroundOnWhite:Landroid/graphics/drawable/Drawable;

.field private mNIODrawable:Landroid/graphics/drawable/Drawable;

.field private mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

.field private mNIOIconHeight:I

.field private mNIOIconPaddingHorizontal:I

.field private mNIOIconPaddingVertical:I

.field private mNIOIconWidth:I

.field private mNIOView:Landroid/widget/ImageView;

.field private mNotificationColor:I

.field private mNotificationMinHeight:I

.field private mNotificationTypoHeight:I

.field private mPrivateText:Ljava/lang/String;

.field private mPrivateTitle:Ljava/lang/String;

.field private mPublicText:Ljava/lang/String;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStackScrollerBGView:Landroid/view/View;

.field private mStackScrollerBGViewForType:Landroid/view/View;

.field private mStartMarginForNIO:I

.field private mTextColorInversion:Z

.field private mTime:J

.field private mTypoBottom:Landroid/widget/RelativeLayout;

.field private mTypoDrawable:Landroid/graphics/drawable/Drawable;

.field private mTypoIcon:Landroid/widget/ImageView;

.field private mTypoText:Landroid/widget/TextView;

.field private mTypoTime:Landroid/widget/DateTimeView;

.field private mTypoTimeForPublicView:Landroid/widget/DateTimeView;

.field private mTypoTitle:Landroid/widget/TextView;

.field private mTypoView:Landroid/view/View;

.field private mViewOpacity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mCurrentMode:I

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    const v1, -0xa38b80

    iput v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    const-string/jumbo v1, "notification_text_color_inversion"

    iput-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->INVERSION_DB:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/NotificationTemplateView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/NotificationTemplateView$1;-><init>(Lcom/android/internal/widget/NotificationTemplateView;)V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mInvertTextRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/internal/widget/NotificationTemplateView$2;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/NotificationTemplateView$2;-><init>(Lcom/android/internal/widget/NotificationTemplateView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationTemplateView;->init()V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationTemplateView;->initColorSet()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/NotificationTemplateView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/NotificationTemplateView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/NotificationTemplateView;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/NotificationTemplateView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/NotificationTemplateView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mInvertTextRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/NotificationTemplateView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeState(I)V
    .locals 5

    const v0, 0x10203ee

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mAppNameText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTimeForPublicView:Landroid/widget/DateTimeView;

    iget-wide v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTime:J

    invoke-virtual {v0, v3, v4}, Landroid/widget/DateTimeView;->setTime(J)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTimeForPublicView:Landroid/widget/DateTimeView;

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTime:Landroid/widget/DateTimeView;

    invoke-virtual {v0, v2}, Landroid/widget/DateTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTime:Landroid/widget/DateTimeView;

    iget-wide v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTime:J

    invoke-virtual {v0, v3, v4}, Landroid/widget/DateTimeView;->setTime(J)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTime:Landroid/widget/DateTimeView;

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTimeForPublicView:Landroid/widget/DateTimeView;

    invoke-virtual {v0, v2}, Landroid/widget/DateTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v4, 0x1020557

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getFontScaledHeight(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private getOpenThemeStackBgColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v1, 0x1060219

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private imgShadow(Landroid/graphics/Bitmap;IIIIIFFZ)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p7

    move/from16 v4, p8

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v2

    sub-float/2addr v9, v3

    int-to-float v11, v1

    sub-float/2addr v11, v4

    invoke-direct {v8, v10, v10, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v11, v0, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v11, v0, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v14, Landroid/graphics/BlurMaskFilter;

    move/from16 v15, p6

    int-to-float v10, v15

    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v14, v10, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    move-object v10, v14

    invoke-virtual {v12}, Landroid/graphics/Paint;->reset()V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v14, p5

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v13}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p9, :cond_0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v16, v7

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v17, v8

    move/from16 v8, p4

    invoke-direct {v4, v8, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v8, p4

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v5, v1, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v7, v0, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    return-object v4
.end method

.method private initColorSet()V
    .locals 14

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v1, 0x1060219

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v2, 0x1060213

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v3, 0x106021a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v4, 0x1060214

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v5, 0x1060218

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v6, 0x1060217

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v7, 0x1060215

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/android/internal/widget/NotificationTemplateView;->makeShadowNIOView(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v8, 0x1020202

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v10, 0x10202ae

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v10, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v12, 0x1020557

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v12, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v13, 0x1020576

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v13, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoText:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTime:Landroid/widget/DateTimeView;

    invoke-virtual {v13, v3}, Landroid/widget/DateTimeView;->setTextColor(I)V

    iget-object v13, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTimeForPublicView:Landroid/widget/DateTimeView;

    invoke-virtual {v13, v3}, Landroid/widget/DateTimeView;->setTextColor(I)V

    return-void
.end method

.method private makeContentView()V
    .locals 4

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mBuilder:Landroid/app/Notification$Builder;

    const v1, 0x10809c0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowProfileBadge(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    const v2, 0x1020016

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x1020557

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x1020202

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mAppNameText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x10202ae

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x1020576

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v2, 0x102057a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz v2, :cond_0

    const v2, -0x262627

    goto :goto_0

    :cond_0
    const v2, -0xdadadb

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private makeShadowNIOView(Landroid/graphics/drawable/Drawable;)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationTemplateView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWallpaperChangedInOpenTheme:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v1, 0x1060217

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v12

    if-eqz v11, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v1, 0x1060216

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, v10

    move v4, v12

    move v5, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/NotificationTemplateView;->imgShadow(Landroid/graphics/Bitmap;IIIIIFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const v4, -0x50506

    const/high16 v5, 0x66000000

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/NotificationTemplateView;->imgShadow(Landroid/graphics/Bitmap;IIIIIFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method private setColorInversion(Z)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTextColorInversion:Z

    if-eq v0, p1, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v1, 0x1020202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v3, 0x10202ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const/4 v8, 0x3

    new-array v8, v8, [F

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 v9, 0x2

    aget v10, v8, v9

    const v11, 0x3e99999a    # 0.3f

    add-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aget v12, v8, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v8, v9

    invoke-static {v4, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    :goto_0
    const-string v4, "NTV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "noti primary color is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    const-string v6, " inverted "

    goto :goto_1

    :cond_5
    const-string v6, " not inverted "

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    move v6, v3

    goto :goto_2

    :cond_6
    iget v6, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private setTextInversion(F)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    invoke-static {p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->shouldInvertTextColor(FZ)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTextColorInversion:Z

    if-eq v1, v0, :cond_e

    const-string v1, "NTV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " textColor Inversion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v2, -0xdadadb

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setColorInversion(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v4, 0x1020557

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v5, 0x1020576

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const v5, -0x262627

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const v5, -0x32dadadb

    const v6, -0x32262627

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    move v7, v6

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    if-eqz v4, :cond_7

    if-eqz v0, :cond_6

    move v5, v6

    nop

    :cond_6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setColorInversion(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoText:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoText:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    const v2, -0x19191a

    nop

    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTime:Landroid/widget/DateTimeView;

    const v2, -0xc3c3c4

    const v3, -0x2d2d2e

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTime:Landroid/widget/DateTimeView;

    if-eqz v0, :cond_a

    move v4, v3

    goto :goto_2

    :cond_a
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/DateTimeView;->setTextColor(I)V

    :cond_b
    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTimeForPublicView:Landroid/widget/DateTimeView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTimeForPublicView:Landroid/widget/DateTimeView;

    if-eqz v0, :cond_c

    move v2, v3

    nop

    :cond_c
    invoke-virtual {v1, v2}, Landroid/widget/DateTimeView;->setTextColor(I)V

    :cond_d
    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTextColorInversion:Z

    :cond_e
    return-void
.end method

.method private setViewOpacity(FZ)V
    .locals 7

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->getOpacityOnKeyguard(FIZ)F

    move-result v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->getOpacityOnKeyguard(FIZ)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    const-string v2, "NTV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " opacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " dimmedF = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " stackScrollerF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationTemplateView;->getOpenThemeStackBgColor()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz v2, :cond_2

    const v2, 0x67a5a5a5

    goto :goto_0

    :cond_2
    const v2, -0x7f171718

    :goto_0
    float-to-int v3, v1

    const/16 v4, 0xff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    iput p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    :cond_3
    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    const v0, 0x10501c6

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationMinHeight:I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconWidth:I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconHeight:I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPaddingHorizontal:I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPaddingVertical:I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040600

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mAppNameText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040602

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040601

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040603

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPublicText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStartMarginForNIO:I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v1, 0x1080664

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v1, 0x1080665

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackgroundOnWhite:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v1, 0x10809c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v2, -0xa18478

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationTemplateView;->makeContentView()V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPaddingHorizontal:I

    iget v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPaddingVertical:I

    iget v6, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPaddingHorizontal:I

    iget v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPaddingVertical:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationTemplateView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconWidth:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconHeight:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v4, 0x800003

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStartMarginForNIO:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/android/internal/widget/NotificationTemplateView;->makeShadowNIOView(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v6, 0x1080678

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    const v7, 0x74fafafa

    const v8, -0x58050506

    if-eqz v5, :cond_0

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz v5, :cond_1

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    const v7, -0x7f171718

    const v8, 0x67a5a5a5

    if-eqz v5, :cond_2

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz v5, :cond_3

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_3

    :cond_3
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x10900bb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    const v7, 0x10205c3

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    const v7, 0x10205c5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    const v7, 0x10205c8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    const v7, 0x10205c6

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/DateTimeView;

    iput-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTime:Landroid/widget/DateTimeView;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    const v7, 0x10205c7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/DateTimeView;

    iput-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTimeForPublicView:Landroid/widget/DateTimeView;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    const v7, 0x10205c0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoBottom:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTime:J

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x10501dc

    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->getFontScaledHeight(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationTypoHeight:I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "notification_text_color_inversion"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    move v1, v6

    :goto_4
    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    invoke-direct {p0, v6}, Lcom/android/internal/widget/NotificationTemplateView;->changeState(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_text_color_inversion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v3

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationMinHeight:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/ImageView;->measure(II)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v5, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, p1, v3}, Landroid/view/View;->measure(II)V

    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mAppNameText:Ljava/lang/String;

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationTemplateView;->makeContentView()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->changeState(I)V

    :cond_1
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mCurrentMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "NTV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Change currentmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationTemplateView;->changeState(I)V

    iput p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mCurrentMode:I

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIconView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationTemplateView;->makeShadowNIOView(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTypoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setIsWhiteWallpaper(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eq v0, p1, :cond_8

    const-string v0, "NTV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " White Wallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWallpaperChangedInOpenTheme:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackgroundOnWhite:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->makeShadowNIOView(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/NotificationTemplateView;->setViewOpacity(FZ)V

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsInOpenTheme:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    const v1, 0x74fafafa

    const v2, -0x58050506

    if-eqz p1, :cond_4

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGViewForTypo:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    const v2, -0x7f171718

    const v3, 0x67a5a5a5

    if-eqz v1, :cond_6

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGViewForType:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz v1, :cond_7

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_4

    :cond_7
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    return-void
.end method

.method public setViewOpacity(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setViewOpacity(FZ)V

    return-void
.end method

.method public setWallpaperChangedInThemeState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWallpaperChangedInOpenTheme:Z

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->makeShadowNIOView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

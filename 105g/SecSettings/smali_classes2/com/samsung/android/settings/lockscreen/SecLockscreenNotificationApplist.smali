.class public Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field private static final DEBUG:Z

.field private static final REMOVED_LOCK_NONE_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final REMOVED_LOCK_REDACTION_PREFERENCE_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private final VIEW_STYLE_BRIEF:I

.field private final VIEW_STYLE_DETAILED:I

.field private final VIEW_STYLE_ICON:I

.field private mAdvancedCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentViewStyle:I

.field private mDescription:Landroid/widget/TextView;

.field private mFromSetupWizard:Z

.field private mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mIsLockScreenDisabled:Z

.field private mJustPPP:Z

.field private final mLockNotiCardOpacity:Landroid/database/ContentObserver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedRedaction:Z

.field private mNotiCardLayout:Landroid/widget/LinearLayout;

.field private mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

.field private mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

.field private mNotiPreviewPref:Lcom/android/settings/applications/LayoutPreference;

.field private mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

.field private mNoticardBackgroundHeight:I

.field private mNotificationPreviewPadding:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "SecLockNotiApplist"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->DEBUG:Z

    const-string v0, "set_visibility"

    const-string v1, "noti_card_seekbar"

    const-string v2, "noti_inverse_text"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_NONE_PREFERENCE_KEYS:[Ljava/lang/String;

    const-string v0, "noti_card_seekbar"

    const-string v1, "noti_inverse_text"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_REDACTION_PREFERENCE_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->VIEW_STYLE_DETAILED:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->VIEW_STYLE_ICON:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->VIEW_STYLE_BRIEF:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNeedRedaction:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setEnabledWhereToShow(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mFromSetupWizard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updateNotiCardOpacity()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/support/v7/preference/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updatePreviewAndSubMenu(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mJustPPP:Z

    return v0
.end method

.method private addBottomButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0249

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0144

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x800005

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private addNotificationPreView()V
    .locals 4

    new-instance v0, Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/NotificationTemplateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0572

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/widget/NotificationTemplateView;->measure(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationTemplateView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNoticardBackgroundHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotificationPreviewPadding:I

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenWallpaperImg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->refreshNotiCardLayout()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updateNotiCardOpacity()V

    return-void
.end method

.method private adjustDialogWidth(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    return-void
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getDisplayWidth()I

    move-result v4

    iget v5, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotificationPreviewPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iget v6, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNoticardBackgroundHeight:I

    const/4 v7, 0x1

    if-ge v2, v4, :cond_0

    int-to-float v8, v4

    int-to-float v9, v2

    div-float/2addr v8, v9

    int-to-float v9, v3

    mul-float/2addr v9, v8

    float-to-int v3, v9

    iget v9, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotificationPreviewPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v2, v4, v9

    invoke-static {v0, v2, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move v8, v2

    move-object v2, v0

    :try_start_0
    iget v0, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotificationPreviewPadding:I

    iget v9, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNoticardBackgroundHeight:I

    sub-int v9, v3, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v2, v0, v9, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    move-object/from16 v9, p1

    if-eq v2, v9, :cond_1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v10, "SecLockNotiApplist"

    const-string v11, "IllegalArgumentException from cropBitmap"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v13, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v13, 0x7f0704bb

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v10, v14, v13, v13, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContext()Landroid/content/Context;

    move-result-object v7

    const v15, 0x7f060170

    invoke-virtual {v7, v15}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f0704bc

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v10, v2, v12, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private getDisplayWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2

    :cond_1
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_private_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private getLockscreenWallpaperImg()Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    return-object v1

    :cond_0
    return-object v1
.end method

.method private initNotificationViewStylePreference()V
    .locals 5

    const-string v0, "noti_view_style"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const-string v3, "2"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_minimizing_notification"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private isShowingDialogStyle()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isDisplayDialogType(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private masterSwitchChanged(ZI)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAdvancedCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setEnabledWhereToShow(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiViewStylePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v3, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAdvancedCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setEnabledWhereToShow(Z)V

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recycleBitmap()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private refreshNotiCardLayout()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getDisplayWidth()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotificationPreviewPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNoticardBackgroundHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isLockScreenWhiteWallpaperEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_active_themepackage"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_wallpaper_transparent"

    invoke-static {v6, v7, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v2, :cond_3

    if-eq v4, v5, :cond_2

    if-nez v4, :cond_3

    :cond_2
    move v3, v5

    nop

    :cond_3
    sget-boolean v5, Lcom/samsung/android/settings/Rune;->SUPPORT_NOTI_ONE_UI_1_5:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/NotificationTemplateView;->setWallpaperChangedInThemeState(Z)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/NotificationTemplateView;->setIsWhiteWallpaper(Z)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private setEnabledWhereToShow(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private showIconOnlySummary(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f121541

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateNotiCardOpacity()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_noticard_opacity"

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/NotificationTemplateView;->setViewOpacity(F)V

    :cond_0
    return-void
.end method

.method private updateNotificationsPref()V
    .locals 5

    const-string v0, "noti_preview"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a06d7

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescription:Landroid/widget/TextView;

    const-string v0, "set_visibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v0, "noti_card_seekbar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    const-string v0, "noti_inverse_text"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string v0, "advanced_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAdvancedCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "where_to_show"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f120dff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAdvancedCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAdvancedCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_notifications_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v3

    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_3

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private updatePrefStateRedaction()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_REDACTION_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_REDACTION_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePrefStateWhenLockTypeNone()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mIsLockScreenDisabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f120dfe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    nop

    :goto_0
    move v0, v3

    sget-object v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_NONE_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->REMOVED_LOCK_NONE_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "noti_view_style"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAdvancedCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAdvancedCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method private updatePreviewAndSubMenu(I)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "set_visibility"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    const-string v2, "noti_card_seekbar"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    const-string v3, "noti_inverse_text"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->showIconOnlySummary(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->showIconOnlySummary(Z)V

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNeedRedaction:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    if-nez v3, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNeedRedaction:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x114c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500d6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->addPreferencesFromResource(I)V

    const-string v0, "SecLockNotiApplist"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mIsLockScreenDisabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "needRedaction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNeedRedaction:Z

    const-string v1, "fromSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mFromSetupWizard:Z

    const-string v1, "justPPP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mJustPPP:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->initNotificationViewStylePreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updateNotificationsPref()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->recycleBitmap()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->unregisterContentObserver()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "lock_screen_allow_private_notifications"

    nop

    xor-int/lit8 v8, v0, 0x1

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1164

    if-eqz v0, :cond_0

    move-wide v3, v5

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v3, "hide_contents"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v3, "show_content"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    :cond_5
    :goto_2
    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-ne p1, v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "notification_text_color_inversion"

    invoke-static {v1, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x1167

    if-eqz v0, :cond_7

    move-wide v3, v5

    goto :goto_3

    :cond_7
    nop

    :goto_3
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-ne p1, v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mWhereToShowPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "lockscreen_notifications_option"

    xor-int/lit8 v8, v0, 0x1

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getMetricsCategory()I

    move-result v1

    const/16 v7, 0x116b

    if-eqz v0, :cond_9

    move-wide v3, v5

    goto :goto_4

    :cond_9
    nop

    :goto_4
    invoke-static {v1, v7, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_a
    :goto_5
    return v2
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->registerContentObserver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->refreshNotiCardLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_minimizing_notification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updatePreviewAndSubMenu(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_text_color_inversion"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mInverseTextPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v1, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v4, 0xc

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v6

    xor-int/2addr v3, v6

    invoke-virtual {v5, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideContentPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v3

    iget v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->masterSwitchChanged(ZI)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updatePrefStateWhenLockTypeNone()V

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNeedRedaction:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updatePrefStateRedaction()V

    :cond_4
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1163

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCurrentViewStyle:I

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->masterSwitchChanged(ZI)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mIsLockScreenDisabled:Z

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_notifications_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "SecLockNotiApplist"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->addNotificationPreView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNeedRedaction:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->addBottomButton()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->isShowingDialogStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f13013c

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getThemeResId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->adjustDialogWidth(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_noticard_opacity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

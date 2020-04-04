.class public Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private final VIEW_TYPE_BOTTOM_CORNERS:Ljava/lang/String;

.field private final VIEW_TYPE_TOUCH_AND_HOLD_TO_SHOW:Ljava/lang/String;

.field appInfoLeft:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

.field appInfoRight:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

.field private isLeftShortcut:Z

.field private isLeftShortcutAvailable:Z

.field private isRightShortcut:Z

.field private isRightShortcutAvailable:Z

.field private final mAppShortcutObserver:Landroid/database/ContentObserver;

.field private mCurrentViewType:Ljava/lang/String;

.field private mLeftRightCategoryPref:Landroid/support/v7/preference/PreferenceCategory;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mShortcutPreviewPref:Lcom/android/settings/applications/LayoutPreference;

.field private mShortcutTypeCornerPref:Lcom/android/settings/applications/LayoutPreference;

.field private mShortcutTypeHiddenPref:Lcom/android/settings/applications/LayoutPreference;

.field private mShortcutViewTypePref:Landroid/support/v7/preference/PreferenceCategory;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "fixed"

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->VIEW_TYPE_BOTTOM_CORNERS:Ljava/lang/String;

    const-string v0, "floating"

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->VIEW_TYPE_TOUCH_AND_HOLD_TO_SHOW:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isLeftShortcutAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isRightShortcutAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->updatePreview()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, p2, :cond_1

    if-ge v1, p3, :cond_1

    return-object p1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-le v0, p2, :cond_2

    sub-int v4, v0, p2

    div-int/lit8 v2, v4, 0x2

    :cond_2
    if-le v1, p3, :cond_3

    sub-int v4, v1, p3

    div-int/lit8 v3, v4, 0x2

    :cond_3
    move v4, p2

    move v5, p3

    if-le p2, v0, :cond_4

    move v4, v0

    :cond_4
    if-le p3, v1, :cond_5

    move v5, v1

    :cond_5
    invoke-static {p1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    move-object v0, p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    const-string v6, "LockAppShortcutSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "original width ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], height ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "LockAppShortcutSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "display width ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], height ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v5, v4, :cond_0

    int-to-float v6, v5

    int-to-float v7, v2

    :goto_0
    div-float/2addr v6, v7

    goto :goto_1

    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    goto :goto_0

    :goto_1
    int-to-float v7, v1

    mul-float/2addr v7, v6

    float-to-int v7, v7

    if-ge v7, v4, :cond_1

    move v7, v4

    goto :goto_2

    :cond_1
    int-to-float v7, v1

    mul-float/2addr v7, v6

    float-to-int v7, v7

    :goto_2
    int-to-float v8, v2

    mul-float/2addr v8, v6

    float-to-int v8, v8

    if-ge v8, v5, :cond_2

    move v8, v5

    goto :goto_3

    :cond_2
    int-to-float v8, v2

    mul-float/2addr v8, v6

    float-to-int v8, v8

    :goto_3
    const-string v9, "LockAppShortcutSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rate width ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], height ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, v7, :cond_3

    if-ge v2, v8, :cond_4

    :cond_3
    const/4 v9, 0x1

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v9, "LockAppShortcutSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scaled bitmap width ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], height ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, v0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v9, "LockAppShortcutSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "center crop bitmap width ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], height ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0704a4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-static {v0, v9, v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v9, "LockAppShortcutSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result bitmap width ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], height ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getLockscreenWallpaperImg()Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "LockAppShortcutSettings"

    const-string v1, "getLockscreenWallpaperImg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mWallpaperManager:Landroid/app/WallpaperManager;

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

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    const-string v3, "LockAppShortcutSettings"

    const-string v4, "ClassCastException : - wallpaper can not be cast into bitmapDrawable "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-object v1

    :cond_0
    const-string v2, "LockAppShortcutSettings"

    const-string v3, "wallpaper null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-object v1
.end method

.method private initShortcutViewTypePreference()V
    .locals 10

    const-string v0, "shortcut_view_type_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutViewTypePref:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "left_right_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mLeftRightCategoryPref:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->seslSetSubheaderRoundedBg(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_SUPPORT_FLOATING_SHORTCUT"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutViewTypePref:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->seslSetSubheaderRoundedBg(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutViewTypePref:Landroid/support/v7/preference/PreferenceCategory;

    const v3, 0x7f120d0a

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    const-string v2, "shortcut_bottom_corners"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/LayoutPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeCornerPref:Lcom/android/settings/applications/LayoutPreference;

    const-string v2, "shortcut_hidden"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/LayoutPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeHiddenPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeCornerPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeHiddenPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeCornerPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a08a9

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeCornerPref:Lcom/android/settings/applications/LayoutPreference;

    const v4, 0x7f0a08a8

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/CheckableLinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeHiddenPref:Lcom/android/settings/applications/LayoutPreference;

    const v5, 0x7f0a08a5

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeHiddenPref:Lcom/android/settings/applications/LayoutPreference;

    const v6, 0x7f0a08a7

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/CheckableLinearLayout;

    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutTypeHiddenPref:Lcom/android/settings/applications/LayoutPreference;

    const v9, 0x7f0a08aa

    invoke-virtual {v7, v9}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f120d0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "lock_shortcut_type"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v7, "fixed"

    :cond_1
    const-string v9, "fixed"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v4, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;

    invoke-direct {v1, p0, v2, v4}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v3, v1}, Lcom/android/settings/CheckableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;

    invoke-direct {v1, p0, v4, v2}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v5, v1}, Lcom/android/settings/CheckableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mLeftRightCategoryPref:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutViewTypePref:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private updatePreview()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_SUPPORT_FLOATING_SHORTCUT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_shortcut_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mCurrentViewType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mCurrentViewType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v1, "fixed"

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mCurrentViewType:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a0755

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a0753

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    const v4, 0x7f0a0756

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string v4, "fixed"

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mCurrentViewType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isLeftShortcutAvailable:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-object v4, v4, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isRightShortcutAvailable:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-object v4, v4, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isLeftShortcutAvailable:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isRightShortcutAvailable:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_6
    :goto_2
    const v4, 0x7f08007b

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08007a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_3
    return-void
.end method

.method private updateUI()V
    .locals 10

    const-string v0, "LockAppShortcutSettings"

    const-string v1, "updateUI START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isLeftShortcutAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isRightShortcutAvailable:Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a0752

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getLockscreenWallpaperImg()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    invoke-direct {v4}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;-><init>()V

    invoke-static {v3, v2, v4}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    invoke-direct {v4}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;-><init>()V

    const/4 v5, 0x3

    invoke-static {v3, v5, v4}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isLeftShortcut:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isRightShortcut:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isLeftShortcut:Z

    const v4, 0x7f120d08

    const v5, 0x7f120d09

    const v6, 0x7f1219de

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-boolean v3, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-object v9, v9, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    aput-object v9, v8, v0

    invoke-virtual {v7, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isLeftShortcutAvailable:Z

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isRightShortcut:Z

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-boolean v3, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-object v6, v6, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    aput-object v6, v2, v0

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->isRightShortcutAvailable:Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->updatePreview()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1145

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->updateUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500d5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->addPreferencesFromResource(I)V

    const-string v0, "shortcut_preview_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutPreviewPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0754

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mPreviewLayout:Landroid/widget/FrameLayout;

    const-string v0, "left_shortcut"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "right_shortcut"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->initShortcutViewTypePreference()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->updateUI()V

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->updateUI()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_application_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

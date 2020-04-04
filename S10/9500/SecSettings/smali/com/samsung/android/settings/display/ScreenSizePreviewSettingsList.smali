.class public Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;
.super Landroid/widget/ListView;
.source "ScreenSizePreviewSettingsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;,
        Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;
    }
.end annotation


# static fields
.field private static mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private static mFontScale:F

.field private static mFontSize:I

.field private static mFontStyle:Landroid/graphics/Typeface;

.field private static mIsSummaryVisible:Z

.field private static mPreviewTileIds:[Ljava/lang/String;

.field private static mPreviewTileIdsSeperateLockAndSecurity:[Ljava/lang/String;

.field private static mPreviewTileIdsVZW:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "connections_settings"

    const-string v1, "notification_settings"

    const-string v2, "app_notifications_1depth"

    const-string v3, "display_settings"

    const-string v4, "lockscreen_settings"

    const-string v5, "biometrics_and_security_settings"

    const-string v6, "general_device_settings"

    const-string v7, "about_settings"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIdsSeperateLockAndSecurity:[Ljava/lang/String;

    const-string v1, "connections_settings"

    const-string v2, "notification_settings"

    const-string v3, "app_notifications_1depth"

    const-string v4, "display_settings"

    const-string v5, "security_settings"

    const-string v6, "general_device_settings"

    const-string v7, "about_settings"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIds:[Ljava/lang/String;

    const-string v1, "airplane_mode"

    const-string/jumbo v2, "wifi_settings"

    const-string v3, "bluetooth_settings"

    const-string v4, "data_usage_settings"

    const-string v5, "notification_settings"

    const-string v6, "display_settings"

    const-string v7, "about_settings"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIdsVZW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->setSummaryVisible()V

    new-instance v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;

    const v1, 0x7f0d0253

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontSize:I

    return v0
.end method

.method static synthetic access$100()F
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontScale:F

    return v0
.end method

.method static synthetic access$200()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontStyle:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    return v0
.end method

.method static synthetic access$400()Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/dashboard/DashboardFeatureProvider;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object p0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIdsSeperateLockAndSecurity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIds:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setSummaryVisible()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    :cond_0
    return-void
.end method

.method public setTextScale(IF)V
    .locals 0

    sput p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontSize:I

    sput p2, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontScale:F

    return-void
.end method

.method public setTextStyle(Landroid/graphics/Typeface;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontStyle:Landroid/graphics/Typeface;

    return-void
.end method

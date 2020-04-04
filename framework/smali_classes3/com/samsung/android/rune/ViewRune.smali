.class public Lcom/samsung/android/rune/ViewRune;
.super Ljava/lang/Object;
.source "ViewRune.java"


# static fields
.field public static final AUTOFILL_SUPPORT_DUAL_DEX:Z = true

.field public static final CLIPBOARD_SEP:Z = true

.field public static final COMMON_COUNTRYISO:Ljava/lang/String;

.field public static final COMMON_IS_PRODUCT_DEV:Z

.field public static final COPYANDPASTE_SEP:Z = true

.field public static final DECORCAPTION_DEX:Z = true

.field public static final DECORCAPTION_MULTIWINDOW:Z = true

.field public static final EMOJIFONT_UPDATER:Z = true

.field public static final EMOJIFONT_UPDATER_DEBUG:Z = false

.field public static final FLIPFONT_DEBUG:Z = false

.field public static final FLIPFONT_SEP:Z = true

.field public static final SHAREVIA_SEP:Z = true

.field public static final SUPPORT_DIGITAL_WELLBEING:Z = true

.field private static final TAG:Ljava/lang/String; = "ViewRune"

.field public static final UIMODEMANAGER_NIGHT_MODE:Z = true

.field public static final VIEWCORE_AID:Z = true

.field public static final VIEWCORE_DISPLAY_CUTOUT_BG:Z = true

.field public static final VIEWROOT_DEBUG:Z = true

.field public static final VIEWROOT_REMOTE_IM_ANIM:Z

.field private static final VIEW_SYSTEM_DEFAULT_VERSION:Ljava/lang/String; = "10.0.0.0"

.field private static VIEW_SYSTEM_VERSION:Ljava/lang/String; = null

.field public static final WIDGET_BASIC_INTERACTION:Z = true

.field public static final WIDGET_BOLD_TEXT:Z = true

.field public static final WIDGET_BUG_FIX:Z = true

.field public static final WIDGET_COPYANDPASTE_LOGGING:Z

.field public static final WIDGET_DEX:Z = true

.field public static final WIDGET_HAPTIC_FEEDBACK:Z = true

.field public static final WIDGET_PEN_SELECTION:Z = true

.field public static final WIDGET_SEP:Z = true

.field public static final WIDGET_SHOW_BUTTON_SHAPE:Z = true

.field public static final WIDGET_SMOOTH_SCROLL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "NULL"

    sput-object v0, Lcom/samsung/android/rune/ViewRune;->VIEW_SYSTEM_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rune/ViewRune;->COMMON_COUNTRYISO:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_SMOOTH_SCROLL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_SMOOTH_SCROLL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_COPYANDPASTE_LOGGING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFWViewSystemVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "NULL"

    sget-object v1, Lcom/samsung/android/rune/ViewRune;->VIEW_SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "10.0.0.0"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/rune/ViewRune;->VIEW_SYSTEM_VERSION:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static setFWViewSystemVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/rune/ViewRune;->VIEW_SYSTEM_VERSION:Ljava/lang/String;

    return-void
.end method

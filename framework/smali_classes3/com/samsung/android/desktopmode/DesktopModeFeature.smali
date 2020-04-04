.class public Lcom/samsung/android/desktopmode/DesktopModeFeature;
.super Ljava/lang/Object;
.source "DesktopModeFeature.java"


# static fields
.field public static final CLEAR_HOME_STACK:Z = true

.field public static final DEBUG:Z

.field public static final ENABLED:Z = true

.field public static final FEATURE_TOUCHPAD:Z = true

.field public static final IS_TABLET:Z

.field public static final KEEP_FOREGROUND_TASK:Z = true

.field public static final SHOW_ONGOING_NOTIFICATION:Z = true

.field public static final SUPPORT_COVERS:Z = true

.field public static final SUPPORT_MULTI_RATIO:Z

.field public static final SUPPORT_OFFICIAL_ADAPTERS:Z = true

.field public static final SUPPORT_SPEN:Z = true

.field public static final SUPPORT_UNOFFICIAL_ADAPTERS:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "DMS"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.service.dex.tablet"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    nop

    :cond_3
    :goto_2
    sput-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DEX_MULTI_RATIO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_MULTI_RATIO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static isDesktopMode(Landroid/content/res/Resources;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

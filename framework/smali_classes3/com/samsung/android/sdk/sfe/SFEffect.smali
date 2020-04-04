.class public Lcom/samsung/android/sdk/sfe/SFEffect;
.super Ljava/lang/Object;
.source "SFEffect.java"


# static fields
.field public static DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SFEffect"

.field private static mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

.field private static mIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontManager()Lcom/samsung/android/sdk/sfe/font/FontManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    return-object v0
.end method

.method public static initialize()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SFEffect"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SFEffect"

    const-string v1, "Skip... Already init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "png"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ft2"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "icuuc"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "harfbuzz_ng"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "cutils"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "utils"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "nativehelper"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "minikin"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "jpeg"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "expat"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "dng_sdk"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "piex"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "hwui"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "SFEffect.fonteffect.samsung"

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/SFEffect;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SFEffect"

    const-string v1, "SFEffect libraries is not loaded by loadLibrary!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/sfe/font/FontManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/sfe/font/FontManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    sput-boolean v1, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SFEffect"

    const-string v1, "Initialization complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string v0, "SFEffect"

    const-string v1, "An associated library is not loaded by loadLibrary!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->mIsInitialized:Z

    return v0
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    const-string v2, "SFEffect"

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "SFEffect"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

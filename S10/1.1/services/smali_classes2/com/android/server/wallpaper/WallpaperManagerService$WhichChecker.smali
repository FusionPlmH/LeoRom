.class Lcom/android/server/wallpaper/WallpaperManagerService$WhichChecker;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhichChecker"
.end annotation


# static fields
.field public static final EDIT_TYPE_CROP:I = 0x1

.field public static final EDIT_TYPE_ORIGINAL:I = 0x0

.field public static final FILE_TYPE_INFO:I = 0x2

.field public static final FILE_TYPE_LOCK:I = 0x1

.field public static final FILE_TYPE_SYSTEM:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileName(III)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WhichChecker;->isDex(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_0

    const-string/jumbo v0, "wallpaper_desktop_info.xml"

    return-object v0

    :cond_0
    if-ne p1, v2, :cond_2

    if-ne p2, v2, :cond_1

    const-string/jumbo v0, "wallpaper_desktop_lock"

    return-object v0

    :cond_1
    const-string/jumbo v0, "wallpaper_desktop_lock_orig"

    return-object v0

    :cond_2
    if-ne p2, v2, :cond_3

    const-string/jumbo v0, "wallpaper_desktop"

    return-object v0

    :cond_3
    const-string/jumbo v0, "wallpaper_desktop_orig"

    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-ne p1, v1, :cond_5

    const-string/jumbo v0, "wallpaper_subdisplay_info.xml"

    return-object v0

    :cond_5
    if-ne p1, v2, :cond_7

    if-ne p2, v2, :cond_6

    const-string/jumbo v0, "wallpaper_sub_display_lock"

    return-object v0

    :cond_6
    const-string/jumbo v0, "wallpaper_sub_display_lock_orig"

    return-object v0

    :cond_7
    if-ne p2, v2, :cond_8

    const-string/jumbo v0, "wallpaper_sub_display"

    return-object v0

    :cond_8
    const-string/jumbo v0, "wallpaper_sub_display_orig"

    return-object v0

    :cond_9
    if-ne p1, v1, :cond_a

    const-string/jumbo v0, "wallpaper_info.xml"

    return-object v0

    :cond_a
    if-ne p1, v2, :cond_c

    if-ne p2, v2, :cond_b

    const-string/jumbo v0, "wallpaper_lock"

    return-object v0

    :cond_b
    const-string/jumbo v0, "wallpaper_lock_orig"

    return-object v0

    :cond_c
    if-ne p2, v2, :cond_d

    const-string/jumbo v0, "wallpaper"

    return-object v0

    :cond_d
    const-string/jumbo v0, "wallpaper_orig"

    return-object v0
.end method

.method public static getMode(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1c

    return v0
.end method

.method public static getType(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static isDex(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLock(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSingleType(I)Z
    .locals 3

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p0, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public static isSubDisplay(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystem(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

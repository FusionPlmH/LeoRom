.class public Lcom/samsung/android/widget/SemDatePicker$LunarUtils;
.super Ljava/lang/Object;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarUtils"
.end annotation


# static fields
.field private static mClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;
    .locals 5

    sget-object v0, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->access$5400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPathClassLoader, appInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    nop

    nop

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->access$5400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPathClassLoader, calendar package source directory is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->access$5400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPathClassLoader, calendar package name not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    return-object v0
.end method

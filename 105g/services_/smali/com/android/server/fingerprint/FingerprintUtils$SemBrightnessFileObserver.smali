.class Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;
.super Landroid/os/FileObserver;
.source "FingerprintUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemBrightnessFileObserver"
.end annotation


# static fields
.field private static final LCD_PANEL_HBM_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/actual_mask_brightness"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "/sys/class/lcd/panel/actual_mask_brightness"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->mRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public isMaxBrightness()Z
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/actual_mask_brightness"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semReadFile(Ljava/io/File;)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Brightness File value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    return v2

    :cond_2
    return v2
.end method

.method public observe(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->startWatching()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->stopWatching()V

    :goto_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->isMaxBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.class public Lcom/samsung/android/media/SemHiddenSoundManager;
.super Ljava/lang/Object;
.source "SemHiddenSoundManager.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final PACKAGE_ALL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final VOLUME_DEVICE:I = -0x3

.field public static final VOLUME_FULL:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SemHiddenSoundManager"

    sput-object v0, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlaybackRecorderPackage()I
    .locals 5

    const-string v0, "hiddensound_pid"

    invoke-static {v0}, Landroid/media/AudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid PID"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static getPlaybackRecorderVersion()I
    .locals 5

    const-string v0, "hiddensound_version"

    invoke-static {v0}, Landroid/media/AudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    const-string v2, "Don\'t support"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid Version"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static getPlaybackRecorderVolume()I
    .locals 6

    const-string v0, "hiddensound_volume"

    invoke-static {v0}, Landroid/media/AudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    nop

    return v1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    const-string v5, "Invalid volume"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static setPlaybackRecorderPackage(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hiddensound_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    return-void
.end method

.method public static setPlaybackRecorderVolume(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hiddensound_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    return-void
.end method

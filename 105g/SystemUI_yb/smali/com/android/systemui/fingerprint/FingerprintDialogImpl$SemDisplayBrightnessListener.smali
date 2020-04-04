.class Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;
.super Ljava/lang/Object;
.source "FingerprintDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemDisplayBrightnessListener"
.end annotation


# instance fields
.field private BRIGHTNESS_FILE_PATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mH:Landroid/os/Handler;

.field private mListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mH:Landroid/os/Handler;

    const-string/jumbo v0, "qcom"

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/class/backlight/panel0-backlight/brightness"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "/sys/class/lcd/panel/device/backlight/panel/brightness"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mFileObserver:Landroid/os/FileObserver;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->getBrightnessFromFile()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;

    return-object v0
.end method

.method private getBrightnessFromFile()I
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->readFile(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FingerprintDialogImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessFromFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    const-string v4, "FingerprintDialogImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessFromFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private readFile(Ljava/io/File;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    nop

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    move-object v0, v2

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    nop

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FingerprintDialogImpl"

    const-string v4, "failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_0
    nop

    :goto_1
    return-object v0

    :cond_1
    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "FingerprintDialogImpl"

    const-string v4, "failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_3
    const-string v3, "FingerprintDialogImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failure to read file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :goto_3
    return-object v0

    :goto_4
    nop

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    const-string v4, "FingerprintDialogImpl"

    const-string v5, "failed to close file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_3
    :goto_5
    throw v2

    :cond_4
    :goto_6
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Invalid file info, "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method observe(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :goto_0
    return-void
.end method

.class public Lcom/samsung/android/settings/location/SatelliteViewLog;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SatelliteViewLog.java"


# instance fields
.field private btn_clear:Landroid/widget/Button;

.field private display:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fileLen:I

.field private fileName:Ljava/lang/String;

.field private in:Ljava/io/FileInputStream;

.field private out:Ljava/io/FileOutputStream;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const-string v0, "/data/AGPSLog.txt"

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/location/SatelliteViewLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteViewLog;->clearFile()V

    return-void
.end method

.method private clearFile()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const v0, 0x7f1212a7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/SatelliteViewLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "XIA"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteViewLog;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    if-le v2, v1, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    iget v4, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->in:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :cond_0
    const v2, 0x7f1212a7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteViewLog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "XIA"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteViewLog;->finish()V

    :goto_1
    const v2, 0x7f0d0256

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteViewLog;->setContentView(I)V

    const v2, 0x7f0a06a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteViewLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/location/SatelliteViewLog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/location/SatelliteViewLog$1;-><init>(Lcom/samsung/android/settings/location/SatelliteViewLog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->fileLen:I

    if-le v2, v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->btn_clear:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0a06a1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/SatelliteViewLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteViewLog;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

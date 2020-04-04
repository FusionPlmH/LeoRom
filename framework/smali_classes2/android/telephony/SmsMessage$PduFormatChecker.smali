.class Landroid/telephony/SmsMessage$PduFormatChecker;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduFormatChecker"
.end annotation


# static fields
.field private static file:Ljava/io/File;

.field private static fileInputStream:Ljava/io/FileInputStream;

.field private static fileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/radio/fmt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    sput-object v0, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/telephony/SmsMessage$PduFormatChecker;->write(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/telephony/SmsMessage$PduFormatChecker;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static read()Ljava/lang/String;
    .locals 4

    sget-object v0, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    :goto_0
    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v1

    move v2, v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SmsMessage"

    const-string v3, "[PduFormatChecker] faile to read"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_1
    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static write(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_0
    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SmsMessage"

    const-string v3, "[PduFormatChecker] faile to write"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

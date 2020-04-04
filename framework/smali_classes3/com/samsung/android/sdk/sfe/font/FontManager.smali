.class public Lcom/samsung/android/sdk/sfe/font/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final FONTS_XML:Ljava/lang/String; = "system/etc/fonts.xml"

.field private static final FONT_DIRECTORY:Ljava/lang/String; = "fonts/"

.field private static final FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field private static final OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/app_fonts/0/sans.loc"

.field private static final SANS_LOC_POST:Ljava/lang/String; = "/sans.loc"

.field private static final SANS_LOC_PRE:Ljava/lang/String; = "/data/app_fonts/"

.field private static final TAG:Ljava/lang/String; = "SFFontManager"

.field private static mFlipFontPath:Ljava/lang/String;

.field private static mLastSystemFontChangedTime:J

.field private static final mMutex:Ljava/lang/Object;

.field private static mParser:Landroid/text/FontConfig;

.field private static mSetFontConfigFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontConfig()Landroid/text/FontConfig;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/sdk/sfe/font/FontManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/sfe/font/FontManager$1;-><init>(Lcom/samsung/android/sdk/sfe/font/FontManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native SFFontManager_InsertFontData(Ljava/lang/String;[B)Z
.end method

.method private static native SFFontManager_SetFontConfig(Landroid/text/FontConfig;)Z
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Landroid/text/FontConfig;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    return-object v0
.end method

.method static synthetic access$200(Landroid/text/FontConfig;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->setFontConfig(Landroid/text/FontConfig;)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    return p0
.end method

.method private getFlipFontFromPakage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SFFontManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlipFontFromPakage : Application pakage name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , font name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    move-object v8, v9

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-static {v2, v8}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v5, v6

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v4

    :try_start_2
    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    move-object v7, v9

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    move-object v8, v9

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    invoke-static {v2, v8}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-object v2

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v9

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v10

    goto :goto_3

    :cond_2
    :goto_2
    nop

    :goto_3
    return-object v4

    :goto_4
    nop

    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v9

    nop

    :cond_3
    :goto_5
    throw v4

    :catch_5
    move-exception v6

    return-object v4
.end method

.method private getFontConfig()Landroid/text/FontConfig;
    .locals 8

    const-string v0, "/system/etc"

    const-string/jumbo v1, "persist.sys.omc_etcpath"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/fonts.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    sget-boolean v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SFFontManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts.xml take from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/fonts.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    invoke-static {v3}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/text/FontConfig;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    const-string v5, "SFFontManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist on this system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    return-object v2

    :goto_2
    nop

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    nop

    :cond_3
    :goto_3
    throw v4
.end method

.method private static insertFontData(Ljava/lang/String;[B)V
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->SFFontManager_InsertFontData(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static isSetConfigFinished()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    return v0
.end method

.method private readFile(Ljava/io/File;)[B
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v3

    const/16 v3, 0x1000

    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :goto_1
    nop

    :goto_2
    return-object v4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "SFFontManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_4

    :cond_1
    :goto_3
    goto :goto_4

    :catch_3
    move-exception v3

    :try_start_4
    const-string v4, "SFFontManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :goto_4
    return-object v1

    :goto_5
    nop

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v3

    nop

    :cond_2
    :goto_6
    throw v1
.end method

.method private static setFontConfig(Landroid/text/FontConfig;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->SFFontManager_SetFontConfig(Landroid/text/FontConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private static throwUncheckedException(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/sfe/util/SFError;->ThrowUncheckedException(I)V

    return-void
.end method


# virtual methods
.method public getFlipFontPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app_fonts/0/sans.loc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sget-wide v5, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SFFontManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System font not changed. -> flipFontPath = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontPathFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SFFontManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFlipFontPath - strFontPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", strPackageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "default"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sput-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "DroidSans.ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v6, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "SFFontManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFlipFontPath - DroidSans path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.monotype.android.font."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontNameFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v5, v7}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFlipFontFromPakage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    sput-object v8, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    sput-wide v3, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    sget-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v2

    :cond_5
    return-object v2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontNameFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".ttf"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/sfe/font/FontManager;->readFile(Ljava/io/File;)[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V

    sput-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    sput-wide v3, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    sget-object v7, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v7
.end method

.method public getFontNameFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "default"

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x1

    aget-object v0, v2, v0

    return-object v0
.end method

.method public getFontPathFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2
.end method

.method public getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "default"

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/app_fonts/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    const-string v3, ""

    const-string v1, "empty"

    const-string v3, "/data/app_fonts/0/sans.loc"

    const-string v4, "empty"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    nop

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v7

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v7

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_2
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v7

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_2
    const-string v8, "default"

    move-object v6, v8

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v7

    :try_start_4
    const-string v8, "default"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v8

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :goto_1
    move-object v1, v6

    goto :goto_4

    :goto_2
    nop

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v8

    nop

    :cond_3
    :goto_3
    throw v7

    :cond_4
    :goto_4
    if-nez v1, :cond_5

    const-string v0, "default"

    return-object v0

    :cond_5
    return-object v1
.end method

.method public getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    const/4 v5, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SFFontManager"

    const-string v6, "getSystemFontName() - Parser is null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v4

    return-object v5

    :cond_1
    const-string v0, "SFFontManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSystemFontName fontFamily = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isItalic = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isBold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_2
    const/16 v0, 0x190

    :goto_0
    sget-object v6, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v6}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_7

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    const-string v11, "SFFontManager"

    const-string v12, "getSystemFontName - family.getName() is NULL - Skip."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    move-object v5, v9

    invoke-virtual {v9}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v11

    if-ne v11, v0, :cond_4

    invoke-virtual {v9}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v11

    if-ne v11, v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v5}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v6

    monitor-exit v4

    return-object v6

    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    sget-object v6, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v6}, Landroid/text/FontConfig;->getAliases()[Landroid/text/FontConfig$Alias;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v7, :cond_d

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v10}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v10}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v11

    if-nez v11, :cond_8

    nop

    move/from16 v18, v0

    goto :goto_9

    :cond_8
    sget-object v11, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v11}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_c

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual {v14}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    nop

    move/from16 v18, v0

    goto :goto_8

    :cond_9
    invoke-virtual {v14}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v8

    array-length v15, v8

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v15, :cond_b

    aget-object v16, v8, v5

    move-object/from16 v17, v16

    move/from16 v18, v0

    move-object/from16 v0, v17

    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v1

    invoke-virtual {v10}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v2

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v1

    if-ne v1, v3, :cond_a

    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v4

    return-object v1

    :cond_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto :goto_7

    :cond_b
    move/from16 v18, v0

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    move/from16 v18, v0

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_d
    monitor-exit v4

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

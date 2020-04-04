.class public Lcom/wrapper/proxyapplication/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static CPUABI:Ljava/lang/String; = null

.field static final ERROR_EXCEPTION:I = -0x2

.field static final ERROR_FALSE:I = 0x0

.field static final ERROR_FILE_EXIST:I = 0x2

.field static final ERROR_FILE_NOT_FOUND:I = -0x1

.field static final ERROR_FILE_NOT_FOUND_INZIP:I = -0x3

.field static final ERROR_SUCCESS:I = 0x1

.field public static MAX_DEX_NUM:I

.field public static TAG:Ljava/lang/String;

.field public static dexname:Ljava/lang/String;

.field public static ifoverwrite:Z

.field public static libname:Ljava/lang/String;

.field public static securename0:Ljava/lang/String;

.field public static securename1:Ljava/lang/String;

.field public static securename2:Ljava/lang/String;

.field public static securename3:Ljava/lang/String;

.field public static securename4:Ljava/lang/String;

.field public static securename5:Ljava/lang/String;

.field public static securename6:Ljava/lang/String;

.field public static securename7:Ljava/lang/String;

.field public static securename8:Ljava/lang/String;

.field public static securename9:Ljava/lang/String;

.field public static simplelibname:Ljava/lang/String;

.field public static versionname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x12c

    sput v0, Lcom/wrapper/proxyapplication/Util;->MAX_DEX_NUM:I

    const-string v0, "Util"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    const-string v0, "tosprotection"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->simplelibname:Ljava/lang/String;

    const-string v0, "00O000ll111l.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    const-string v0, "00O000ll111l.jar"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename1:Ljava/lang/String;

    const-string v0, "000O00ll111l.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename2:Ljava/lang/String;

    const-string v0, "0000000lllll.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename3:Ljava/lang/String;

    const-string v0, "000000olllll.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename4:Ljava/lang/String;

    const-string v0, "0OO00l111l1l"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    const-string v0, "o0oooOO0ooOo.dat"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    const-string v0, "exportService.txt"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    const-string v0, ".flag00O000ll111l.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    const-string v0, ".updateIV.dat"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename9:Ljava/lang/String;

    const-string v0, "tosversion"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->versionname:Ljava/lang/String;

    const-string v0, "classes.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->dexname:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/wrapper/proxyapplication/Util;->ifoverwrite:Z

    invoke-static {}, Lcom/wrapper/proxyapplication/Util;->getCPUABI()V

    sget-object v0, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    const-string v1, "x86"

    if-ne v0, v1, :cond_0

    const-string v0, "libshellx-super.2019.so"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "shell-super.2019"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Comparetxtinzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)I
    .locals 16

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-nez v7, :cond_3

    :try_start_0
    sget-object v14, Lcom/wrapper/proxyapplication/Util;->TAG:Ljava/lang/String;

    const-string v15, "no this file in zip"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    const/4 v14, -0x3

    :goto_0
    return v14

    :catch_0
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    const/4 v14, -0x2

    goto :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto :goto_0

    :catchall_0
    move-exception v14

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    throw v14

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto :goto_0

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto :goto_0

    :cond_3
    const/16 v14, 0x400

    :try_start_6
    new-array v6, v14, [B

    const/16 v14, 0x400

    new-array v3, v14, [B

    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v5, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([B)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result v14

    if-eqz v14, :cond_5

    const/4 v11, 0x1

    :goto_1
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v2, :cond_4

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    :cond_4
    move-object v1, v2

    move-object v4, v5

    move v14, v11

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    :catch_4
    move-exception v8

    :goto_2
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v4, :cond_6

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_6

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_6
    const/4 v14, -0x2

    goto/16 :goto_0

    :catch_5
    move-exception v8

    :try_start_e
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_7

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :cond_7
    const/4 v14, -0x2

    goto/16 :goto_0

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    if-eqz v1, :cond_8

    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    :cond_8
    throw v14

    :catch_7
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto/16 :goto_0

    :catch_8
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto/16 :goto_0

    :catchall_2
    move-exception v14

    :goto_3
    if-eqz v4, :cond_9

    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v1, :cond_9

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    :cond_9
    throw v14

    :catch_9
    move-exception v8

    :try_start_13
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v1, :cond_a

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    :cond_a
    const/4 v14, -0x2

    goto/16 :goto_0

    :catch_a
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto/16 :goto_0

    :catchall_3
    move-exception v14

    if-eqz v1, :cond_b

    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    :cond_b
    throw v14

    :catch_b
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto/16 :goto_0

    :catch_c
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    goto/16 :goto_0

    :catch_d
    move-exception v8

    :try_start_16
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v2, :cond_c

    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    :cond_c
    const/4 v14, -0x2

    move-object v1, v2

    move-object v4, v5

    goto/16 :goto_0

    :catch_e
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    move-object v1, v2

    move-object v4, v5

    goto/16 :goto_0

    :catchall_4
    move-exception v14

    if-eqz v2, :cond_d

    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    :cond_d
    throw v14

    :catch_f
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    move-object v1, v2

    move-object v4, v5

    goto/16 :goto_0

    :catch_10
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, -0x2

    move-object v1, v2

    move-object v4, v5

    goto/16 :goto_0

    :catchall_5
    move-exception v14

    move-object v4, v5

    goto :goto_3

    :catchall_6
    move-exception v14

    move-object v1, v2

    move-object v4, v5

    goto :goto_3

    :catch_11
    move-exception v8

    move-object v4, v5

    goto/16 :goto_2

    :catch_12
    move-exception v8

    move-object v1, v2

    move-object v4, v5

    goto/16 :goto_2
.end method

.method public static CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static DeleteFile(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static PrepareSecurefiles(Landroid/content/Context;Ljava/util/zip/ZipFile;)I
    .locals 37

    const/4 v8, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/prodexdir"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-nez v32, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->versionname:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/backUp"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/firstLoad"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->versionname:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "libtosprotection."

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".so"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :try_start_0
    new-instance v30, Ljava/io/RandomAccessFile;

    const-string v32, "rw"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v11, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_35
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v27

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_36
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_16

    move-object/from16 v0, p1

    invoke-static {v0, v10, v9}, Lcom/wrapper/proxyapplication/Util;->Comparetxtinzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)I

    move-result v14

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v14, v0, :cond_15

    new-instance v31, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_7

    :cond_1
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const-wide/16 v34, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wrapper/proxyapplication/Util;->SafeUnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    :goto_0
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_2

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_2

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_2
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_3

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_3

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_3
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_4

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_4

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-static {v11, v0, v1}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_5

    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v10, v1}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_5
    if-eqz v27, :cond_6

    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v23, :cond_6

    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v30, :cond_6

    :try_start_5
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    :cond_6
    const/16 v32, 0x2

    move-object/from16 v29, v30

    move-object v8, v9

    :goto_1
    return v32

    :cond_7
    :try_start_6
    invoke-static/range {v31 .. v31}, Lcom/wrapper/proxyapplication/Util;->getFileCRC32(Ljava/io/File;)J

    move-result-wide v16

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    move-wide/from16 v3, v16

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wrapper/proxyapplication/Util;->SafeUnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    goto/16 :goto_0

    :catch_0
    move-exception v21

    move-object/from16 v29, v30

    move-object v8, v9

    :goto_2
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_8

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_8

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_8
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_9

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_9

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_9
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_a

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_a

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-static {v11, v0, v1}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_b

    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v10, v1}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_b
    if-eqz v27, :cond_c

    :try_start_8
    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v23, :cond_c

    :try_start_9
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_17
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v29, :cond_c

    :try_start_a
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1a

    :cond_c
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_1
    move-exception v21

    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v23, :cond_d

    :try_start_c
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v30, :cond_d

    :try_start_d
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_d
    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_2
    move-exception v21

    :try_start_e
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v30, :cond_e

    :try_start_f
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    :cond_e
    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_3
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_0
    move-exception v32

    if-eqz v30, :cond_f

    :try_start_10
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    :cond_f
    throw v32

    :catch_4
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_5
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_1
    move-exception v32

    if-eqz v23, :cond_10

    :try_start_11
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v30, :cond_10

    :try_start_12
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    :cond_10
    throw v32

    :catch_6
    move-exception v21

    :try_start_13
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v30, :cond_11

    :try_start_14
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    :cond_11
    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_7
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_2
    move-exception v32

    if-eqz v30, :cond_12

    :try_start_15
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    :cond_12
    throw v32

    :catch_8
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_9
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_a
    move-exception v21

    :try_start_16
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v30, :cond_13

    :try_start_17
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    :cond_13
    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_b
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_3
    move-exception v32

    if-eqz v30, :cond_14

    :try_start_18
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    :cond_14
    throw v32

    :catch_c
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_d
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :cond_15
    if-eqz v14, :cond_16

    :try_start_19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/os/Process;->killProcess(I)V

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/System;->exit(I)V

    :cond_16
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    const/4 v15, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v18, -0x1

    const/16 v24, 0x0

    const/16 v24, 0x0

    :goto_3
    sget v32, Lcom/wrapper/proxyapplication/Util;->MAX_DEX_NUM:I

    move/from16 v0, v24

    move/from16 v1, v32

    if-lt v0, v1, :cond_1f

    :cond_17
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename9:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v10, v1}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_23

    :cond_18
    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v24

    if-lt v0, v1, :cond_27

    :cond_19
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_1a

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_1a

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_1a
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_1b

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_1b

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_1b
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_1c

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_1c

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "assets/"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_1c
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_1d

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-static {v11, v0, v1}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v32

    if-nez v32, :cond_1d

    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v10, v1}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_1d
    if-eqz v27, :cond_1e

    :try_start_1a
    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_28
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    if-eqz v23, :cond_1e

    :try_start_1b
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_31
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    if-eqz v30, :cond_1e

    :try_start_1c
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_34

    :cond_1e
    const/16 v32, 0x0

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :cond_1f
    :try_start_1d
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v15

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename1:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v19

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "odexdir"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v20

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "odexdir"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v18

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "oat/arm"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v0, v15, :cond_20

    const/16 v32, -0x1

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    const/16 v32, -0x1

    move/from16 v0, v32

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    :cond_20
    const/16 v32, -0x2

    move/from16 v0, v32

    if-eq v0, v15, :cond_21

    const/16 v32, -0x2

    move/from16 v0, v32

    move/from16 v1, v19

    if-eq v0, v1, :cond_21

    const/16 v32, -0x2

    move/from16 v0, v32

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    :cond_21
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/os/Process;->killProcess(I)V

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/System;->exit(I)V

    :cond_22
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    :cond_23
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v15

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename1:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v19

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "odexdir"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v20

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "odexdir"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v18

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "oat/arm"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v0, v15, :cond_24

    const/16 v32, -0x1

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_24

    const/16 v32, -0x1

    move/from16 v0, v32

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    :cond_24
    const/16 v32, -0x2

    move/from16 v0, v32

    if-eq v0, v15, :cond_25

    const/16 v32, -0x2

    move/from16 v0, v32

    move/from16 v1, v19

    if-eq v0, v1, :cond_25

    const/16 v32, -0x2

    move/from16 v0, v32

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    :cond_25
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/os/Process;->killProcess(I)V

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/System;->exit(I)V

    :cond_26
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    :cond_27
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v15

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename1:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v19

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "odexdir"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v20

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "odexdir"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v18

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "oat/arm"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    const-string v34, "."

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v0, v15, :cond_28

    const/16 v32, -0x1

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_28

    const/16 v32, -0x1

    move/from16 v0, v32

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    :cond_28
    const/16 v32, -0x2

    move/from16 v0, v32

    if-eq v0, v15, :cond_29

    const/16 v32, -0x2

    move/from16 v0, v32

    move/from16 v1, v19

    if-eq v0, v1, :cond_29

    const/16 v32, -0x2

    move/from16 v0, v32

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a

    :cond_29
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/os/Process;->killProcess(I)V

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/System;->exit(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    :cond_2a
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5

    :catch_e
    move-exception v21

    :try_start_1e
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    if-eqz v23, :cond_2b

    :try_start_1f
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    if-eqz v29, :cond_2b

    :try_start_20
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_12

    :cond_2b
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_f
    move-exception v21

    :try_start_21
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    if-eqz v29, :cond_2c

    :try_start_22
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_10

    :cond_2c
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_10
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_4
    move-exception v32

    if-eqz v29, :cond_2d

    :try_start_23
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_11

    :cond_2d
    throw v32

    :catch_11
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_12
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_5
    move-exception v32

    if-eqz v23, :cond_2e

    :try_start_24
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    if-eqz v29, :cond_2e

    :try_start_25
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_16

    :cond_2e
    throw v32

    :catch_13
    move-exception v21

    :try_start_26
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    if-eqz v29, :cond_2f

    :try_start_27
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_14

    :cond_2f
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_14
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_6
    move-exception v32

    if-eqz v29, :cond_30

    :try_start_28
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_15

    :cond_30
    throw v32

    :catch_15
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_16
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_17
    move-exception v21

    :try_start_29
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    if-eqz v29, :cond_31

    :try_start_2a
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_18

    :cond_31
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_18
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_7
    move-exception v32

    if-eqz v29, :cond_32

    :try_start_2b
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_19

    :cond_32
    throw v32

    :catch_19
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_1a
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_8
    move-exception v32

    :goto_6
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "assets/"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_33

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v33

    if-nez v33, :cond_33

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "assets/"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/io/File;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-object v36, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_33
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "assets/"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_34

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v33

    if-nez v33, :cond_34

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "assets/"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v34, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/io/File;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-object v36, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_34
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "assets/"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_35

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-object v34, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    invoke-static/range {v33 .. v35}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v33

    if-nez v33, :cond_35

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "assets/"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v34, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/io/File;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-object v36, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_35
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    if-eqz v22, :cond_36

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-static {v11, v0, v1}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v33

    if-nez v33, :cond_36

    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-static {v0, v10, v1}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    :cond_36
    if-eqz v27, :cond_37

    :try_start_2c
    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_1b
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    if-eqz v23, :cond_37

    :try_start_2d
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_24
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    if-eqz v29, :cond_37

    :try_start_2e
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_27

    :cond_37
    throw v32

    :catch_1b
    move-exception v21

    :try_start_2f
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    if-eqz v23, :cond_38

    :try_start_30
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_1c
    .catchall {:try_start_30 .. :try_end_30} :catchall_9

    if-eqz v29, :cond_38

    :try_start_31
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_1f

    :cond_38
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_1c
    move-exception v21

    :try_start_32
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_9

    if-eqz v29, :cond_39

    :try_start_33
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1d

    :cond_39
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_1d
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_9
    move-exception v32

    if-eqz v29, :cond_3a

    :try_start_34
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1e

    :cond_3a
    throw v32

    :catch_1e
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_1f
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_a
    move-exception v32

    if-eqz v23, :cond_3b

    :try_start_35
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_20
    .catchall {:try_start_35 .. :try_end_35} :catchall_b

    if-eqz v29, :cond_3b

    :try_start_36
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_23

    :cond_3b
    throw v32

    :catch_20
    move-exception v21

    :try_start_37
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_b

    if-eqz v29, :cond_3c

    :try_start_38
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_21

    :cond_3c
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_21
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_b
    move-exception v32

    if-eqz v29, :cond_3d

    :try_start_39
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_22

    :cond_3d
    throw v32

    :catch_22
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_23
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_24
    move-exception v21

    :try_start_3a
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_c

    if-eqz v29, :cond_3e

    :try_start_3b
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_25

    :cond_3e
    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_25
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catchall_c
    move-exception v32

    if-eqz v29, :cond_3f

    :try_start_3c
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_26

    :cond_3f
    throw v32

    :catch_26
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_27
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    goto/16 :goto_1

    :catch_28
    move-exception v21

    :try_start_3d
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_e

    if-eqz v23, :cond_40

    :try_start_3e
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_29
    .catchall {:try_start_3e .. :try_end_3e} :catchall_d

    if-eqz v30, :cond_40

    :try_start_3f
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_2c

    :cond_40
    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_29
    move-exception v21

    :try_start_40
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_d

    if-eqz v30, :cond_41

    :try_start_41
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_2a

    :cond_41
    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_2a
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_d
    move-exception v32

    if-eqz v30, :cond_42

    :try_start_42
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_2b

    :cond_42
    throw v32

    :catch_2b
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_2c
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_e
    move-exception v32

    if-eqz v23, :cond_43

    :try_start_43
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_2d
    .catchall {:try_start_43 .. :try_end_43} :catchall_f

    if-eqz v30, :cond_43

    :try_start_44
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_30

    :cond_43
    throw v32

    :catch_2d
    move-exception v21

    :try_start_45
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_f

    if-eqz v30, :cond_44

    :try_start_46
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_2e

    :cond_44
    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_2e
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_f
    move-exception v32

    if-eqz v30, :cond_45

    :try_start_47
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_2f

    :cond_45
    throw v32

    :catch_2f
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_30
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_31
    move-exception v21

    :try_start_48
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_10

    if-eqz v30, :cond_46

    :try_start_49
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_32

    :cond_46
    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_32
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_10
    move-exception v32

    if-eqz v30, :cond_47

    :try_start_4a
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_33

    :cond_47
    throw v32

    :catch_33
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catch_34
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    const/16 v32, -0x1

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_1

    :catchall_11
    move-exception v32

    move-object/from16 v29, v30

    goto/16 :goto_6

    :catchall_12
    move-exception v32

    move-object/from16 v29, v30

    move-object v8, v9

    goto/16 :goto_6

    :catch_35
    move-exception v21

    goto/16 :goto_2

    :catch_36
    move-exception v21

    move-object/from16 v29, v30

    goto/16 :goto_2
.end method

.method public static SafeUnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/wrapper/proxyapplication/Util;->SafeUnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static SafeUnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;J)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_0

    :catchall_0
    move-exception v7

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    throw v7

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v7, p3, v8

    if-eqz v7, :cond_7

    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getCrc()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-wide v8

    cmp-long v7, v8, p3

    if-nez v7, :cond_7

    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :catch_4
    move-exception v4

    :try_start_9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_0

    :catchall_1
    move-exception v7

    if-eqz v3, :cond_6

    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_6
    throw v7

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_0

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    :try_start_c
    invoke-static {p0, v6}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v2

    if-eqz v5, :cond_8

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/4 v7, 0x0

    :try_start_d
    array-length v8, v2

    invoke-virtual {v1, v2, v7, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_15
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object v0, v1

    :cond_8
    if-eqz v0, :cond_9

    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v3, :cond_9

    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_0

    :catch_8
    move-exception v4

    :try_start_10
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v3, :cond_a

    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_9
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    if-eqz v3, :cond_b

    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    :cond_b
    throw v7

    :catch_a
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_c
    move-exception v4

    :goto_1
    :try_start_13
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v0, :cond_c

    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v3, :cond_c

    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_d
    move-exception v4

    :try_start_16
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v3, :cond_d

    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_e
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    if-eqz v3, :cond_e

    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    :cond_e
    throw v7

    :catch_f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_10
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_4
    move-exception v7

    :goto_2
    if-eqz v0, :cond_f

    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-eqz v3, :cond_f

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_14

    :cond_f
    throw v7

    :catch_11
    move-exception v4

    :try_start_1b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    if-eqz v3, :cond_10

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_12
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_5
    move-exception v7

    if-eqz v3, :cond_11

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_13

    :cond_11
    throw v7

    :catch_13
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_14
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_6
    move-exception v7

    move-object v0, v1

    goto :goto_2

    :catch_15
    move-exception v4

    move-object v0, v1

    goto :goto_1
.end method

.method public static UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    return v8

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v9

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    throw v9

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_6
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_11
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/high16 v9, 0x10000

    :try_start_7
    new-array v2, v9, [B

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :goto_1
    :try_start_8
    invoke-virtual {v4, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result v6

    if-gez v6, :cond_4

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v4, :cond_3

    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    :cond_3
    const/4 v8, 0x1

    move-object v3, v4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :try_start_b
    invoke-virtual {v1, v2, v9, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_1

    :catch_4
    move-exception v5

    move-object v3, v4

    move-object v0, v1

    :goto_2
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v0, :cond_0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v3, :cond_0

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_0

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v5

    :try_start_f
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v3, :cond_0

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_0

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v9

    if-eqz v3, :cond_5

    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    :cond_5
    throw v9

    :catch_8
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    :goto_3
    if-eqz v0, :cond_6

    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v3, :cond_6

    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_6
    throw v9

    :catch_9
    move-exception v5

    :try_start_14
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v3, :cond_0

    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_3
    move-exception v9

    if-eqz v3, :cond_7

    :try_start_16
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    :cond_7
    throw v9

    :catch_b
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_c
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_d
    move-exception v5

    :try_start_17
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    if-eqz v4, :cond_8

    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    :cond_8
    move-object v3, v4

    move-object v0, v1

    goto/16 :goto_0

    :catch_e
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    move-object v0, v1

    goto/16 :goto_0

    :catchall_4
    move-exception v9

    if-eqz v4, :cond_9

    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    :cond_9
    throw v9

    :catch_f
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    move-object v0, v1

    goto/16 :goto_0

    :catch_10
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    move-object v0, v1

    goto/16 :goto_0

    :catchall_5
    move-exception v9

    move-object v0, v1

    goto :goto_3

    :catchall_6
    move-exception v9

    move-object v3, v4

    move-object v0, v1

    goto :goto_3

    :catch_11
    move-exception v5

    goto/16 :goto_2

    :catch_12
    move-exception v5

    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static UnzipFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    if-eq v3, v4, :cond_2

    new-instance v4, Ljava/io/IOException;

    const-string v5, "incorrect zip file size"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    add-int/2addr v3, v2

    int-to-long v4, v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 7

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    const-string v4, "zhrzhang"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delete file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v2

    :goto_1
    return v4

    :cond_2
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/wrapper/proxyapplication/Util;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getCPUABI()V
    .locals 6

    sget-object v2, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "getprop ro.product.cpu.abi"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "x86"

    sput-object v2, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "armeabi-v7a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "arm64-v8a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "armeabi-v7a"

    sput-object v2, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "armeabi"

    sput-object v2, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v2, "armeabi"

    sput-object v2, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getCRC32(Ljava/io/File;)J
    .locals 10

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v4, v2, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/high16 v9, 0x10000

    :try_start_2
    new-array v0, v9, [B

    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v9

    if-gez v9, :cond_0

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    move-object v1, v2

    :goto_0
    return-wide v6

    :catch_0
    move-exception v8

    :goto_1
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v8

    :goto_2
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v8

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v8

    move-object v3, v4

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v8

    move-object v1, v2

    goto :goto_1

    :catch_5
    move-exception v8

    move-object v3, v4

    move-object v1, v2

    goto :goto_1
.end method

.method private static getFileCRC32(Ljava/io/File;)J
    .locals 12

    const-wide/16 v8, -0x1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v5, v10, [B

    const/4 v3, 0x0

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-gez v6, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    :cond_0
    :goto_1
    return-wide v8

    :cond_1
    :try_start_3
    invoke-virtual {v0, v5}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/2addr v7, v6

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v3, :cond_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_2
    :goto_5
    throw v10

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception v10

    move-object v3, v4

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method

.method private static isFileValid(Ljava/lang/String;J)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

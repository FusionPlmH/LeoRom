.class Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
.super Ljava/lang/Object;
.source "WifiApBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiApBRthread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHotspotEnabled:Z

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

.field private wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v3, "SAMSUNG-"

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model name.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private loadOtherConf(Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    move v5, v0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v3, v8

    const/4 v8, 0x1

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v9

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v6, v10

    if-eqz v10, :cond_13

    if-ne v8, v0, :cond_0

    :try_start_2
    iget-object v10, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setTimeout(ILandroid/content/Context;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v3

    move/from16 v20, v5

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v5

    goto/16 :goto_24

    :catch_0
    move-exception v0

    move/from16 v20, v5

    goto/16 :goto_18

    :catch_1
    move-exception v0

    move/from16 v20, v5

    goto/16 :goto_1b

    :catch_2
    move-exception v0

    move/from16 v20, v5

    goto/16 :goto_1e

    :cond_0
    const/4 v10, 0x2

    if-ne v8, v10, :cond_6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v13

    add-int v14, v13, v12

    const/16 v15, 0xa

    if-le v14, v15, :cond_4

    const-string v14, "WifiApBackupRestore"

    const-string v0, "Exceeds allowed List Size of 10. Delete old devices in Restore DUTB"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v14, v0

    new-array v0, v15, [Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v15, v0

    const/4 v0, 0x0

    if-eqz v14, :cond_1

    :goto_1
    :try_start_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    move-object/from16 v17, v16

    move-object/from16 v11, v17

    invoke-virtual {v11}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-eqz v13, :cond_3

    :try_start_5
    aget-object v0, v15, v11

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v19, v3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :try_start_6
    const-string v0, "WifiApBackupRestore"

    const-string v3, "Error in removing WhiteList!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    nop

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :goto_3
    nop

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :goto_4
    nop

    const-string v3, "WifiApBackupRestore"

    move/from16 v20, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error IOException "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_6

    :goto_5
    nop

    :goto_6
    const/4 v3, 0x0

    return v3

    :catchall_1
    move-exception v0

    move/from16 v20, v5

    goto/16 :goto_17

    :catch_4
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v3, v19

    goto/16 :goto_18

    :catch_5
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v3, v19

    goto/16 :goto_1b

    :catch_6
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v3, v19

    goto/16 :goto_1e

    :cond_2
    move/from16 v20, v5

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v11, v11, 0x1

    nop

    move v10, v3

    move-object/from16 v3, v19

    move-object/from16 v7, p1

    goto :goto_2

    :cond_3
    move-object/from16 v19, v3

    move/from16 v20, v5

    if-eqz v13, :cond_5

    :try_start_8
    const-string v0, "WifiApBackupRestore"

    const-string v3, "unknown error in removing WifiApWhitelist"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    nop

    nop

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_8

    :goto_7
    nop

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :goto_8
    nop

    const-string v3, "WifiApBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error IOException "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_a

    :goto_9
    nop

    move/from16 v5, v20

    :goto_a
    const/4 v3, 0x0

    return v3

    :cond_4
    move-object/from16 v19, v3

    move/from16 v20, v5

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_f

    :cond_6
    move-object/from16 v19, v3

    move/from16 v20, v5

    :try_start_a
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    const/4 v0, 0x1

    aget-object v5, v3, v0

    const/4 v7, 0x0

    aget-object v10, v3, v7

    invoke-virtual {v9, v5, v10}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_7

    const-string v0, "WifiApBackupRestore"

    const-string v5, "Whitelist is NOTMAC. QUIT!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    nop

    nop

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_c

    :goto_b
    nop

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_d

    :goto_c
    nop

    const-string v5, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error IOException "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_e

    :goto_d
    nop

    move/from16 v5, v20

    :goto_e
    const/4 v7, 0x0

    return v7

    :cond_7
    goto/16 :goto_f

    :cond_8
    const/4 v0, 0x1

    :try_start_c
    const-string v3, "PMFChecked"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, -0x1

    const/16 v7, 0x3d

    if-eqz v3, :cond_a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_9

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore pmf:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setPMFChecked(ILandroid/content/Context;)V

    :cond_9
    goto/16 :goto_f

    :cond_a
    const-string v3, "5gPreferChecked"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_b

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore 5gPreferChecked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->set5gPreferChecked(ILandroid/content/Context;)V

    :cond_b
    goto/16 :goto_f

    :cond_c
    const-string v3, "last2gChannel"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_d

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore last2gChannel (5gPrefer already checked) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "wifi_ap_last_2g_channel"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    goto :goto_f

    :cond_e
    const-string v3, "PSChecked"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_f

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore PSmode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setPSChecked(ILandroid/content/Context;)V

    :cond_f
    goto :goto_f

    :cond_10
    const-string v3, "WifiSharing"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_11

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore WifiSharing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setWIFISharing(ILandroid/content/Context;)V

    :cond_11
    nop

    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v19

    move/from16 v5, v20

    move-object/from16 v7, p1

    goto/16 :goto_0

    :cond_12
    const-string v0, "WifiApBackupRestore"

    const-string v3, "Invlaid format. RETURN FALSE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    nop

    nop

    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_11

    :goto_10
    nop

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_12

    :goto_11
    nop

    const-string v3, "WifiApBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error IOException "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_13

    :goto_12
    nop

    move/from16 v5, v20

    :goto_13
    const/4 v3, 0x0

    return v3

    :catchall_2
    move-exception v0

    goto/16 :goto_24

    :catch_a
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_18

    :catch_b
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_1b

    :catch_c
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_1e

    :cond_13
    move-object/from16 v19, v3

    move/from16 v20, v5

    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_14

    :catch_d
    move-exception v0

    goto :goto_15

    :goto_14
    nop

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_16

    :goto_15
    nop

    const-string v3, "WifiApBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    nop

    move-object/from16 v3, v19

    goto/16 :goto_23

    :goto_16
    nop

    move-object/from16 v3, v19

    move/from16 v5, v20

    goto/16 :goto_23

    :catchall_3
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v5

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_25

    :catch_e
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v5

    goto :goto_18

    :catch_f
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v5

    goto :goto_1b

    :catch_10
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v20, v5

    goto/16 :goto_1e

    :catchall_4
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v19, v3

    :goto_17
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_25

    :catch_11
    move-exception v0

    move/from16 v20, v5

    :goto_18
    :try_start_f
    const-string v5, "WifiApBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_19

    :catch_12
    move-exception v0

    goto :goto_1a

    :cond_14
    :goto_19
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    goto/16 :goto_22

    :goto_1a
    nop

    const-string v6, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_21

    :catch_13
    move-exception v0

    move/from16 v20, v5

    :goto_1b
    :try_start_11
    const-string v5, "WifiApBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error NumberFormatException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    const/4 v5, 0x0

    if-eqz v4, :cond_15

    :try_start_12
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_1c

    :catch_14
    move-exception v0

    goto :goto_1d

    :cond_15
    :goto_1c
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14

    goto :goto_22

    :goto_1d
    nop

    const-string v6, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_21

    :catch_15
    move-exception v0

    move/from16 v20, v5

    :goto_1e
    :try_start_13
    const-string v5, "WifiApBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error FileNotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    const/4 v5, 0x0

    if-eqz v4, :cond_16

    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_1f

    :catch_16
    move-exception v0

    goto :goto_20

    :cond_16
    :goto_1f
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_16

    goto :goto_22

    :goto_20
    nop

    const-string v6, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_21
    const-string v8, "Error IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_23

    :cond_17
    :goto_22
    nop

    :goto_23
    return v5

    :catchall_5
    move-exception v0

    move-object/from16 v19, v3

    :goto_24
    move-object v3, v2

    move-object v2, v0

    :goto_25
    if-eqz v4, :cond_18

    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_26

    :catch_17
    move-exception v0

    goto :goto_27

    :cond_18
    :goto_26
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_17

    goto :goto_28

    :goto_27
    nop

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WifiApBackupRestore"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_29

    :cond_19
    :goto_28
    move/from16 v5, v20

    :goto_29
    throw v2
.end method

.method private loadWifiApConfig(Ljava/lang/String;)Z
    .locals 11

    const-string v0, "WifiApBackupRestore"

    const-string v1, "loadWifiApConfig.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    move v3, v2

    :try_start_0
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v6

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move v3, v6

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v7, 0xe

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v6, v4, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :cond_0
    const/4 v6, 0x1

    if-ne v3, v2, :cond_2

    iget v8, v4, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ge v8, v7, :cond_1

    const/4 v8, 0x0

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto :goto_0

    :cond_1
    iput v6, v4, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_2
    :goto_0
    const/4 v8, 0x4

    if-ne v3, v8, :cond_3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$900(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v8

    const/16 v9, 0x15

    if-le v8, v9, :cond_5

    iget v8, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    const/16 v9, 0x8

    if-eqz v8, :cond_4

    iget v8, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v8, v9, :cond_5

    :cond_4
    const-string v8, "TMO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iput v9, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto :goto_1

    :cond_5
    iget v8, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v8, :cond_6

    iget v8, v5, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "WifiApBackupRestore"

    const-string v10, "Both models are same"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v4}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    move v1, v9

    if-ne v1, v6, :cond_9

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ge v6, v7, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_ap_last_2g_channel"

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    const-string v6, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result of setWifiApConfiguration.."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    goto :goto_4

    :catch_0
    move-exception v2

    const-string v4, "WifiApBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v6, "Exception in loadWifiApConfig.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v4

    :try_start_2
    const-string v5, "WifiApBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v3, v2, :cond_a

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadApConfigurationOldVer(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    :cond_a
    if-eqz v0, :cond_b

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v4, "WifiApBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_b
    :goto_4
    return v1

    :goto_5
    if-eqz v0, :cond_c

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in loadWifiApConfig.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WifiApBackupRestore"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    throw v2
.end method

.method private writeOtherConf(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getTimeoutValueFromPreference(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PMFChecked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_pmf_checked"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PSChecked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_powersave_mode_checked"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiSharing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getWifiSharing(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "5gPreferChecked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->get5gPreferChecked(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->get5gPreferChecked(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last2gChannel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_last_2g_channel"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v4, "Error IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileWriter TIMEOUT exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    nop

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiApBackupRestore"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_3
    :goto_5
    throw v1
.end method


# virtual methods
.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1502(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1500()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v1, v2

    if-gtz v2, :cond_0

    const-string v2, "WifiApBackupRestore"

    const-string v3, "Error reading bytes into iv"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1402(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v1, v3

    if-gtz v3, :cond_1

    const-string v3, "WifiApBackupRestore"

    const-string v4, "Error reading bytes into salt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1500()Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1500()Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v4
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    move-object v0, v6

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :cond_1
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x400

    new-array v8, v7, [B

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v8, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    invoke-virtual {v1, v8, v4, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_3
    nop

    const-string v6, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v8, "ioexception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_8

    :cond_6
    :goto_5
    goto :goto_8

    :catchall_0
    move-exception v4

    goto :goto_9

    :catch_1
    move-exception v4

    :try_start_2
    const-string v6, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, -0x1

    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :catch_2
    move-exception v4

    goto :goto_7

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :goto_7
    nop

    const-string v6, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :goto_8
    const-string v4, "WifiApBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Everything OK?0:1 - ret"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_9
    nop

    if-eqz v1, :cond_a

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_a

    :catch_3
    move-exception v6

    goto :goto_b

    :cond_a
    :goto_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :goto_b
    nop

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ioexception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WifiApBackupRestore"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    nop

    :cond_d
    :goto_c
    throw v4
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1502(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1500()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateEncryptSalt()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1402(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1500()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1500()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3
.end method

.method public generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1402(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    return-object v1
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/16 v0, 0x3e8

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v5

    invoke-direct {v4, v2, v5, v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1302(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1300()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method loadApConfigurationOldVer(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    iput-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v5, 0xe

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v4, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$900(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v4

    const/16 v5, 0x15

    if-le v4, v5, :cond_2

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v4, v5, :cond_2

    :cond_1
    const-string v4, "TMO"

    sget-object v6, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto :goto_0

    :cond_2
    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v4, :cond_3

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v4, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_3
    :goto_0
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    const-string v6, "WifiApBackupRestore"

    const-string v7, " conf changed to wpa2 from wpa"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    move v1, v6

    const-string v6, "WifiApBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result of setWifiApConfiguration from OldVer.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    goto :goto_5

    :catch_0
    move-exception v2

    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v5, "Exception is.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_8
    :goto_5
    return v1

    :goto_6
    if-eqz v0, :cond_9

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiApBackupRestore"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_7
    throw v2
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "wifi_wpaconf.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/FileWriter;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v4

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, ""

    const-string v5, "Wi-Fi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "model"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "model"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "conf"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "softap.conf"

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "conf"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "otherconf"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "MHStempbackup.conf"

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "otherconf"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "Wi-Fi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeXML exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v5, "Error IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_2

    :cond_0
    :goto_1
    nop

    :goto_2
    return v1

    :goto_3
    nop

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiApBackupRestore"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    nop

    :cond_1
    :goto_4
    throw v2
.end method

.method public permissionCheck()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1200()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method readXML(Ljava/lang/String;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v5, Ljava/io/FileReader;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "wifi_wpaconf.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v5

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    :goto_0
    if-eq v5, v3, :cond_8

    const/4 v9, 0x2

    if-ne v5, v9, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    const-string v9, "model"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "conf"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "otherconf"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_0
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v9, 0x4

    if-ne v5, v9, :cond_4

    if-eqz v6, :cond_2

    const-string v9, "model"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1002(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    const-string v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readXML] model : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    if-eqz v6, :cond_3

    const-string v9, "conf"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$602(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    const-string v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readXML] xmlConf : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_7

    const-string v9, "otherconf"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$702(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    const-string v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readXML] xmlOtherConf : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v9, 0x3

    if-ne v5, v9, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    if-eqz v6, :cond_5

    const-string v9, "model"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    const-string v9, "conf"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    const-string v9, "otherconf"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v6, 0x0

    :cond_7
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v9

    goto/16 :goto_0

    :cond_8
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v5, "Exception on closing.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read XML Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, -0x1

    if-eqz v1, :cond_9

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_4
    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runtimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, -0x1

    if-eqz v1, :cond_9

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    const-string v3, "WifiApBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_4
    return v0

    :goto_5
    nop

    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on closing.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiApBackupRestore"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_a
    :goto_6
    throw v2
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const-string v0, "WifiApBackupRestore"

    const-string v2, "intent is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    const-string v10, "SAVE_PATH"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    const-string v12, "SESSION_KEY"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$002(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    const-string v12, "EXPORT_SESSION_TIME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$102(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    const-string v12, "SECURITY_LEVEL"

    invoke-virtual {v11, v12, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$202(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I

    const-string v0, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[BACKUP] path : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", action : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mSource : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " sessionTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " securityLevel : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$502(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WifiApBackupRestore"

    const-string v3, "Permission Error."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9, v2, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    :cond_2
    const-string v0, "/data/misc/wifi/softap.conf"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v0, v11, v4

    if-nez v0, :cond_3

    const-string v0, "WifiApBackupRestore"

    const-string v2, "There is no conf file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_3
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "WifiApBackupRestore"

    const-string v2, "There is no networks to backup"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_4
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v13, v2

    mul-long v6, v4, v13

    cmp-long v2, v6, v11

    if-gez v2, :cond_5

    const-string v2, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "freeSpaceInBytes : "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", confSize : "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v2, v11

    invoke-virtual {v1, v9, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "softap.conf"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "/data/misc/wifi/softap.conf"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "softap.conf"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_6

    const-string v8, "WifiApBackupRestore"

    const-string v15, "encrypt fail"

    invoke-static {v8, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-virtual {v1, v9, v9, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_6
    new-instance v8, Ljava/io/File;

    const-string v15, "/data/misc/wifi_share_profile/MHStempbackup.conf"

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v15, "/data/misc/wifi_share_profile/MHStempbackup.conf"

    invoke-direct {v1, v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->writeOtherConf(Ljava/lang/String;)V

    const-string v15, "/data/misc/wifi_share_profile/MHStempbackup.conf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MHStempbackup.conf"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_7
    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    const-string v3, "WifiApBackupRestore"

    const-string v9, "encrypt fail"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v3, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_8
    invoke-virtual {v1, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->makeXML(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    const-string v3, "WifiApBackupRestore"

    const-string v9, "makeXML fail"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v3, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v9, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v0

    if-ne v0, v3, :cond_b

    const-string v0, "WifiApBackupRestore"

    const-string v2, "Action is CANCEL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto/16 :goto_3

    :cond_b
    const-string v0, "WifiApBackupRestore"

    const-string v2, "Sending Response FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_c
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "SAVE_PATH"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    const-string v9, "SESSION_KEY"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$002(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    const-string v9, "SECURITY_LEVEL"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$202(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I

    const-string v0, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RESTORE] path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", action : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mSource : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$502(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "WifiApBackupRestore"

    const-string v3, "PErmission ERROR"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_d
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    :cond_e
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    const-string v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setWifiApEnabled ..."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move v2, v0

    const/4 v0, 0x0

    :goto_1
    move v3, v0

    const/4 v8, 0x1

    if-ne v2, v8, :cond_11

    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    const/16 v0, 0xa

    if-le v3, v0, :cond_f

    goto :goto_2

    :cond_f
    nop

    move v0, v3

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "WifiApBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while turning off MHS "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_10
    move v2, v0

    :cond_11
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->readXML(Ljava/lang/String;)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_12

    const-string v4, "WifiApBackupRestore"

    const-string v5, "xml parsing error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v7, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-lez v8, :cond_18

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "temp.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "temp.conf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v9, -0x1

    if-ne v3, v9, :cond_13

    const-string v4, "WifiApBackupRestore"

    const-string v5, "decrypt fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "temp.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadWifiApConfig(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v4, "WifiApBackupRestore"

    const-string v5, "WifiConfig loaded fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_14
    const-string v9, "WifiApBackupRestore"

    const-string v10, "WifiConfig loaded success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-lez v4, :cond_17

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "MHStemprestore.conf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "MHStemprestore.conf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    const-string v5, "WifiApBackupRestore"

    const-string v7, "decrypt fail"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v5, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "MHStemprestore.conf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadOtherConf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_16
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto :goto_3

    :cond_17
    const/4 v8, 0x0

    const-string v4, "WifiApBackupRestore"

    const-string v5, "can\'t read otherconf file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_18
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v5, "WifiApBackupRestore"

    const-string v9, "can\'t read configuration file"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_19
    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v0

    if-ne v0, v3, :cond_1a

    goto :goto_3

    :cond_1a
    invoke-virtual {v1, v4, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_1b
    :goto_3
    return-void
.end method

.method sendResponse(III)V
    .locals 5

    const-string v0, "WifiApBackupRestore"

    const-string v1, "sendResponse.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WifiApBackupRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",rs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isCancelled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SmartSwitch"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    const-string v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_4
    return-void
.end method

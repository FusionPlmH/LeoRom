.class Lcom/wrapper/proxyapplication/AndroidNClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "AndroidNClassLoader.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecShell"

.field private static baseApkFullPath:Ljava/lang/String;

.field private static oldDexPathListHolder:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->oldDexPathListHolder:Ljava/lang/Object;

    sput-object v0, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->baseApkFullPath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/app/Application;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_0
    invoke-virtual {p3}, Landroid/app/Application;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->baseApkFullPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SecShell"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AndroidNClassLoader init:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static createAndroidNClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/app/Application;)Ljava/lang/ClassLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/wrapper/proxyapplication/AndroidNClassLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/wrapper/proxyapplication/AndroidNClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/app/Application;)V

    const-string v5, "pathList"

    invoke-static {p1, v5}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v0, v5}, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->recreateDexPathList(Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "definingContext"

    invoke-static {v3, v5}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->oldDexPathListHolder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v5, "SecShell"

    const-string v6, "AndroidNClassLoader createAndroidNClassLoader"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p1

    goto :goto_0
.end method

.method public static inject(Ljava/lang/ClassLoader;Landroid/app/Application;)Ljava/lang/ClassLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, ""

    invoke-static {v2, p0, p1}, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->createAndroidNClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/app/Application;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->reflectPackageInfoClassloader(Landroid/app/Application;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "SecShell"

    const-string v3, "AndroidNClassLoader inject"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static recreateDexPathList(Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v17, 0x4

    :try_start_0
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Ljava/lang/ClassLoader;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-class v19, Ljava/io/File;

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findConstructor(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    if-eqz p2, :cond_0

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x0

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x0

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    :goto_0
    return-object v17

    :cond_0
    const-string v17, "dexElements"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const-string v17, "nativeLibraryDirectories"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "dexFile"

    invoke-static/range {v17 .. v18}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v11, 0x1

    array-length v0, v3

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    const/16 v18, 0x2

    aput-object v13, v17, v18

    const/16 v18, 0x3

    const/16 v19, 0x0

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    goto :goto_0

    :cond_2
    aget-object v2, v3, v17

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldalvik/system/DexFile;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->baseApkFullPath:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v5}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    const-string v17, "SecShell"

    const-string v18, "AndroidNClassLoader recreateDexPathList"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    sget-object v19, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    if-eqz v12, :cond_1

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    sget-object v18, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private static reflectPackageInfoClassloader(Landroid/app/Application;Ljava/lang/ClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v3, "mBase"

    invoke-static {p0, v3}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v3, "mPackageInfo"

    invoke-static {v0, v3}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "mClassLoader"

    invoke-static {v1, v3}, Lcom/wrapper/proxyapplication/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "SecShell"

    const-string v4, "AndroidNClassLoader reflectPackageInfoClassloader"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

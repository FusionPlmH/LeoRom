.class final Lcom/wrapper/proxyapplication/MultiDex$V4;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wrapper/proxyapplication/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V4"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/io/File;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/wrapper/proxyapplication/MultiDex$V4;->install(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/io/File;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v14, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v8, v9, [Ljava/lang/String;

    new-array v7, v9, [Ljava/io/File;

    new-array v10, v9, [Ljava/util/zip/ZipFile;

    new-array v6, v9, [Ldalvik/system/DexFile;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string v18, "MultiDex"

    const-string v19, "v4 inject"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v18, "mPaths"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/wrapper/proxyapplication/MultiDex;->access$1(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v18, "mFiles"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/wrapper/proxyapplication/MultiDex;->access$1(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v18, "mZips"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/wrapper/proxyapplication/MultiDex;->access$1(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v18, "mDexs"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/wrapper/proxyapplication/MultiDex;->access$1(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_0

    const/4 v14, 0x0

    :cond_0
    return-object v14

    :cond_1
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5}, Lcom/wrapper/proxyapplication/MultiDex;->access$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x3a

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/ListIterator;->previousIndex()I

    move-result v11

    aput-object v5, v8, v11

    aput-object v3, v7, v11

    new-instance v18, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v18, v10, v11

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".dex"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v18

    aput-object v18, v6, v11

    aget-object v18, v6, v11

    const-string v19, "mCookie"

    invoke-static/range {v18 .. v19}, Lcom/wrapper/proxyapplication/MultiDex;->access$0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aget-object v18, v6, v11

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

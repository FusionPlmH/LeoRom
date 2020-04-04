.class final Lcom/wrapper/proxyapplication/MultiDexForTinker$V4;
.super Ljava/lang/Object;
.source "MultiDexForTinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wrapper/proxyapplication/MultiDexForTinker;
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

.method static synthetic access$0(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/wrapper/proxyapplication/MultiDexForTinker$V4;->install(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/io/File;)V
    .locals 9
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
            ")V"
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

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/String;

    new-array v1, v3, [Ljava/io/File;

    new-array v4, v3, [Ljava/util/zip/ZipFile;

    new-array v0, v3, [Ldalvik/system/DexFile;

    array-length v7, v0

    if-eq v7, v3, :cond_0

    new-instance v7, Ljava/io/IOException;

    const-string v8, "load dex failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "mPaths"

    invoke-static {p0, v7, v2}, Lcom/wrapper/proxyapplication/MultiDexForTinker;->access$0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "mFiles"

    invoke-static {p0, v7, v1}, Lcom/wrapper/proxyapplication/MultiDexForTinker;->access$0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "mZips"

    invoke-static {p0, v7, v4}, Lcom/wrapper/proxyapplication/MultiDexForTinker;->access$0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "mDexs"

    invoke-static {p0, v7, v0}, Lcom/wrapper/proxyapplication/MultiDexForTinker;->access$0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

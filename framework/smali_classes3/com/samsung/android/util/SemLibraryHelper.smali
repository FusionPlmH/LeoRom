.class public Lcom/samsung/android/util/SemLibraryHelper;
.super Ljava/lang/Object;
.source "SemLibraryHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static isInitialized:Z

.field private static jarFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jarLibraryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static soLibraryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static soLibraryVersionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/util/SemLibraryHelper;->isSupportedLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int v2, p1, v0

    aput-object v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method private static checkLibrary(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/lib/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "/system/lib64/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "/system/vendor/lib/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "/system/vendor/lib64/"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private static fileFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v3, v2

    :goto_0
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v6

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/samsung/android/util/SemLibraryHelper;->fileFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    return v2

    :catch_0
    move-exception v3

    return v2
.end method

.method private static getJarLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    return-object v1

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "opt"

    const-string v6, "dex"

    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/samsung/android/util/SemLibraryHelper;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v1, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sget-object v4, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    nop

    :goto_0
    nop

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/util/LibraryVersionQuery;

    invoke-interface {v2}, Lcom/samsung/android/util/LibraryVersionQuery;->getLibraryVersion()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v2

    return-object v1
.end method

.method public static getLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getSoLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getJarLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSoLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->checkLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedLibraryList()[Ljava/lang/String;
    .locals 7

    sget-boolean v0, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    :cond_0
    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget-object v1, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/util/SemLibraryHelper;->addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/util/SemLibraryHelper;->addSupportedLibraries([Ljava/lang/String;ILjava/util/Iterator;)I

    move-result v4

    add-int/2addr v1, v4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v6, v0, v5

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private static initializeMapData()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string v1, "SmartCropping"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string v1, "SmpsManager"

    const-string v2, "com.samsung.audio.SmpsManager"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string v1, "VeSDK"

    const-string v2, "com.samsung.app.video.editor.external.LibraryVersionQuery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string v1, "SPay"

    const-string v2, "android.spay.LibraryVersionQuery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string v1, "TmoWfcUtils"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarLibraryMap:Ljava/util/HashMap;

    const-string v1, "SamsungAndroidDRK"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string v1, "SmartCropping"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string v1, "SmpsManager"

    const-string v3, "/system/framework/SmpsManager.jar"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string v1, "VeSDK"

    const-string v3, "/system/framework/videoeditor_sdk.jar"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string v1, "SPay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string v1, "TmoWfcUtils"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->jarFileMap:Ljava/util/HashMap;

    const-string v1, "SamsungAndroidDRK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string v1, "NativeSecureStorage"

    const-string/jumbo v2, "secure_storage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string v1, "JNISecureStorage"

    const-string/jumbo v2, "secure_storage_jni"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string v1, "NativeSaivBarcode"

    const-string/jumbo v2, "saiv_barcode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string v1, "NativeSmartCropping"

    const-string/jumbo v2, "smart_cropping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string v1, "NativeParallelCV"

    const-string v2, "OpenCv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string v1, "NativeSOMP"

    const-string/jumbo v2, "somp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string v1, "JNISaivHprFaceCMHSupport"

    const-string/jumbo v2, "saiv_HprFace_cmh_support_jni"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryMap:Ljava/util/HashMap;

    const-string v1, "NativeSaivBeautySolution"

    const-string/jumbo v2, "saiv_BeautySolution"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string v1, "NativeSecureStorage"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string v1, "JNISecureStorage"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string v1, "NativeSaivBarcode"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string v1, "NativeSmartCropping"

    const-string v2, "2.0.9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string v1, "NativeParallelCV"

    const-string v2, "3.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string v1, "NativeSOMP"

    const-string v2, "3.1.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string v1, "JNISaivHprFaceCMHSupport"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/util/SemLibraryHelper;->soLibraryVersionMap:Ljava/util/HashMap;

    const-string v1, "NativeSaivBeautySolution"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isSupportedLibrary(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/util/SemLibraryHelper;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/util/SemLibraryHelper;->initializeMapData()V

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/util/SemLibraryHelper;->getLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

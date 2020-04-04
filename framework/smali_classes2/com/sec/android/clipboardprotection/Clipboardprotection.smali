.class public Lcom/sec/android/clipboardprotection/Clipboardprotection;
.super Ljava/lang/Object;
.source "Clipboardprotection.java"


# static fields
.field protected static final CLP_LOG_TAG:Ljava/lang/String; = "CLP"

.field public static final CLP_USE_READ_PROTECTION:Z = false

.field public static final CLP_USE_WRITE_PROTECTION:Z = false

.field public static final PINFO_CHECK_NO_INFO:I = 0x2

.field public static final PINFO_CHECK_SUCCESS:I = 0x1

.field public static final PKG_BIXBY:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field public static SEP_LITE:Z

.field static bixbyclientpkg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static connectlist:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static mSystemContext:Landroid/content/Context;

.field public static puidlist:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static puidlistpkg:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static signaturelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sssupported:Z

.field static whitelistedPkg:Ljava/util/HashMap;
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
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    sput-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->sssupported:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->whitelistedPkg:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->whitelistedPkg:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.messaging"

    const-string v2, "KLv+SnuX50aB3FXC+7bMuNbHSWNzP2r2rnTYw6boef0="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->bixbyclientpkg:Ljava/util/List;

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->bixbyclientpkg:Ljava/util/List;

    const-string v1, "com.samsung.android.messaging"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->signaturelist:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->signaturelist:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.contacts"

    const-string v2, "KLv+SnuX50aB3FXC+7bMuNbHSWNzP2r2rnTYw6boef0="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->connectlist:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlistpkg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/sec/android/securestorage/SecureStorage;->isSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->sssupported:Z

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    sput-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->mSystemContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPinfosender(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "CLP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check pinfo sender.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/clipboardprotection/Clipboardprotection;->connectlist:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/sec/android/clipboardprotection/Clipboardprotection;->connectlist:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p0, :cond_5

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p1, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v4

    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_0

    return v0

    :cond_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->getPUid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_2

    return v0

    :cond_2
    move v8, v0

    move v0, v4

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    if-nez v8, :cond_3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, p3}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->checkProcessInfo(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    return v8

    :cond_4
    move v0, v8

    :cond_5
    goto/16 :goto_0

    :cond_6
    return v0
.end method

.method public static checkProcessInfo(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "CLP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check pinfo.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, p0

    int-to-long v2, p1

    invoke-static {v0, v1, p2, v2, v3}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->jniCLPcheckPinfo(JLjava/lang/String;J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const-string v1, "ClipboardPolicyObserver"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v1, "CLP1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attacknoinfo/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/clipboardprotection/Clplog;->logDSMS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "CLP1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attacktimeout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/clipboardprotection/Clplog;->logDSMS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static checkProcessInfonouser(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 21

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "CLP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check pinfo nouser.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/clipboardprotection/Clipboardprotection;->connectlist:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Lcom/sec/android/clipboardprotection/Clipboardprotection;->connectlist:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_0

    return v4

    :cond_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    sget-object v10, Lcom/sec/android/clipboardprotection/Clipboardprotection;->connectlist:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ne v0, v12, :cond_6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ne v1, v12, :cond_6

    sget-object v12, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlist:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v12, :cond_2

    return v4

    :cond_2
    sget-object v12, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlist:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-nez v12, :cond_3

    return v4

    :cond_3
    move v13, v4

    move v4, v9

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    if-nez v13, :cond_4

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v1, v9, v3}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->checkProcessInfo(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v13

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    if-eqz v13, :cond_5

    return v13

    :cond_5
    nop

    move v4, v13

    :cond_6
    move/from16 v0, p0

    move/from16 v1, p1

    goto/16 :goto_0

    :cond_7
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v11, v3}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->checkProcessInfo(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move-object/from16 v17, v1

    const/16 v1, 0x2d

    if-eq v13, v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_9

    return v4

    :cond_9
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v17

    goto :goto_4

    :cond_a
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    sget-object v13, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlist:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v13, :cond_b

    return v4

    :cond_b
    sget-object v13, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlist:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_c

    return v4

    :cond_c
    move v13, v4

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v18, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_d

    if-nez v13, :cond_d

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/util/List;

    move-object/from16 v19, v1

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1, v3}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->checkProcessInfo(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v13

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    goto :goto_5

    :cond_d
    move-object/from16 v19, v1

    if-eqz v13, :cond_e

    return v13

    :cond_e
    move v4, v13

    :cond_f
    move-object/from16 v1, v17

    move-object/from16 v2, p2

    goto/16 :goto_3

    :cond_10
    nop

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_11
    return v4
.end method

.method public static checkSignature(ILjava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->signaturelist:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v1, "CLP"

    const-string v2, "Signature check not approved permission."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static fiveCheck(ILjava/lang/String;)Z
    .locals 4

    const-string v0, "CLP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIVE check.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->jniCLPfivecheck(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "CLP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FIVE : integrity value is not normal - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CLP2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fivefail/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/clipboardprotection/Clplog;->logDSMS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getPUid(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->mSystemContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const/4 v6, 0x0

    :goto_1
    iget-object v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    iget-object v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    const-string v4, "CLP"

    const-string v5, "Get puid null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method public static getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v3, v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v5, "SHA256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CLP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getsepliteboolean()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    return v0
.end method

.method public static isPackageAllowed(ZZZLjava/lang/String;Landroid/content/Context;)Z
    .locals 8

    const-string v0, "CLP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPackageAllowed, packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->getPUid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "ClipboardPolicyObserver"

    invoke-static {v4, v5, p3, v6}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->checkProcessInfo(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    if-nez v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "ClipboardPolicyObserver"

    invoke-static {v4, v6, p3, v7}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->checkProcessInfonouser(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :cond_3
    if-nez v3, :cond_4

    invoke-static {p3, p1, v0}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->whitelistCheck(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v3

    :cond_4
    const-string v1, "CLP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPackageAllowed, packageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isAllowed : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRead : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static issystemserver()Z
    .locals 7

    const-string v0, ""

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sget-object v2, Lcom/sec/android/clipboardprotection/Clipboardprotection;->mSystemContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v1, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private static native jniCLPcheckPinfo(JLjava/lang/String;J)I
.end method

.method private static native jniCLPfivecheck(J)Z
.end method

.method private static native jniCLPstorePinfo(JLjava/lang/String;J)V
.end method

.method public static ssLoad(Ljava/io/File;I)Ljava/lang/Object;
    .locals 27

    const-string v0, "CLP"

    const-string v1, "SS decryption."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->sssupported:Z

    if-nez v0, :cond_0

    const-string v0, "CLP"

    const-string v8, "SS not support."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->issystemserver()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLP"

    const-string/jumbo v8, "ssLoad) Not system_server"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v8, "clips"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    move-object/from16 v16, v0

    goto/16 :goto_c

    :cond_2
    :try_start_1
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage;

    invoke-direct {v0}, Lcom/sec/android/securestorage/SecureStorage;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clpkey"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sec/android/securestorage/SecureStorage;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v11

    move-object v11, v10

    move v10, v12

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_1
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-ge v10, v14, :cond_5

    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14
    :try_end_2
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const/16 v15, 0x2f

    if-ne v14, v15, :cond_3

    add-int/lit8 v13, v13, 0x1

    :cond_3
    const/4 v14, 0x4

    if-ne v13, v14, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_5
    :goto_2
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "iv"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object v3, v11

    :try_start_4
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0xc

    new-array v14, v14, [B

    array-length v15, v14

    invoke-virtual {v11, v14, v12, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    const-string v15, "AES/GCM/NoPadding"

    invoke-static {v15}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v17, v0

    const-string v0, "AES"

    invoke-direct {v12, v9, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v12

    new-instance v12, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_4
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v18, v1

    const/16 v1, 0x80

    :try_start_5
    invoke-direct {v12, v1, v14}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v1, v12

    const/4 v12, 0x2

    invoke-virtual {v15, v12, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v12, Ljava/io/File;

    move-object/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v2, v1

    :try_start_6
    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v2, v15}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    move-object/from16 v21, v0

    invoke-virtual {v1}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0
    :try_end_6
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v22, v0

    move-object/from16 v23, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    move/from16 v0, v22

    int-to-byte v2, v0

    :try_start_7
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, v21

    move-object/from16 v2, v23

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v23

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    goto/16 :goto_11

    :catch_2
    move-exception v0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    goto/16 :goto_b

    :cond_6
    move/from16 v0, v22

    :try_start_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [B

    const/16 v16, 0x0

    :goto_4
    move/from16 v24, v16

    move/from16 v25, v0

    array-length v0, v2
    :try_end_8
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v26, v3

    move/from16 v3, v24

    if-ge v3, v0, :cond_7

    :try_start_9
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v2, v3

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v25

    move-object/from16 v3, v26

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_5
    move-object/from16 v2, v23

    move-object/from16 v3, v26

    goto/16 :goto_15

    :catch_3
    move-exception v0

    move-object/from16 v1, v18

    :goto_6
    move-object/from16 v2, v23

    move-object/from16 v3, v26

    goto/16 :goto_11

    :catch_4
    move-exception v0

    move-object/from16 v1, v18

    :goto_7
    move-object/from16 v2, v23

    move-object/from16 v3, v26

    goto/16 :goto_b

    :cond_7
    invoke-virtual {v1}, Ljavax/crypto/CipherInputStream;->close()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_9
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v16, v3

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    nop

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v16

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v26, v3

    move-object v1, v0

    move-object/from16 v2, v23

    goto :goto_8

    :catch_7
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    goto :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    move-object v1, v0

    goto/16 :goto_15

    :catch_9
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    move-object/from16 v1, v18

    goto/16 :goto_11

    :catch_a
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    move-object/from16 v1, v18

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object/from16 v26, v3

    move-object v1, v0

    :goto_8
    goto/16 :goto_15

    :catch_b
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v1, v18

    :goto_9
    goto/16 :goto_11

    :catch_c
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v1, v18

    :goto_a
    goto :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v26, v3

    move-object v1, v0

    goto/16 :goto_15

    :catch_d
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v26, v3

    goto/16 :goto_11

    :catch_e
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v26, v3

    goto :goto_b

    :catch_f
    move-exception v0

    move-object/from16 v18, v1

    :goto_b
    :try_start_b
    const-string v8, "CLP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SS : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "CLP3"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ssreadfail/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/clipboardprotection/Clplog;->logDSMS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const/4 v0, 0x0

    goto/16 :goto_0

    :goto_c
    if-eqz v2, :cond_8

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_d

    :catch_10
    move-exception v0

    goto :goto_e

    :cond_8
    :goto_d
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_10

    :goto_e
    nop

    const-string v1, "CLP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    const-string/jumbo v9, "ssLoad close exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto :goto_14

    :cond_d
    :goto_10
    goto :goto_14

    :catch_11
    move-exception v0

    goto :goto_11

    :catchall_7
    move-exception v0

    move-object/from16 v18, v1

    move-object v1, v0

    goto :goto_15

    :catch_12
    move-exception v0

    move-object/from16 v18, v1

    :goto_11
    :try_start_d
    const-string v8, "CLP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ssLoad exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/16 v16, 0x0

    if-eqz v2, :cond_e

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_12

    :catch_13
    move-exception v0

    goto :goto_13

    :cond_e
    :goto_12
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_11
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    :cond_12
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_10

    :goto_13
    nop

    const-string v1, "CLP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f

    :goto_14
    const-string v0, "CLP"

    const-string v1, "SS decryption end."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :catchall_8
    move-exception v0

    move-object/from16 v18, v1

    move-object v1, v0

    :goto_15
    if-eqz v2, :cond_13

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_16

    :catch_14
    move-exception v0

    goto :goto_17

    :cond_13
    :goto_16
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_15
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_16
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    :cond_17
    if-eqz v7, :cond_18

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14

    goto :goto_18

    :goto_17
    nop

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ssLoad close exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CLP"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    nop

    :cond_18
    :goto_18
    throw v1
.end method

.method public static ssSave(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/clipboardprotection/Clipboardprotection$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/clipboardprotection/Clipboardprotection$1;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static ssSave_impl(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "CLP"

    const-string v3, "SS encryption."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->sssupported:Z

    if-nez v0, :cond_0

    const-string v0, "CLP"

    const-string v8, "SS not support."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "clips"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xc

    new-array v0, v0, [B

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    move-object v12, v0

    const/16 v16, 0x0

    :try_start_1
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage;

    invoke-direct {v0}, Lcom/sec/android/securestorage/SecureStorage;-><init>()V

    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clpkey"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sec/android/securestorage/SecureStorage;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    const/4 v7, 0x1

    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v12, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v9, ""

    const/4 v13, 0x0

    nop

    :goto_0
    move/from16 v17, v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move/from16 v15, v17

    if-ge v15, v14, :cond_3

    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v4

    :try_start_4
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v14, 0x2f

    if-ne v4, v14, :cond_1

    add-int/lit8 v13, v13, 0x1

    :cond_1
    const/4 v4, 0x4

    if-ne v13, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v16, v15, 0x1

    move-object/from16 v4, v18

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v18

    goto/16 :goto_1c

    :catch_0
    move-exception v0

    move-object/from16 v4, v18

    goto/16 :goto_15

    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    move-object v1, v0

    goto/16 :goto_1c

    :catch_1
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_15

    :cond_3
    move-object/from16 v18, v4

    :goto_1
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "iv"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    const-string v14, "AES/GCM/NoPadding"

    invoke-static {v14}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v14

    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v19, v4

    const-string v4, "AES"

    invoke-direct {v15, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v4, v15

    new-instance v15, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object/from16 v20, v5

    const/16 v5, 0x80

    :try_start_6
    invoke-direct {v15, v5, v8}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v5, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v21, v0

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v15}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v4, v22

    :try_start_7
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v24, v4

    :try_start_8
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v25, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move/from16 v26, v7

    :try_start_9
    const-string v7, "clp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v5, v4

    :try_start_a
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v5, v14}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-virtual {v4, v0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    nop

    move-object/from16 v1, v24

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v5, v20

    :goto_2
    move-object/from16 v4, v24

    move/from16 v7, v26

    goto/16 :goto_1c

    :catch_3
    move-exception v0

    move-object/from16 v5, v20

    :goto_3
    move-object/from16 v4, v24

    move/from16 v7, v26

    goto/16 :goto_15

    :catchall_4
    move-exception v0

    move/from16 v26, v7

    move-object v1, v0

    move-object/from16 v5, v20

    move-object/from16 v4, v24

    goto :goto_4

    :catch_4
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v5, v20

    move-object/from16 v4, v24

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v26, v7

    move-object v1, v0

    move-object/from16 v5, v20

    goto/16 :goto_1c

    :catch_5
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v26, v7

    move-object/from16 v5, v20

    goto/16 :goto_15

    :catchall_6
    move-exception v0

    move/from16 v26, v7

    move-object v1, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    :goto_4
    goto/16 :goto_1c

    :catch_6
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    :goto_5
    goto/16 :goto_15

    :catchall_7
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v26, v7

    move-object v1, v0

    move-object/from16 v4, v18

    goto/16 :goto_1c

    :catch_7
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v26, v7

    move-object/from16 v4, v18

    goto/16 :goto_15

    :catchall_8
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v26, v7

    move-object v1, v0

    goto/16 :goto_1c

    :catch_8
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v26, v7

    goto/16 :goto_15

    :cond_4
    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v26, v7

    move-object/from16 v1, v18

    goto/16 :goto_11

    :catchall_9
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    goto/16 :goto_d

    :catch_9
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    :try_start_b
    const-string v4, "Error: input data are incorrect"

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "CLP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SS : No key, make key, not error - "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/security/SecureRandom;->setSeed([B)V

    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    const/16 v13, 0x100

    invoke-virtual {v5, v13, v12}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v13

    invoke-interface {v13}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v14

    move-object v9, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "clpkey"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14, v9}, Lcom/sec/android/securestorage/SecureStorage;->put(Ljava/lang/String;[B)Z

    const/4 v4, 0x1

    nop

    move v7, v4

    goto :goto_6

    :cond_5
    const-string v4, "CLP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SS : "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CLP3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sswritefail/"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/clipboardprotection/Clplog;->logDSMS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    const/4 v0, 0x0

    move v7, v0

    :goto_6
    if-eqz v7, :cond_9

    :try_start_c
    invoke-virtual {v12, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v0, ""

    const/4 v4, 0x0

    nop

    :goto_7
    move/from16 v5, v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    if-ge v5, v13, :cond_8

    :try_start_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_13

    const/16 v14, 0x2f

    if-ne v13, v14, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    const/4 v13, 0x4

    if-ne v4, v13, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v16, v5, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "iv"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    const-string v13, "AES/GCM/NoPadding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    const-string v15, "AES"

    invoke-direct {v14, v9, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v15, Ljavax/crypto/spec/GCMParameterSpec;

    move/from16 v27, v4

    const/16 v4, 0x80

    invoke-direct {v15, v4, v8}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v4, v15

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v28, v0

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v15}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    move-object/from16 v29, v0

    move-object/from16 v30, v4

    move-object/from16 v4, v29

    :try_start_f
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    move-object/from16 v31, v4

    :try_start_10
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v32, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    move/from16 v33, v7

    :try_start_11
    const-string v7, "clp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move-object v5, v4

    :try_start_12
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v5, v13}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-virtual {v4, v0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    nop

    move-object/from16 v1, v31

    move/from16 v26, v33

    goto/16 :goto_11

    :catchall_a
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_a

    :catchall_b
    move-exception v0

    move-object v1, v0

    move-object/from16 v5, v20

    :goto_9
    move-object/from16 v4, v31

    move/from16 v7, v33

    goto/16 :goto_1c

    :catch_b
    move-exception v0

    move-object/from16 v5, v20

    :goto_a
    move-object/from16 v4, v31

    move/from16 v7, v33

    goto/16 :goto_15

    :catchall_c
    move-exception v0

    move/from16 v33, v7

    move-object v1, v0

    move-object/from16 v5, v20

    move-object/from16 v4, v31

    goto :goto_b

    :catch_c
    move-exception v0

    move/from16 v33, v7

    move-object/from16 v5, v20

    move-object/from16 v4, v31

    goto :goto_c

    :catchall_d
    move-exception v0

    move-object/from16 v31, v4

    move/from16 v33, v7

    move-object v1, v0

    move-object/from16 v5, v20

    goto/16 :goto_1c

    :catch_d
    move-exception v0

    move-object/from16 v31, v4

    move/from16 v33, v7

    move-object/from16 v5, v20

    goto/16 :goto_15

    :catchall_e
    move-exception v0

    move/from16 v33, v7

    move-object v1, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    :goto_b
    goto/16 :goto_1c

    :catch_e
    move-exception v0

    move/from16 v33, v7

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    :goto_c
    goto/16 :goto_15

    :cond_9
    move/from16 v33, v7

    move-object/from16 v1, v18

    move-object/from16 v5, v20

    move/from16 v26, v33

    goto/16 :goto_11

    :catchall_f
    move-exception v0

    :goto_d
    if-eqz v7, :cond_c

    :try_start_13
    invoke-virtual {v12, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v4, ""

    const/4 v5, 0x0

    nop

    :goto_e
    move/from16 v13, v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2f

    if-ne v14, v15, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    const/4 v14, 0x4

    if-eq v5, v14, :cond_b

    add-int/lit8 v16, v13, 0x1

    goto :goto_e

    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "iv"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v13, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    const-string v14, "AES/GCM/NoPadding"

    invoke-static {v14}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v14

    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v34, v4

    const-string v4, "AES"

    invoke-direct {v15, v9, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v4, v15

    new-instance v15, Ljavax/crypto/spec/GCMParameterSpec;

    move/from16 v35, v5

    const/16 v5, 0x80

    invoke-direct {v15, v5, v8}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v5, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v36, v4

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v15}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    :try_start_14
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move-object/from16 v37, v16

    new-instance v2, Ljava/io/FileOutputStream;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    move-object/from16 v38, v4

    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clp"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    move-object v1, v2

    :try_start_16
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, v1, v14}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object/from16 v4, v37

    invoke-virtual {v2, v4}, Ljavax/crypto/CipherOutputStream;->write([B)V

    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->flush()V

    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    move-object v5, v1

    move-object/from16 v4, v38

    goto :goto_10

    :catchall_10
    move-exception v0

    move-object v5, v1

    move-object/from16 v4, v38

    goto/16 :goto_1b

    :catch_f
    move-exception v0

    move-object v5, v1

    goto :goto_f

    :catchall_11
    move-exception v0

    move-object v1, v0

    move-object/from16 v5, v20

    move-object/from16 v4, v38

    goto/16 :goto_1c

    :catch_10
    move-exception v0

    move-object/from16 v5, v20

    :goto_f
    move-object/from16 v4, v38

    goto/16 :goto_15

    :catchall_12
    move-exception v0

    move-object/from16 v38, v4

    move-object v1, v0

    move-object/from16 v5, v20

    goto/16 :goto_1c

    :catch_11
    move-exception v0

    move-object/from16 v38, v4

    move-object/from16 v5, v20

    goto/16 :goto_15

    :catchall_13
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    goto/16 :goto_1c

    :catch_12
    move-exception v0

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    goto :goto_15

    :cond_c
    move-object/from16 v4, v18

    move-object/from16 v5, v20

    :goto_10
    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13
    .catchall {:try_start_17 .. :try_end_17} :catchall_15

    :catch_13
    move-exception v0

    goto :goto_15

    :cond_d
    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v26, v7

    move-object/from16 v1, v18

    :goto_11
    if-eqz v3, :cond_e

    :try_start_18
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_12

    :catch_14
    move-exception v0

    goto :goto_13

    :cond_e
    :goto_12
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    goto :goto_14

    :goto_13
    nop

    const-string v2, "CLP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ssSave close exception : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    goto :goto_1a

    :cond_11
    :goto_14
    goto :goto_1a

    :catchall_14
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move-object v1, v0

    goto :goto_1c

    :catch_15
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    :goto_15
    :try_start_19
    const-string v1, "CLP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ssSave exception : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_15

    const/16 v26, 0x0

    if-eqz v3, :cond_12

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_16

    :catch_16
    move-exception v0

    goto :goto_17

    :cond_12
    :goto_16
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_14
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_19

    :goto_17
    nop

    const-string v1, "CLP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ssSave close exception : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    nop

    :goto_18
    move-object v1, v4

    goto :goto_1a

    :cond_15
    :goto_19
    goto :goto_18

    :goto_1a
    nop

    const-string v0, "CLP"

    const-string v2, "SS encryption end."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_15
    move-exception v0

    :goto_1b
    move-object v1, v0

    :goto_1c
    if-eqz v3, :cond_16

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_1d

    :catch_17
    move-exception v0

    goto :goto_1e

    :cond_16
    :goto_1d
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_17
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_18
    if-eqz v6, :cond_19

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17

    goto :goto_1f

    :goto_1e
    nop

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ssSave close exception : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "CLP"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    nop

    :cond_19
    :goto_1f
    throw v1
.end method

.method public static storePinfo(IILjava/lang/String;)V
    .locals 4

    int-to-long v0, p0

    int-to-long v2, p1

    invoke-static {v0, v1, p2, v2, v3}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->jniCLPstorePinfo(JLjava/lang/String;J)V

    return-void
.end method

.method public static storePinfonouser(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/clipboardprotection/Clipboardprotection;->connectlist:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static whitelistCheck(Ljava/lang/String;ZLjava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "CLP"

    const-string v1, "Whitelist check."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->whitelistedPkg:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p1, :cond_2

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    if-nez v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, p0}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->fiveCheck(ILjava/lang/String;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_1
    sget-object v3, Lcom/sec/android/clipboardprotection/Clipboardprotection;->bixbyclientpkg:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    sget-object v3, Lcom/sec/android/clipboardprotection/Clipboardprotection;->bixbyclientpkg:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.samsung.android.bixby.agent"

    invoke-static {v3}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->getPUid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    const/4 v4, 0x0

    move v5, v4

    move v4, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    if-nez v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.samsung.android.bixby.agent"

    invoke-static {v6, v7}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->fiveCheck(ILjava/lang/String;)Z

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-nez v5, :cond_6

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const-string v1, "CLP"

    const-string v2, "Whitelist check success."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_7
    const-string v2, "CLP"

    const-string v3, "Whitelist signing check fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

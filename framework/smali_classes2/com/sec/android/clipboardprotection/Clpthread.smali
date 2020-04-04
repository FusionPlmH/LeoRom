.class public Lcom/sec/android/clipboardprotection/Clpthread;
.super Ljava/lang/Object;
.source "Clpthread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final CLP_LOG_TAG:Ljava/lang/String; = "CLP"


# instance fields
.field mPkgname:Ljava/lang/String;

.field mSenderPkg:Ljava/lang/String;

.field mUser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mUser:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addcreatedpuilist(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlistpkg:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlist:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlistpkg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->getPUid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlistpkg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sec/android/clipboardprotection/Clipboardprotection;->puidlist:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/clipboardprotection/Clpthread;->startActivitythread()V

    return-void
.end method

.method public startActivitythread()V
    .locals 14

    iget-object v0, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    const-string v1, "cmp="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x4

    :goto_0
    iget-object v4, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_3

    const-string v4, "CLP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "D-startActivitythread) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sec/android/clipboardprotection/Clpthread;->addcreatedpuilist(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->getPUid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "CLP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startActivity sender check.  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mPkgname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move v7, v5

    move v5, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v5, v8, :cond_6

    if-nez v7, :cond_6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mUser:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->checkProcessInfo(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    move v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    move v5, v6

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    if-nez v7, :cond_7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mUser:Ljava/lang/String;

    invoke-static {v8, v10, v11, v12}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->checkPinfosender(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    move v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_9

    move v5, v6

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/clipboardprotection/Clpthread;->mSenderPkg:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v10, v11, v12}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->storePinfonouser(IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/clipboardprotection/Clpthread;->addcreatedpuilist(Ljava/lang/String;)V

    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.class public final Landroid/database/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDatabaseErrorHandler"


# instance fields
.field private mDeleteDatabaseIfCorrupted:Z

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".corrupt"

    iput-object v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    return-void
.end method

.method private backCorruption(Ljava/lang/String;)V
    .locals 3

    const-string v0, ":memory:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "DefaultDatabaseErrorHandler"

    const-string v2, "!@ DB Corruption has happened before this"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabaseFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DefaultDatabaseErrorHandler"

    const-string v2, "!@ File delete failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultDatabaseErrorHandler"

    const-string v2, "!@ openDatabase - Exception during copying and renaming"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string v0, "DefaultDatabaseErrorHandler"

    const-string v1, "!@ Corruption in memory DB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteMarkFile(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mark"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mark2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x20b

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "DefaultDatabaseErrorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@ Corruption reported by sqlite ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") on database: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DefaultDatabaseErrorHandler"

    const-string v4, "!@ dbObj has been closed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    iget-boolean v2, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "DefaultDatabaseErrorHandler"

    const-string v3, "This application uses own corruption handler."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isForcedReadOnlyDatabase()Z

    move-result v3

    if-nez v3, :cond_f

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "DefaultDatabaseErrorHandler"

    const-string v4, "!@ Integrity Check for corrupted DB file gets OK as result"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mark2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v2, :cond_3

    const-string v5, "DefaultDatabaseErrorHandler"

    const-string v6, "!@ corruption reported twice before..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v2, :cond_4

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v5, "DefaultDatabaseErrorHandler"

    const-string v6, "!@ corruption reported once before..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    const-string v5, "DefaultDatabaseErrorHandler"

    const-string v6, "!@ Make .mark file to indicate Integrity is Ok"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "DefaultDatabaseErrorHandler"

    const-string v11, "!@ Integrity Check failed for corrupted DB file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getIntegrityErrorInfo()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    if-nez v10, :cond_8

    if-nez v9, :cond_8

    const-string v11, "DefaultDatabaseErrorHandler"

    const-string v12, "!@ Dropping cache in corruption handling."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "DefaultDatabaseErrorHandler"

    const-string v12, "!@ End transaction before dropping cache"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    goto :goto_2

    :catch_0
    move-exception v11

    :try_start_2
    const-string v12, "DefaultDatabaseErrorHandler"

    const-string v13, "!@ End transaction failed, go on ..."

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string v11, "PRAGMA drop_db_fs_cache;"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->reOpen()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v11

    :try_start_4
    const-string v12, "DefaultDatabaseErrorHandler"

    const-string v13, "Failed to re-open connection."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "DefaultDatabaseErrorHandler"

    const-string v12, "!@ Integrity Check gets OK as result after dropping cache/reopen"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/database/DefaultDatabaseErrorHandler;->deleteMarkFile(Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez v10, :cond_b

    if-eqz v3, :cond_b

    const-string v11, " index "

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    move v5, v11

    const-string v11, " is never used"

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    move v6, v11

    const-string v11, "freelist leaf count too big on page"

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    move v7, v11

    if-gtz v6, :cond_9

    if-ltz v7, :cond_a

    :cond_9
    if-nez v8, :cond_a

    const-string v11, "VACUUM;"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v10, 0x1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "DefaultDatabaseErrorHandler"

    const-string v12, "!@ Integrity Check gets OK as result after Vacuuming"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/database/DefaultDatabaseErrorHandler;->deleteMarkFile(Ljava/lang/String;)V

    return-void

    :cond_a
    if-lez v5, :cond_b

    add-int/lit8 v11, v5, 0x7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "REINDEX "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "DefaultDatabaseErrorHandler"

    const-string v12, "!@ Integrity Check gets OK as result after Reindexing"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/database/DefaultDatabaseErrorHandler;->deleteMarkFile(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :cond_b
    if-nez v10, :cond_6

    :goto_4
    goto :goto_5

    :catch_2
    move-exception v3

    :goto_5
    invoke-direct {p0, v0}, Landroid/database/DefaultDatabaseErrorHandler;->deleteMarkFile(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    iget-boolean v2, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    if-nez v2, :cond_c

    const-string v2, "DefaultDatabaseErrorHandler"

    const-string v3, "This application uses own corruption handler."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v2, v3

    goto :goto_6

    :catch_3
    move-exception v3

    :goto_6
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v3

    :goto_7
    if-eqz v2, :cond_d

    :try_start_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    const-string v5, "DefaultDatabaseErrorHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@ Back up corrupted DB File : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V

    goto :goto_8

    :catch_5
    move-exception v3

    goto :goto_9

    :cond_d
    const-string v3, "DefaultDatabaseErrorHandler"

    const-string v4, "!@ Failed to get attachedDbs"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_e
    goto :goto_a

    :goto_9
    nop

    :goto_a
    return-void

    :cond_f
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v3, "There was a corruption, but ignoring it because the connection is read-only connection."

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDeleteDatabaseIfCorrupted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    return-void
.end method

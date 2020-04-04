.class public final Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;
.super Ljava/lang/Object;
.source "SQLiteDatabaseSharedConfiguration.java"


# static fields
.field private static final DEFAULT_AUTOCHECK_POINT:J = 0x100L

.field private static final DEFAULT_JOURNAL_SIZE_LIMIT:J = 0x100000L

.field private static final DEFAULT_WAL_BLACKLIST:[Ljava/lang/String;

.field private static final DEFAULT_WAL_WHITELIST:[Ljava/lang/String;

.field private static final QUERY_COLLECT_PACKAGES:[Ljava/lang/String;


# instance fields
.field public final isSecureDb:Z

.field public final shouldSendQueryLog:Z

.field public final useWalModeByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "/com.samsung."

    const-string v1, "/com.sec."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->DEFAULT_WAL_WHITELIST:[Ljava/lang/String;

    const-string v0, "/EmailProvider.db"

    const-string v1, "/EmailProviderBody.db"

    const-string v2, "/iwlansettings.db"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->DEFAULT_WAL_BLACKLIST:[Ljava/lang/String;

    const-string v0, "/com.samsung."

    const-string v1, "/com.sec."

    const-string v2, "/data/system/"

    const-string v3, "/com.google."

    const-string v4, "/com.android.providers."

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->QUERY_COLLECT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget v2, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    invoke-direct {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isDefaultWalDb(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->useWalModeByDefault:Z

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->shouldSendQueryLog:Z

    return-void
.end method

.method private isDefaultWalDb(Ljava/lang/String;I)Z
    .locals 6

    and-int/lit16 v0, p2, 0x200

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->DEFAULT_WAL_BLACKLIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->DEFAULT_WAL_WHITELIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method private isQueryCollectDb(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->QUERY_COLLECT_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public getAutoCheckpoint()J
    .locals 2

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->useWalModeByDefault:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDefaultSyncMode()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    if-eqz v0, :cond_0

    const-string v0, "FULL"

    return-object v0

    :cond_0
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultSyncMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJournalSizeLimit()J
    .locals 2

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->useWalModeByDefault:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x100000

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

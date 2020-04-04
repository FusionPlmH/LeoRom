.class public Lcom/android/server/McpsService;
.super Lcom/android/server/SystemService;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/McpsService$LocalService;,
        Lcom/android/server/McpsService$McpsDBHelper;
    }
.end annotation


# static fields
.field public static final HEX_PREFIX:Ljava/lang/String; = "0x"

.field private static final SERVICE:Ljava/lang/String; = "mcps"

.field private static final TAG:Ljava/lang/String; = "MCPS-Service"

.field private static final mAVersion:Ljava/lang/String; = "0.1.4.0v"

.field private static mKVersion:Ljava/lang/String;


# instance fields
.field private final DRIVER_MCPS_STAT_DIST:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_DROP:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_ENQ:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_FLOW:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_IGN:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_PROC:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_TFLO:Ljava/lang/String;

.field private final DRIVER_STATS_PATH:Ljava/lang/String;

.field private mAdbPolicy:Lcom/android/server/MCPSPolicy;

.field private mBasePolicy:Lcom/android/server/MCPSPolicy;

.field private mHelper:Lcom/android/server/McpsService$McpsDBHelper;

.field private mInitToggle:Z

.field private final mKeyMcpsModules:Ljava/lang/Object;

.field private final mKeyPolicy:Ljava/lang/Object;

.field private mMdm:Lcom/android/server/McpsDumpManager;

.field private mMobileCmListener:Lcom/android/server/ConnectivityListener;

.field private final mRemoteService:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/android/server/McpsService;->mKVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/McpsService;->mKeyMcpsModules:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/McpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/McpsService$1;-><init>(Lcom/android/server/McpsService;)V

    iput-object v0, p0, Lcom/android/server/McpsService;->mRemoteService:Landroid/os/Binder;

    const-string v0, "/sys/module/mcps/parameters/"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_STATS_PATH:Ljava/lang/String;

    const-string/jumbo v0, "mcps_stat_distributed"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_DIST:Ljava/lang/String;

    const-string/jumbo v0, "mcps_stat_dropped"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_DROP:Ljava/lang/String;

    const-string/jumbo v0, "mcps_stat_enqueued"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_ENQ:Ljava/lang/String;

    const-string/jumbo v0, "mcps_stat_ignored"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_IGN:Ljava/lang/String;

    const-string/jumbo v0, "mcps_stat_processed"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_PROC:Ljava/lang/String;

    const-string/jumbo v0, "mcps_stat_sauron_flow"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_FLOW:Ljava/lang/String;

    const-string/jumbo v0, "mcps_stat_sauron_target_flow"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_TFLO:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/McpsService;->mInitToggle:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/McpsService;->mBasePolicy:Lcom/android/server/MCPSPolicy;

    new-instance v0, Lcom/android/server/MCPSPolicy$Builder;

    invoke-direct {v0}, Lcom/android/server/MCPSPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/McpsService;)Lcom/android/server/McpsDumpManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/McpsService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/McpsService;->isMCPSServiceInitialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/McpsService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/McpsService;->doCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/McpsService;Lcom/android/server/McpsService$McpsDBHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/McpsService;->updateSystemSettings(Lcom/android/server/McpsService$McpsDBHelper;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/McpsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/McpsService;->updateBasePolicy(Z)V

    return-void
.end method

.method private cmd(Lcom/android/server/MCPSPolicy;Z)Lcom/android/server/MCPSPolicy;
    .locals 12

    new-instance v0, Lcom/android/server/MCPSPolicy$Builder;

    invoke-direct {v0}, Lcom/android/server/MCPSPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/android/server/MCPSPolicy;->getPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v5

    const-string/jumbo v6, "rmnet%d"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/McpsService;->fileread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-static {v7}, Lcom/android/server/McpsService;->fileread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, p2}, Lcom/android/server/MCPSPolicy;->convert_mask(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    goto :goto_4

    :cond_3
    invoke-static {v3, v4, p2}, Lcom/android/server/MCPSPolicy;->convert_mask(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_4
    goto :goto_3

    :cond_4
    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/MCPSPolicy;->getInts()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, p2}, Lcom/android/server/MCPSPolicy;->getPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz p2, :cond_7

    invoke-static {v8}, Lcom/android/server/McpsService;->fileread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/McpsService;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v4, v10}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    goto :goto_7

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_7
    goto :goto_6

    :cond_8
    goto :goto_5

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v3

    return-object v3

    :cond_a
    return-object p1
.end method

.method public static dec2hex(I)Ljava/lang/String;
    .locals 4

    if-gez p0, :cond_0

    const-string v0, "MCPS-Service"

    const-string/jumbo v1, "dec2hex : fail < 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    return-object v0

    :cond_0
    const-string v0, "%x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dec2hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/server/McpsService;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/McpsService;->dec2hex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I
    .locals 12

    const/4 v0, 0x0

    new-instance v1, Lcom/android/server/MCPSPolicy$Builder;

    invoke-direct {v1}, Lcom/android/server/MCPSPolicy$Builder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_10

    const-string v4, "-a"

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/McpsService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return v2

    :cond_0
    const-string/jumbo v4, "reset"

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/McpsService;->updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V

    return v2

    :cond_1
    const-string/jumbo v4, "enable"

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "mcps_enable"

    invoke-virtual {v1, v4, v5}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/McpsService;->updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V

    return v2

    :cond_2
    const-string/jumbo v4, "disable"

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/McpsService;->updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V

    return v2

    :cond_3
    const-string/jumbo v4, "help"

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/McpsService;->doHelp(Ljava/io/PrintWriter;)V

    return v2

    :cond_4
    array-length v4, p3

    add-int/lit8 v6, v3, 0x1

    if-gt v4, v6, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/McpsService;->doHelp(Ljava/io/PrintWriter;)V

    return v2

    :cond_5
    add-int/lit8 v4, v3, 0x1

    aget-object v3, p3, v3

    aget-object v6, p3, v4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x5d6

    const/4 v9, -0x1

    if-eq v7, v8, :cond_7

    const/16 v8, 0x5e0

    if-eq v7, v8, :cond_6

    goto :goto_1

    :cond_6
    const-string v7, "-m"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v2

    goto :goto_2

    :cond_7
    const-string v7, "-c"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_2

    :cond_8
    :goto_1
    move v7, v9

    :goto_2
    packed-switch v7, :pswitch_data_0

    invoke-static {v6}, Lcom/android/server/McpsService;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_9

    invoke-direct {p0, p2}, Lcom/android/server/McpsService;->doHelp(Ljava/io/PrintWriter;)V

    return v2

    :pswitch_0
    const-string/jumbo v5, "mcps_arps_cpu"

    invoke-virtual {v1, v5, v6}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    goto/16 :goto_5

    :pswitch_1
    const-string/jumbo v5, "rmnet%d"

    invoke-virtual {v1, v5, v6}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v10, 0x5df

    const/4 v11, 0x2

    if-eq v8, v10, :cond_d

    const/16 v10, 0x5e1

    if-eq v8, v10, :cond_c

    const v10, 0x2ad5b50

    if-eq v8, v10, :cond_b

    const v10, 0x52565ead

    if-eq v8, v10, :cond_a

    goto :goto_3

    :cond_a
    const-string v8, "-argos"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_4

    :cond_b
    const-string v5, "-mode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v11

    goto :goto_4

    :cond_c
    const-string v5, "-n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v2

    goto :goto_4

    :cond_d
    const-string v5, "-l"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x3

    goto :goto_4

    :cond_e
    :goto_3
    move v5, v9

    :goto_4
    packed-switch v5, :pswitch_data_1

    invoke-direct {p0, p2}, Lcom/android/server/McpsService;->doHelp(Ljava/io/PrintWriter;)V

    return v2

    :pswitch_2
    invoke-static {v7}, Lcom/android/server/MCPSPolicy;->updateMCPSPolicyLevel(I)V

    invoke-static {}, Lcom/android/server/ConnectivityListener;->updateStatus()V

    return v2

    :pswitch_3
    const-string/jumbo v5, "mcps_mode"

    invoke-virtual {v1, v5, v7}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    goto/16 :goto_5

    :pswitch_4
    if-nez v7, :cond_f

    invoke-static {v11}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v5

    const-string v8, "big_clat_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v9

    const-string v10, "big_clat_rps"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string v9, "big_rmnet_clat_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string v11, "big_rmnet_clat_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string v9, "big_rmnet_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string v11, "big_rmnet_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string/jumbo v9, "lit_clat_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "lit_clat_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string/jumbo v9, "lit_rmnet_clat_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "lit_rmnet_clat_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string/jumbo v9, "lit_rmnet_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "lit_rmnet_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string/jumbo v9, "mif_rps_thresh"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getInts()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "mif_rps_thresh"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    goto/16 :goto_5

    :cond_f
    invoke-static {v2}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v5

    const-string v8, "big_clat_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v9

    const-string v10, "big_clat_rps"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string v9, "big_rmnet_clat_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string v11, "big_rmnet_clat_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string v9, "big_rmnet_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string v11, "big_rmnet_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string/jumbo v9, "lit_clat_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "lit_clat_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string/jumbo v9, "lit_rmnet_clat_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "lit_rmnet_clat_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string/jumbo v9, "lit_rmnet_rps"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "lit_rmnet_rps"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    move-result-object v8

    const-string/jumbo v9, "mif_rps_thresh"

    invoke-virtual {v5}, Lcom/android/server/MCPSPolicy;->getInts()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "mif_rps_thresh"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    goto :goto_5

    :pswitch_5
    const-string/jumbo v5, "mcps_set_cluster_for_newflow"

    invoke-virtual {v1, v5, v7}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    nop

    :goto_5
    add-int/lit8 v3, v4, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/McpsService;->updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V

    return v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/McpsService;->doDumpTitle(Ljava/io/PrintWriter;)V

    const-string v0, "------------------< Current Policy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/McpsService;->getCurrentPolicy()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->toFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    invoke-virtual {v0}, Lcom/android/server/McpsDumpManager;->isUserBinary()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "------------------< Adb Policy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/McpsService;->getAdbPolicy()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->toFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "------------------< Base Policy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/McpsService;->getBasePolicy()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->toFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/McpsService;->doDumpDriverStat(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p2}, Lcom/android/server/McpsService;->doDumpVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private doDumpDriverStat(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    invoke-virtual {v0}, Lcom/android/server/McpsDumpManager;->isUserBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/McpsDumpManager;->doDumpHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void

    :cond_0
    const-string v0, "------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mcps_stat_distributed"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_distributed"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mcps_stat_dropped"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_dropped"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mcps_stat_enqueued"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_enqueued"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mcps_stat_ignored"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_ignored"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mcps_stat_processed"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_processed"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mcps_stat_sauron_flow"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_sauron_flow"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mcps_stat_sauron_target_flow"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_sauron_target_flow"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/McpsDumpManager;->doDumpHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private doHelp(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/McpsService;->doDumpTitle(Ljava/io/PrintWriter;)V

    new-instance v0, Lcom/android/server/McpsDumpManager;

    invoke-direct {v0}, Lcom/android/server/McpsDumpManager;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/server/McpsDumpManager;->doHelp(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/McpsService;->doDumpVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static filemultiread(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MCPS-Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileread : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - no exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v4

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "MCPS-Service"

    const-string v6, "Fail to close br : "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    const-string v5, "MCPS-Service"

    const-string v6, "Fail to close fr : "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0

    :catchall_0
    move-exception v4

    goto :goto_5

    :catch_2
    move-exception v4

    :try_start_3
    const-string v5, "MCPS-Service"

    const-string v6, "Fail to fileread : "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    const-string v6, "MCPS-Service"

    const-string v7, "Fail to close br : "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    const-string v6, "MCPS-Service"

    const-string v7, "Fail to close fr : "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    return-object v0

    :goto_5
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v5

    const-string v6, "MCPS-Service"

    const-string v7, "Fail to close br : "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception v5

    const-string v6, "MCPS-Service"

    const-string v7, "Fail to close fr : "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_7
    throw v4
.end method

.method private static fileread(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MCPS-Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileread : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - no exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v4

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "MCPS-Service"

    const-string v6, "Fail to close br : "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "MCPS-Service"

    const-string v6, "Fail to close fr : "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v4

    :try_start_3
    const-string v5, "MCPS-Service"

    const-string v6, "Fail to fileread : "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    const-string v6, "MCPS-Service"

    const-string v7, "Fail to close br : "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v5

    const-string v6, "MCPS-Service"

    const-string v7, "Fail to close fr : "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return-object v0

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    const-string v6, "MCPS-Service"

    const-string v7, "Fail to close br : "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception v5

    const-string v6, "MCPS-Service"

    const-string v7, "Fail to close fr : "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_6
    throw v4
.end method

.method private static filewrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "MCPS-Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "filewrite : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - no exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MCPS-Service"

    const-string v4, "Fail to close fos : "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    const-string v4, "MCPS-Service"

    const-string v5, "Fail to filewrite : "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v5, "MCPS-Service"

    const-string v6, "Fail to close fos : "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return v3

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    const-string v4, "MCPS-Service"

    const-string v5, "Fail to close fos : "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    throw v2
.end method

.method private freeMCPSService()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyMcpsModules:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "running"

    const-string/jumbo v2, "init.svc.mcps-daemon"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MCPS-Service"

    const-string/jumbo v2, "stop mcps-daemon"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ctl.stop"

    const-string/jumbo v2, "mcps-daemon"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityListener;->unregister()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    :cond_1
    invoke-static {}, Lcom/android/server/ConnectivityListener;->free()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/McpsService;->mInitToggle:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAdbPolicy()Lcom/android/server/MCPSPolicy;
    .locals 2

    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getBasePolicy()Lcom/android/server/MCPSPolicy;
    .locals 2

    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/McpsService;->mBasePolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentPolicy()Lcom/android/server/MCPSPolicy;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/McpsService;->cmd(Lcom/android/server/MCPSPolicy;Z)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static hex2dec(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MCPS-Service"

    const-string/jumbo v3, "hex2dec : fail : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private initMCPSService()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyMcpsModules:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "running"

    const-string/jumbo v2, "init.svc.mcps-daemon"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCPS-Service"

    const-string/jumbo v2, "start mcps-daemon"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ctl.start"

    const-string/jumbo v2, "mcps-daemon"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityListener;->unregister()V

    :cond_1
    new-instance v1, Lcom/android/server/ConnectivityListener;

    invoke-virtual {p0}, Lcom/android/server/McpsService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/ConnectivityListener;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    iget-object v1, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityListener;->register()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/McpsService;->mInitToggle:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isMCPSServiceInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyMcpsModules:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/McpsService;->mInitToggle:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/McpsService;->filemultiread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/server/MCPSPolicy$Builder;

    invoke-direct {v1}, Lcom/android/server/MCPSPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/MCPSPolicy;->overwrite(Lcom/android/server/MCPSPolicy;)Lcom/android/server/MCPSPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/McpsService;->updateMCPSPolicy()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateBasePolicy(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/McpsService;->getBasePolicy()Lcom/android/server/MCPSPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/MCPSPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/McpsService;->mBasePolicy:Lcom/android/server/MCPSPolicy;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/McpsService;->updateMCPSPolicy()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateMCPSPolicy()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/McpsService;->mBasePolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v2}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v3}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/MCPSPolicy;->overwrite(Lcom/android/server/MCPSPolicy;)Lcom/android/server/MCPSPolicy;

    move-result-object v4

    move-object v0, v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->cmd(Lcom/android/server/MCPSPolicy;Z)Lcom/android/server/MCPSPolicy;

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateSystemSettings(Lcom/android/server/McpsService$McpsDBHelper;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/McpsService$McpsDBHelper;->isOnMcps()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/McpsService;->isMCPSServiceInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/McpsService;->initMCPSService()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/McpsService;->isMCPSServiceInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/McpsService;->freeMCPSService()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static valid_hex(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public doDumpTitle(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "MCPS : Multi-Core Packet Scheduler"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public doDumpVersion(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCPS Driver Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/McpsService;->mKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "MCPS Service Version : 0.1.4.0v"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    const-string v0, "/sys/module/mcps/version"

    invoke-static {v0}, Lcom/android/server/McpsService;->fileread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/McpsService;->mKVersion:Ljava/lang/String;

    new-instance v1, Lcom/android/server/McpsDumpManager;

    invoke-direct {v1}, Lcom/android/server/McpsDumpManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    new-instance v1, Lcom/android/server/McpsService$McpsDBHelper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/McpsService$McpsDBHelper;-><init>(Lcom/android/server/McpsService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/McpsService;->mHelper:Lcom/android/server/McpsService$McpsDBHelper;

    iget-object v1, p0, Lcom/android/server/McpsService;->mHelper:Lcom/android/server/McpsService$McpsDBHelper;

    invoke-direct {p0, v1}, Lcom/android/server/McpsService;->updateSystemSettings(Lcom/android/server/McpsService$McpsDBHelper;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string/jumbo v0, "mcps"

    iget-object v1, p0, Lcom/android/server/McpsService;->mRemoteService:Landroid/os/Binder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/McpsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/McpsServiceInternal;

    new-instance v1, Lcom/android/server/McpsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/McpsService$LocalService;-><init>(Lcom/android/server/McpsService;Lcom/android/server/McpsService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/McpsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.class public Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
.super Ljava/lang/Object;
.source "CaAkmManager.java"


# static fields
.field private static final SETTING_FILE_NAME:Ljava/lang/String; = "/data/misc/akmd_set.txt"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    return-object v0
.end method

.method private loadIntValue(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private saveIntValue(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getOrientationValueNames()[Ljava/lang/String;
    .locals 7

    const-string v0, "HSUC_HDST_FORM0"

    const-string v1, "HSUC_HO_FORM0.x"

    const-string v2, "HSUC_HO_FORM0.y"

    const-string v3, "HSUC_HO_FORM0.z"

    const-string v4, "HFLUCV_HREF_FORM0.x"

    const-string v5, "HFLUCV_HREF_FORM0.y"

    const-string v6, "HFLUCV_HREF_FORM0.z"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadOrientationInfo()Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->loadIntValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final saveOrientationInfo(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->saveIntValue(Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string v0, "can\'t save the orientation information"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void
.end method

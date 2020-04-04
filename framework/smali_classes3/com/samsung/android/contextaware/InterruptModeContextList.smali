.class public Lcom/samsung/android/contextaware/InterruptModeContextList;
.super Ljava/lang/Object;
.source "InterruptModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/InterruptModeContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/InterruptModeContextList;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/InterruptModeContextList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/InterruptModeContextList;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/InterruptModeContextList;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

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
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    return-object v0
.end method


# virtual methods
.method public final isInterruptModeType(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/InterruptModeContextList;->isInterruptModeType(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public final isInterruptModeType(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->values()[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->access$100(Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.class abstract enum Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
.super Ljava/lang/Enum;
.source "AggregatorConcreteCreator.java"

# interfaces
.implements Lcom/samsung/android/contextaware/creator/IListObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "AggregatorList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;",
        ">;",
        "Lcom/samsung/android/contextaware/creator/IListObjectCreator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LIFE_LOG:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LPP:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum MOVING:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;

    const-string v1, "LOCATION"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$2;

    const-string v1, "MOVING"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->MOVING:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;

    const-string v1, "LPP"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LPP:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$4;

    const-string v1, "TEMPERATURE_HUMIDITY"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$5;

    const-string v1, "LIFE_LOG"

    sget-object v2, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LIFE_LOG:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LOCATION:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->MOVING:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LPP:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LIFE_LOG:Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->$VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static varargs getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->access$2800()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->$VALUES:[Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-object v0
.end method


# virtual methods
.method public final varargs getObject([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getObjectForSubCollection([Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method protected final makeListForContextCreation()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "list is null."

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public removeObject(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->access$2900(Ljava/lang/String;)Z

    return-void
.end method

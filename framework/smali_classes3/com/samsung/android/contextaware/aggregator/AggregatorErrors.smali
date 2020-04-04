.class public final enum Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
.super Ljava/lang/Enum;
.source "AggregatorErrors.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;",
        ">;",
        "Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "SUCCESS"

    const-string v2, "Success"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UNKNOWN"

    const-string v2, "ERROR : Unknown"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_ARRIVING_ON_STATUS_FAULT"

    const-string v2, "ERROR : Status of arriving on POI is fault"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UPDATED_CONTEXT_TYPE_FAULT"

    const-string v2, "ERROR : Updated context type is fault"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UPDATED_CONTEXT_NULL_EXCEPTION"

    const-string v2, "ERROR : Updated context is null"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_SUB_COLLECTOR_FALSE"

    const-string v2, "ERROR : Sub collector is false"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_SUB_COLLECTOR_NULL_EXCEPTION"

    const-string v2, "ERROR : Sub collector is null"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v9

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

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

    iput-object p3, p0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->values()[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    iget-object v0, v4, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Message code is fault"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    return-void
.end method

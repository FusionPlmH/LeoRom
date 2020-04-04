.class public abstract enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.super Ljava/lang/Enum;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$2;

    const-string v1, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$3;

    const-string v1, "INFO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$4;

    const-string v1, "WARN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;

    const-string v1, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;

    const-string v1, "EXCEPTION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->getCallerInfo(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCallerInfo(Z)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$600()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p0, :cond_2

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-object v0
.end method


# virtual methods
.method abstract consoleLogging(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract fileLogging(Ljava/lang/String;)V
.end method

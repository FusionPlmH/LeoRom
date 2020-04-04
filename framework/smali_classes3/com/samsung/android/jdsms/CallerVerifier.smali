.class final Lcom/samsung/android/jdsms/CallerVerifier;
.super Ljava/lang/Object;
.source "CallerVerifier.java"


# static fields
.field private static final BASE_CLASS:Ljava/lang/String; = "com.samsung.android.jdsms.Sender"

.field private static final BASE_METHOD:Ljava/lang/String; = "send"

.field private static final CALLER_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "[DSMS-FRAMEWORK][CallPolicy]"

.field private static final mWhiteList:Lcom/samsung/android/jdsms/CallerWhiteList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/CallerWhiteList;

    invoke-direct {v0}, Lcom/samsung/android/jdsms/CallerWhiteList;-><init>()V

    sput-object v0, Lcom/samsung/android/jdsms/CallerVerifier;->mWhiteList:Lcom/samsung/android/jdsms/CallerWhiteList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractCaller()Ljava/lang/StackTraceElement;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "[DSMS-FRAMEWORK][CallPolicy]"

    const-string v3, "Null stack trace"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/jdsms/CallerVerifier;->findBaseIndex([Ljava/lang/StackTraceElement;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    array-length v4, v0

    if-lt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    :cond_2
    :goto_0
    const-string v3, "[DSMS-FRAMEWORK][CallPolicy]"

    const-string v4, "Impossible to reach caller"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static findBaseIndex([Ljava/lang/StackTraceElement;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    const-string v2, "com.samsung.android.jdsms.Sender"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "send"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mountFrameCannonName(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final wasCallerValid()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/jdsms/CallerVerifier;->extractCaller()Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "[DSMS-FRAMEWORK][CallPolicy]"

    const-string v3, "DENY (caller frame not found)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/jdsms/CallerVerifier;->mountFrameCannonName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/jdsms/CallerVerifier;->mWhiteList:Lcom/samsung/android/jdsms/CallerWhiteList;

    invoke-virtual {v3, v2}, Lcom/samsung/android/jdsms/CallerWhiteList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "[DSMS-FRAMEWORK][CallPolicy]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DENY callerName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.class final enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;
.super Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger$1;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$100()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "CAE"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method fileLogging(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$400()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v2

    const-string v3, "CAELogger"

    const-string v4, "T"

    const-string v5, "CAE"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1, p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.class public interface abstract Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;
.super Ljava/lang/Object;
.source "StatusLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/logging/status/StatusLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusLoggingProvider"
.end annotation


# virtual methods
.method public abstract getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation
.end method

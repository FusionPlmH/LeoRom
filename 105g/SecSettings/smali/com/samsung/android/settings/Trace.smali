.class public Lcom/samsung/android/settings/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/Trace$TraceReflector;
    }
.end annotation


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Trace$TraceReflector;->getInstance()Lcom/samsung/android/settings/Trace$TraceReflector;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Trace$TraceReflector;->access$000(Lcom/samsung/android/settings/Trace$TraceReflector;Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Trace$TraceReflector;->getInstance()Lcom/samsung/android/settings/Trace$TraceReflector;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Trace$TraceReflector;->access$100(Lcom/samsung/android/settings/Trace$TraceReflector;)V

    return-void
.end method

.class public interface abstract Lcom/samsung/android/sysint/stats/ISysStatsService;
.super Ljava/lang/Object;
.source "ISysStatsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sysint/stats/ISysStatsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract launchFeedbackForNextApp(Ljava/lang/String;JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestModelInference(Lcom/samsung/android/sysint/stats/SysIntRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

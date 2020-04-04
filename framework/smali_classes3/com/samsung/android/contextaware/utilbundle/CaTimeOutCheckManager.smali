.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;
.super Ljava/lang/Object;
.source "CaTimeOutCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserverable;


# instance fields
.field private mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

.field private final mTimeOut:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V

    iput p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    return-void
.end method


# virtual methods
.method public final notifyTimeOut()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;->occurTimeOut()V

    :cond_0
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    return-void
.end method

.method public final run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    mul-int/lit8 v1, v1, 0xa

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->notifyTimeOut()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "interruped"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    return-void
.end method

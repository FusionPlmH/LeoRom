.class public Landroid/app/BarBeamCommandImpl;
.super Ljava/lang/Object;
.source "BarBeamCommandImpl.java"

# interfaces
.implements Landroid/app/BarBeamCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    }
.end annotation


# static fields
.field private static final hopSize:I = 0x7


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mService:Landroid/app/IBarBeamService;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/IBarBeamService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BarBeamCommandImpl"

    iput-object v0, p0, Landroid/app/BarBeamCommandImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    const-string v0, "BarBeamCommandImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarBeamCommandImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addListener(Landroid/app/BarBeamListener;)V
    .locals 7

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    invoke-virtual {v3}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->getBarBeamListener()Landroid/app/BarBeamListener;

    move-result-object v4

    if-ne v4, p1, :cond_0

    const-string v4, "BarBeamCommandImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .addListener : fail. already registered / listener count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    invoke-direct {v2, p0, p1}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;-><init>(Landroid/app/BarBeamCommandImpl;Landroid/app/BarBeamListener;)V

    iget-object v3, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v3, v2}, Landroid/app/IBarBeamService;->addListener(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "BarBeamCommandImpl"

    const-string v5, "RemoteException in registerListener: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string v3, "BarBeamCommandImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .addListener : success. listener count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_2
    return-void
.end method

.method protected getCurrentStatus()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1}, Landroid/app/IBarBeamService;->getCurrentStatus()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    nop

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "RemoteException in getCurrentStatus(): "

    invoke-direct {v2, v3, v1}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isImplementationCompatible()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1}, Landroid/app/IBarBeamService;->isImplementationCompatible()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    nop

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "isImplementationCompatible in setBarcode: "

    invoke-direct {v2, v3, v1}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeListener(Landroid/app/BarBeamListener;)V
    .locals 7

    iget-object v0, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    invoke-virtual {v3}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->getBarBeamListener()Landroid/app/BarBeamListener;

    move-result-object v4

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v4, v3}, Landroid/app/IBarBeamService;->removeListener(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "BarBeamCommandImpl"

    const-string v6, "RemoteException in removeListener : "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-string v2, "BarBeamCommandImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .removeListener : / listener count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setBarcode([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    const-string v0, "BarBeamCommandImpl"

    const-string/jumbo v1, "sendDataTable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v0, p1}, Landroid/app/IBarBeamService;->setBarcode([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "RemoteException in setBarcode: "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHopSequence([Landroid/app/Hop;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x7

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    mul-int/lit8 v4, v2, 0x7

    invoke-virtual {p0, v3, v0, v4}, Landroid/app/BarBeamCommandImpl;->writeHop2ByteArray(Landroid/app/Hop;[BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "BarBeamCommandImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendHopSequenceTable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    array-length v3, p1

    invoke-interface {v2, v0, v3, v1}, Landroid/app/IBarBeamService;->setHopSequence([BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "RemoteException in sendHopSequenceTable: "

    invoke-direct {v2, v3, v1}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startBeaming()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    const-string v0, "BarBeamCommandImpl"

    const-string/jumbo v1, "startBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v0}, Landroid/app/IBarBeamService;->startBeaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "RemoteException in startBarBeam: "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startBeaming(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    const-string v0, "BarBeamCommandImpl"

    const-string/jumbo v1, "startBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v0, p1}, Landroid/app/IBarBeamService;->startBeaming_repeat(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "RemoteException in startBeaming(repeat): "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopBeaming()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    const-string v0, "BarBeamCommandImpl"

    const-string/jumbo v1, "stopBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v0}, Landroid/app/IBarBeamService;->stopBeaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "RemoteException in stopBarBeam(repeat): "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeHop2ByteArray(Landroid/app/Hop;[BI)I
    .locals 2

    add-int/lit8 v0, p3, 0x1

    iget v1, p1, Landroid/app/Hop;->barWidth:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    iget v1, p1, Landroid/app/Hop;->symbolCnt:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    iget v1, p1, Landroid/app/Hop;->interSymbolDelay:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    iget v1, p1, Landroid/app/Hop;->interSymbolDelay:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    iget v1, p1, Landroid/app/Hop;->packetCnt:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    iget v1, p1, Landroid/app/Hop;->interPacketDelay:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    iget v1, p1, Landroid/app/Hop;->interPacketDelay:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    const/4 p3, 0x7

    return p3
.end method

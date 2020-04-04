.class public Landroid/net/UrspManager;
.super Ljava/lang/Object;
.source "UrspManager.java"


# static fields
.field public static final URSP_RULE_FOC:I = 0x1

.field public static final URSP_RULE_MAX:I = 0x2

.field public static final URSP_RULE_MDO:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/net/IUrspManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IUrspManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroid/net/UrspManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing IUrspManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/net/UrspManager;
    .locals 1

    const-string/jumbo v0, "urspservice"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrspManager;

    return-object v0
.end method

.method public static getRuleName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_0
    const-string v0, "foc"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "mdo"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearUrspBlackListUidRule(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1}, Landroid/net/IUrspManager;->clearUrspBlackListUidRule(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public factoryReset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0}, Landroid/net/IUrspManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllUrspBlackListUidsRule(I)[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1}, Landroid/net/IUrspManager;->getAllUrspBlackListUidsRule(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllUrspRule(I)[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1}, Landroid/net/IUrspManager;->getAllUrspRule(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J
    .locals 8

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/net/IUrspManager;->getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IUrspManager;->getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUrspMode(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1}, Landroid/net/IUrspManager;->getUrspMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUrspNetId(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1}, Landroid/net/IUrspManager;->getUrspNetId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUrspRuleEnabled(II)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IUrspManager;->isUrspRuleEnabled(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1}, Landroid/net/IUrspManager;->registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUrspBlackListUidRule(IZI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IUrspManager;->setUrspBlackListUidRule(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUrspMode(IZ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IUrspManager;->setUrspMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUrspNetId(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IUrspManager;->setUrspNetId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUrspRule(IZI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IUrspManager;->setUrspRule(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUrspRules(IZ[I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IUrspManager;->setUrspRules(IZ[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/UrspManager;->mService:Landroid/net/IUrspManager;

    invoke-interface {v0, p1}, Landroid/net/IUrspManager;->unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

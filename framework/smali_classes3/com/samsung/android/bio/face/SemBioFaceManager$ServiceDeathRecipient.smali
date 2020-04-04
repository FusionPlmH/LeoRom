.class Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field mAlreadyLinked:Z

.field mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    const-string v0, "SemBioFaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x68

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$102(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/IFaceService;)Lcom/samsung/android/bio/face/IFaceService;

    return-void
.end method

.method link()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    :cond_0
    const-string v0, "SemBioFaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "link : cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceDeathRecipient : link failure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method unlink()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceDeathRecipient : unlink failure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    :cond_0
    return-void
.end method

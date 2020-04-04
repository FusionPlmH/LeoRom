.class Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field mAlreadyLinked:Z

.field mAuthCb:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

.field final synthetic this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "SemBiometricsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$200(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$002(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/IBiometricsService;)Lcom/samsung/android/biometrics/IBiometricsService;

    return-void
.end method

.method link()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$000(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$100(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$000(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/biometrics/IBiometricsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    :cond_0
    const-string v0, "SemBiometricsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "link : cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBiometricsManager"

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

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$000(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$000(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/biometrics/IBiometricsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAlreadyLinked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBiometricsManager"

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

.method unlink(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->unlink()V

    :cond_0
    return-void
.end method

.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/ccm/ClientCertificateManager$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "generateCSRDispatcher"
.end annotation


# instance fields
.field CSR:[B

.field attestationRoot:Ljava/lang/String;

.field keyLength:I

.field objectAlias:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field password:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field userAuthRequired:Z

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->CSR:[B

    iput p2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userId:I

    iput-object p3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->objectAlias:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->subject:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->keyLength:I

    iput-object p6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->password:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->attestationRoot:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->owner:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userAuthRequired:Z

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userId:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/android/server/enterprise/ccm/ClientCertificateManager$Dispatcher;)V

    return-void
.end method

.method public getCSR()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->dispatch()V

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->CSR:[B

    return-object v0
.end method

.method public process(Landroid/security/IKnoxKeyChainService;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userId:I

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->objectAlias:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->subject:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->keyLength:I

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->password:Ljava/lang/String;

    const-string/jumbo v6, "samsung"

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->owner:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userAuthRequired:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Landroid/security/IKnoxKeyChainService;->UKSgenerateCSR(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->CSR:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

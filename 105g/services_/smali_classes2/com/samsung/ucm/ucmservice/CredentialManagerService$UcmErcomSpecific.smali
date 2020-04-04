.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"

# interfaces
.implements Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UcmErcomSpecific"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UcmService_ercom"


# instance fields
.field private mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    return-void
.end method

.method private updateAgent()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDekForVold(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService_ercom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDekForVold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p0, p1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const-string v1, "UcmService_ercom"

    const-string v2, "getDekForVold. unwrapDek failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService_ercom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDekForVoldInternalKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.crypto.type"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/esecomm/EsecommAdapter;->deriveCEKey([B)[B

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "UcmService_ercom"

    const-string v5, "getDekForVoldInternalKey. deriveCEKey returns empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12

    :cond_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v4, v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1800(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v4

    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {v1, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1
.end method

.method public getDeks(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService_ercom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->updateAgent()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {v2, p1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1600(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    iget v4, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object v3

    :cond_0
    iget-object v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    const/16 v4, 0x12

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    array-length v3, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {v5, p1, v3, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    iget v6, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-eqz v6, :cond_2

    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    iget v6, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-direct {v4, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object v4

    :cond_2
    iget-object v6, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    array-length v6, v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {v4, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    iput-object v3, v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->wrappedDek:[B

    iget-object v6, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    iput-object v6, v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->dek:[B

    return-object v4

    :cond_4
    :goto_0
    const-string v6, "UcmService_ercom"

    const-string v7, "getDek. unwrapDek return empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {v6, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object v6

    :cond_5
    :goto_1
    const-string v3, "UcmService_ercom"

    const-string v5, "getDek. generateWrappedDek return empty"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object v3
.end method

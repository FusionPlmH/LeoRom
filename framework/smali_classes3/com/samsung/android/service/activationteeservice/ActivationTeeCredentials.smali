.class public Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;
.super Ljava/lang/Object;
.source "ActivationTeeCredentials.java"


# instance fields
.field private encrypted:[B

.field private iv:[B

.field private tag:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->encrypted:[B

    iput-object p2, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->iv:[B

    iput-object p3, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->tag:[B

    return-void
.end method


# virtual methods
.method public getEncrypted()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->encrypted:[B

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->iv:[B

    return-object v0
.end method

.method public getTag()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->tag:[B

    return-object v0
.end method

.class public Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;
.super Ljava/lang/Object;
.source "ActivationTeeCertificates.java"


# instance fields
.field private drkCert:[B

.field private rsaCert:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;->drkCert:[B

    iput-object p2, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;->rsaCert:[B

    return-void
.end method


# virtual methods
.method public getDrkCert()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;->drkCert:[B

    return-object v0
.end method

.method public getRsaCert()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;->rsaCert:[B

    return-object v0
.end method

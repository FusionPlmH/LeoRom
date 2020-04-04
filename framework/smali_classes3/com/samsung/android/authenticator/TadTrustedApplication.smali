.class final Lcom/samsung/android/authenticator/TadTrustedApplication;
.super Ljava/lang/Object;
.source "TadTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTA"


# instance fields
.field private final mHandle:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    return-void
.end method


# virtual methods
.method public execute([B)[B
    .locals 2

    const-string v0, "TTA"

    const-string/jumbo v1, "public byte[] execute(byte[] command)"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->processPreloadedTa(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    return v0
.end method

.method public load()I
    .locals 2

    const-string v0, "TTA"

    const-string/jumbo v1, "public int load()"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->initializePreloadedTa(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTA"

    const-string/jumbo v1, "iwptp failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    return v0
.end method

.method public unload()I
    .locals 2

    const-string v0, "TTA"

    const-string/jumbo v1, "public int unload()"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/authenticator/TadTrustedApplication;->mHandle:I

    invoke-static {v0}, Lcom/samsung/android/authenticator/AuthenticatorService;->terminatePreloadedTa(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTA"

    const-string/jumbo v1, "twptp failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

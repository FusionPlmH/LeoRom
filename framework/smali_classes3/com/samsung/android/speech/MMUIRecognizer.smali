.class public Lcom/samsung/android/speech/MMUIRecognizer;
.super Ljava/lang/Object;
.source "MMUIRecognizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Trying to load libsasr-jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sasr-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Loading libsasr-jni.so done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "WARNING: Could not load libsasr-jni.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "WARNING: Could not load libsasr-jni.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    nop

    :goto_1
    return v0
.end method


# virtual methods
.method public native RECThread([S)I
.end method

.method public native ResetFx()I
.end method

.method public native SASRClose()I
.end method

.method public native SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I
.end method

.method public native SASRInit(Ljava/lang/String;)I
.end method

.method public native SASRLoadModel(Ljava/lang/String;)I
.end method

.method public native SASRReset()I
.end method

.method public native SaveChnUpdate(Ljava/lang/String;)I
.end method

.method public native SetSRLanguage(I)I
.end method

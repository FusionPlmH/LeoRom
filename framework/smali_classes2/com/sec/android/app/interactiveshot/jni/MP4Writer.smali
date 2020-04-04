.class public Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.super Ljava/lang/Object;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;,
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;,
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    .locals 1

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    invoke-direct {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;-><init>()V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-object v0
.end method


# virtual methods
.method public native DeInitMP4Engine()I
.end method

.method public native EncodeFrame([B)I
.end method

.method public native InitMP4Engine(IILjava/lang/String;IIIII)I
.end method

.method public InitMp4EngineJava(IILjava/lang/String;IIII)I
    .locals 11

    const/4 v0, 0x1

    const/16 v10, 0xf

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move v7, v10

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->InitMP4Engine(IILjava/lang/String;IIIII)I

    move-result v0

    return v0
.end method

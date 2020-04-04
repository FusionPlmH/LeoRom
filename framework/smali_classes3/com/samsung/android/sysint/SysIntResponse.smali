.class public Lcom/samsung/android/sysint/SysIntResponse;
.super Ljava/lang/Object;
.source "SysIntResponse.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/sysint/SysIntResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfidence:Ljava/lang/Float;

.field private final mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sysint/SysIntResponse;->mConfidence:Ljava/lang/Float;

    iput-object p1, p0, Lcom/samsung/android/sysint/SysIntResponse;->mPackage:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/samsung/android/sysint/SysIntResponse;->mConfidence:Ljava/lang/Float;

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/sysint/SysIntResponse;)I
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/sysint/SysIntResponse;->mConfidence:Ljava/lang/Float;

    iget-object v1, p0, Lcom/samsung/android/sysint/SysIntResponse;->mConfidence:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sysint/SysIntResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sysint/SysIntResponse;->compareTo(Lcom/samsung/android/sysint/SysIntResponse;)I

    move-result p1

    return p1
.end method

.method public getConfidence()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sysint/SysIntResponse;->mConfidence:Ljava/lang/Float;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sysint/SysIntResponse;->mPackage:Ljava/lang/String;

    return-object v0
.end method

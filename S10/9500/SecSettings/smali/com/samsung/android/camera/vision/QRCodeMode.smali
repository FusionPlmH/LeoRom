.class public final enum Lcom/samsung/android/camera/vision/QRCodeMode;
.super Ljava/lang/Enum;
.source "QRCodeMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/vision/QRCodeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALPHANUMERIC:Lcom/samsung/android/camera/vision/QRCodeMode;

.field public static final enum BYTE:Lcom/samsung/android/camera/vision/QRCodeMode;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/camera/vision/QRCodeMode;

.field public static final enum UTF8:Lcom/samsung/android/camera/vision/QRCodeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/camera/vision/QRCodeMode;

    const-string v1, "ALPHANUMERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/vision/QRCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeMode;->ALPHANUMERIC:Lcom/samsung/android/camera/vision/QRCodeMode;

    new-instance v0, Lcom/samsung/android/camera/vision/QRCodeMode;

    const-string v1, "BYTE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/camera/vision/QRCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeMode;->BYTE:Lcom/samsung/android/camera/vision/QRCodeMode;

    new-instance v0, Lcom/samsung/android/camera/vision/QRCodeMode;

    const-string v1, "UTF8"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/camera/vision/QRCodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeMode;->UTF8:Lcom/samsung/android/camera/vision/QRCodeMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/camera/vision/QRCodeMode;

    sget-object v1, Lcom/samsung/android/camera/vision/QRCodeMode;->ALPHANUMERIC:Lcom/samsung/android/camera/vision/QRCodeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/QRCodeMode;->BYTE:Lcom/samsung/android/camera/vision/QRCodeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/camera/vision/QRCodeMode;->UTF8:Lcom/samsung/android/camera/vision/QRCodeMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeMode;->ENUM$VALUES:[Lcom/samsung/android/camera/vision/QRCodeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/vision/QRCodeMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/vision/QRCodeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/vision/QRCodeMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/vision/QRCodeMode;
    .locals 4

    sget-object v0, Lcom/samsung/android/camera/vision/QRCodeMode;->ENUM$VALUES:[Lcom/samsung/android/camera/vision/QRCodeMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/camera/vision/QRCodeMode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

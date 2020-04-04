.class public final enum Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;
.super Ljava/lang/Enum;
.source "QRCodeErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

.field public static final enum H:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

.field public static final enum L:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

.field public static final enum M:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

.field public static final enum Q:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    const-string v1, "L"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->L:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    new-instance v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    const-string v1, "M"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->M:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    new-instance v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    const-string v1, "Q"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->Q:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    new-instance v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    const-string v1, "H"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->H:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    sget-object v1, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->L:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->M:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->Q:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->H:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->ENUM$VALUES:[Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;
    .locals 4

    sget-object v0, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->ENUM$VALUES:[Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

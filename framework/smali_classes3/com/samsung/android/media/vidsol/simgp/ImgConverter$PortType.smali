.class public final enum Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;
.super Ljava/lang/Enum;
.source "ImgConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

.field public static final enum BOTH:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

.field public static final enum INPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

.field public static final enum OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

.field public static final enum UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const-string v1, "INPUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->INPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const-string v1, "OUTPUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const-string v1, "BOTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->BOTH:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->INPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->BOTH:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;
    .locals 1

    const-class v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    return-object v0
.end method

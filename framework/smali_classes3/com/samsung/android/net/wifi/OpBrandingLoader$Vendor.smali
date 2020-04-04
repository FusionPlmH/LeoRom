.class public final enum Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
.super Ljava/lang/Enum;
.source "OpBrandingLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/net/wifi/OpBrandingLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Vendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum AIO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum AIS:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum ATO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum ATT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum CHA:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final COUNTRY_KOREA:I = 0x1

.field public static final COUNTRY_OTHERS:I = 0x3

.field public static final COUNTRY_USA:I = 0x2

.field public static final enum DCM:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum KOO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum KTT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum LGU:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum MTR:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum SKT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum SingTel:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum TMB:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum TMK:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field public static final enum VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
.field private country:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "SKT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->SKT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "KTT"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->KTT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "LGU"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->LGU:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "KOO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->KOO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "VZW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v4}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "ATT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v4}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->ATT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "TMB"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v4}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->TMB:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "MTR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v4}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->MTR:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "TMK"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v4}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->TMK:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "ATO"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v5}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->ATO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "CHA"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v5}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->CHA:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "AIO"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v5}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "SingTel"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v5}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->SingTel:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "AIS"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v5}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIS:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "DCM"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v5}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->DCM:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    new-instance v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const-string v1, "Unknown"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v5}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->SKT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->KTT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->LGU:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->KOO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->ATT:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->TMB:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->MTR:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->TMK:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->ATO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->CHA:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->SingTel:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    aput-object v1, v0, v14

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIS:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->DCM:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->$VALUES:[Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->country:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    .locals 1

    const-class v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    .locals 1

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->$VALUES:[Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-virtual {v0}, [Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-object v0
.end method


# virtual methods
.method public getCountry()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->country:I

    return v0
.end method

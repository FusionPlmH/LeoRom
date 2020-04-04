.class final enum Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;
.super Ljava/lang/Enum;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/status/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IndianOperators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

.field public static final enum AIRTEL:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

.field public static final enum OTHERS:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

.field public static final enum RELIANCE:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    const-string v1, "AIRTEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->AIRTEL:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    const-string v1, "RELIANCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->RELIANCE:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    const-string v1, "OTHERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->OTHERS:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->AIRTEL:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->RELIANCE:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->OTHERS:Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->$VALUES:[Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->$VALUES:[Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/deviceinfo/status/SimStatus$IndianOperators;

    return-object v0
.end method

.class final enum Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;
.super Ljava/lang/Enum;
.source "CharterWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/CharterWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CHA_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

.field public static final enum SERVICE_ERROR:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

.field public static final enum STARTED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

.field public static final enum STOPPED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->STOPPED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->STARTED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    const-string v1, "SERVICE_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->SERVICE_ERROR:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->STOPPED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->STARTED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->SERVICE_ERROR:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->$VALUES:[Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->$VALUES:[Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    return-object v0
.end method

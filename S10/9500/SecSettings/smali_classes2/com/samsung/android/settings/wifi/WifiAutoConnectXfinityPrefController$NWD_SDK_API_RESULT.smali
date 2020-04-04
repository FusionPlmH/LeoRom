.class final enum Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;
.super Ljava/lang/Enum;
.source "WifiAutoConnectXfinityPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NWD_SDK_API_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum API_NOT_SUPPORTED:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum CONFLICTS_PENDING_ACTION:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum INVALID_PARAM:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum NO_EFFECT:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum OK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum SERVICE_DISABLED:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum SERVICE_NEED_PERMISSIONS:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum SERVICE_NOT_READY:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum SERVICE_NOT_RUNNING:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum SERVICE_SHUTTING_DOWN:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

.field public static final enum SUSPENDED_BY_PRIORITY_CHECK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->OK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "SERVICE_NOT_RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_NOT_RUNNING:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "SERVICE_NOT_READY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_NOT_READY:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "SERVICE_SHUTTING_DOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_SHUTTING_DOWN:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "SERVICE_DISABLED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_DISABLED:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "NO_EFFECT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->NO_EFFECT:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "INVALID_PARAM"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->INVALID_PARAM:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "CONFLICTS_PENDING_ACTION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->CONFLICTS_PENDING_ACTION:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "SERVICE_NEED_PERMISSIONS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_NEED_PERMISSIONS:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "API_NOT_SUPPORTED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->API_NOT_SUPPORTED:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const-string v1, "SUSPENDED_BY_PRIORITY_CHECK"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SUSPENDED_BY_PRIORITY_CHECK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->OK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_NOT_RUNNING:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_NOT_READY:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_SHUTTING_DOWN:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_DISABLED:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->NO_EFFECT:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->INVALID_PARAM:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->CONFLICTS_PENDING_ACTION:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SERVICE_NEED_PERMISSIONS:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->API_NOT_SUPPORTED:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->SUSPENDED_BY_PRIORITY_CHECK:Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    aput-object v1, v0, v12

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->$VALUES:[Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->$VALUES:[Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController$NWD_SDK_API_RESULT;

    return-object v0
.end method

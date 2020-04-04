.class public final enum Lcom/samsung/android/knox/ddar/fsm/Event;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ddar/fsm/Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/ddar/fsm/Event;

.field public static final enum DATALOCK_TIMEOUT:Lcom/samsung/android/knox/ddar/fsm/Event;

.field public static final enum DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

.field public static final enum DDAR_WORKSPACE_CREATED:Lcom/samsung/android/knox/ddar/fsm/Event;

.field public static final enum DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/ddar/fsm/Event;

.field public static final enum DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

.field public static final enum DEVICE_LOCKED:Lcom/samsung/android/knox/ddar/fsm/Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/Event;

    const-string v1, "DDAR_WORKSPACE_CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ddar/fsm/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_CREATED:Lcom/samsung/android/knox/ddar/fsm/Event;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/Event;

    const-string v1, "DEVICE_AUTH_SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/ddar/fsm/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/Event;

    const-string v1, "DEVICE_LOCKED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/ddar/fsm/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/ddar/fsm/Event;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/Event;

    const-string v1, "DATALOCK_TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/knox/ddar/fsm/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->DATALOCK_TIMEOUT:Lcom/samsung/android/knox/ddar/fsm/Event;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/Event;

    const-string v1, "DDAR_WORKSPACE_AUTH_SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/knox/ddar/fsm/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/Event;

    const-string v1, "DDAR_WORKSPACE_REMOVED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/knox/ddar/fsm/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/ddar/fsm/Event;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_CREATED:Lcom/samsung/android/knox/ddar/fsm/Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/ddar/fsm/Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DATALOCK_TIMEOUT:Lcom/samsung/android/knox/ddar/fsm/Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/ddar/fsm/Event;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->$VALUES:[Lcom/samsung/android/knox/ddar/fsm/Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/fsm/Event;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ddar/fsm/Event;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/ddar/fsm/Event;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->$VALUES:[Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ddar/fsm/Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ddar/fsm/Event;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/Event$1;->$SwitchMap$com$samsung$android$knox$ddar$fsm$Event:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ddar/fsm/Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "-"

    return-object v0

    :pswitch_0
    const-string v0, "DDAR_WORKSPACE_REMOVED"

    return-object v0

    :pswitch_1
    const-string v0, "DDAR_WORKSPACE_AUTH_SUCCESS"

    return-object v0

    :pswitch_2
    const-string v0, "DEVICE_AUTH_SUCCESS"

    return-object v0

    :pswitch_3
    const-string v0, "DATALOCK_TIMEOUT"

    return-object v0

    :pswitch_4
    const-string v0, "DEVICE_LOCKED"

    return-object v0

    :pswitch_5
    const-string v0, "DDAR_WORKSPACE_CREATED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

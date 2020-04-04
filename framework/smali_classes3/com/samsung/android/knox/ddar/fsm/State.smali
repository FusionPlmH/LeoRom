.class public final enum Lcom/samsung/android/knox/ddar/fsm/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ddar/fsm/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/ddar/fsm/State;

.field public static final enum DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

.field public static final enum DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

.field public static final enum DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

.field public static final enum DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

.field public static final enum IDLE:Lcom/samsung/android/knox/ddar/fsm/State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/State;

    const-string v1, "DEVICE_UNLOCK_DATA_UNLOCK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/State;

    const-string v1, "DEVICE_LOCK_DATA_UNLOCK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/State;

    const-string v1, "DEVICE_LOCK_DATA_LOCK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/knox/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    new-instance v0, Lcom/samsung/android/knox/ddar/fsm/State;

    const-string v1, "DEVICE_UNLOCK_DATA_LOCK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/knox/ddar/fsm/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/knox/ddar/fsm/State;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->$VALUES:[Lcom/samsung/android/knox/ddar/fsm/State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/fsm/State;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ddar/fsm/State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/ddar/fsm/State;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->$VALUES:[Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ddar/fsm/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ddar/fsm/State;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/State$1;->$SwitchMap$com$samsung$android$knox$ddar$fsm$State:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ddar/fsm/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "-"

    return-object v0

    :pswitch_0
    const-string v0, "DEVICE_UNLOCK_DATA_LOCK"

    return-object v0

    :pswitch_1
    const-string v0, "DEVICE_LOCK_DATA_LOCK"

    return-object v0

    :pswitch_2
    const-string v0, "DEVICE_LOCK_DATA_UNLOCK"

    return-object v0

    :pswitch_3
    const-string v0, "DEVICE_UNLOCK_DATA_UNLOCK"

    return-object v0

    :pswitch_4
    const-string v0, "IDLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

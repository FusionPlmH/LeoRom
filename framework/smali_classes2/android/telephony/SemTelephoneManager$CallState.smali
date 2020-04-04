.class public final enum Landroid/telephony/SemTelephoneManager$CallState;
.super Ljava/lang/Enum;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SemTelephoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/SemTelephoneManager$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum ACTIVE:Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum ALERTING:Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum DIALING:Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum DISCONNECTED:Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum DISCONNECTING:Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum HOLDING:Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum IDLE:Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum INCOMING:Landroid/telephony/SemTelephoneManager$CallState;

.field public static final enum WAITING:Landroid/telephony/SemTelephoneManager$CallState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->IDLE:Landroid/telephony/SemTelephoneManager$CallState;

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->ACTIVE:Landroid/telephony/SemTelephoneManager$CallState;

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "HOLDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->HOLDING:Landroid/telephony/SemTelephoneManager$CallState;

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "DIALING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->DIALING:Landroid/telephony/SemTelephoneManager$CallState;

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "ALERTING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->ALERTING:Landroid/telephony/SemTelephoneManager$CallState;

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "INCOMING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->INCOMING:Landroid/telephony/SemTelephoneManager$CallState;

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "WAITING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->WAITING:Landroid/telephony/SemTelephoneManager$CallState;

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "DISCONNECTED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->DISCONNECTED:Landroid/telephony/SemTelephoneManager$CallState;

    new-instance v0, Landroid/telephony/SemTelephoneManager$CallState;

    const-string v1, "DISCONNECTING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Landroid/telephony/SemTelephoneManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->DISCONNECTING:Landroid/telephony/SemTelephoneManager$CallState;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/telephony/SemTelephoneManager$CallState;

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->IDLE:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->ACTIVE:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->HOLDING:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->DIALING:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->ALERTING:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->INCOMING:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v7

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->WAITING:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v8

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->DISCONNECTED:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v9

    sget-object v1, Landroid/telephony/SemTelephoneManager$CallState;->DISCONNECTING:Landroid/telephony/SemTelephoneManager$CallState;

    aput-object v1, v0, v10

    sput-object v0, Landroid/telephony/SemTelephoneManager$CallState;->$VALUES:[Landroid/telephony/SemTelephoneManager$CallState;

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

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/SemTelephoneManager$CallState;
    .locals 1

    const-class v0, Landroid/telephony/SemTelephoneManager$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/SemTelephoneManager$CallState;

    return-object v0
.end method

.method public static values()[Landroid/telephony/SemTelephoneManager$CallState;
    .locals 1

    sget-object v0, Landroid/telephony/SemTelephoneManager$CallState;->$VALUES:[Landroid/telephony/SemTelephoneManager$CallState;

    invoke-virtual {v0}, [Landroid/telephony/SemTelephoneManager$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SemTelephoneManager$CallState;

    return-object v0
.end method

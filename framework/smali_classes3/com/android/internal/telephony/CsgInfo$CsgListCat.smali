.class public final enum Lcom/android/internal/telephony/CsgInfo$CsgListCat;
.super Ljava/lang/Enum;
.source "CsgInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CsgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CsgListCat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/CsgInfo$CsgListCat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CsgInfo$CsgListCat;

.field public static final enum ALLOWED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

.field public static final enum CONNECTED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

.field public static final enum OPERATOR:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/CsgInfo$CsgListCat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    new-instance v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    const-string v1, "ALLOWED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    new-instance v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    const-string v1, "OPERATOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    new-instance v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    const-string v1, "CONNECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    sget-object v1, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->$VALUES:[Lcom/android/internal/telephony/CsgInfo$CsgListCat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CsgInfo$CsgListCat;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CsgInfo$CsgListCat;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->$VALUES:[Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CsgInfo$CsgListCat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    return-object v0
.end method
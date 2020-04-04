.class public Landroid/net/wifi/WifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation


# static fields
.field public static final CCKM:I = 0x18

.field public static final FILS_SHA256:I = 0x14

.field public static final FT_EAP:I = 0x7

.field public static final FT_PSK:I = 0x6

.field public static final FT_SAE:I = 0x15

.field public static final IEEE8021X:I = 0x3

.field public static final NONE:I = 0x0

.field public static final OSEN:I = 0x5

.field public static final OWE:I = 0x9

.field public static final SAE:I = 0x8

.field public static final SUITE_B_192:I = 0xa

.field public static final WAPI_CERT:I = 0x17

.field public static final WAPI_PSK:I = 0x16

.field public static final WPA2_PSK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WPA_EAP:I = 0x2

.field public static final WPA_PSK:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "key_mgmt"


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-string v0, "NONE"

    const-string v1, "WPA_PSK"

    const-string v2, "WPA_EAP"

    const-string v3, "IEEE8021X"

    const-string v4, "WPA2_PSK"

    const-string v5, "OSEN"

    const-string v6, "FT_PSK"

    const-string v7, "FT_EAP"

    const-string v8, "SAE"

    const-string v9, "OWE"

    const-string v10, "SUITE_B_192"

    const-string v11, "R11"

    const-string v12, "R12"

    const-string v13, "R13"

    const-string v14, "R14"

    const-string v15, "R15"

    const-string v16, "R16"

    const-string v17, "R17"

    const-string v18, "R18"

    const-string v19, "R19"

    const-string v20, "FILS_SHA256"

    const-string v21, "FT_SAE"

    const-string v22, "WAPI_PSK"

    const-string v23, "WAPI_CERT"

    const-string v24, "CCKM"

    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

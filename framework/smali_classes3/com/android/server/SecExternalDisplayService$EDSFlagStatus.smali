.class public final enum Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
.super Ljava/lang/Enum;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDSFlagStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_EVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_HOMETHEATRE:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

.field public static final enum EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_HDMI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_WFD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_SMARTDOCK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_RVF"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_SIDESYNC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_SCREENRECORDING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_HOMETHEATRE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HOMETHEATRE:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_EVF"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_EVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_CAMERA_START"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_STATUS_CAMERA_ROTATION_SUPPORT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_VIDEO"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const-string v1, "EDS_CONNECTION_STATUS_KDDI_AUSHARELINK"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HOMETHEATRE:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_EVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

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

    iput p3, p0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->value:I

    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->values()[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    .locals 1

    const-class v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;
    .locals 1

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, [Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->value:I

    return v0
.end method

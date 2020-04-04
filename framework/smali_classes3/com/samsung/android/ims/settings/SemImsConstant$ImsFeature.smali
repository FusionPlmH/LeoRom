.class public final enum Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;
.super Ljava/lang/Enum;
.source "SemImsConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImsFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

.field public static final enum VIDEO_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

.field public static final enum VOICE_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    const-string v1, "VOICE_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->VOICE_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    new-instance v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    const-string v1, "VIDEO_CALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->VIDEO_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    sget-object v1, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->VOICE_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->VIDEO_CALL:Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->$VALUES:[Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;
    .locals 1

    const-class v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->$VALUES:[Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ims/settings/SemImsConstant$ImsFeature;

    return-object v0
.end method

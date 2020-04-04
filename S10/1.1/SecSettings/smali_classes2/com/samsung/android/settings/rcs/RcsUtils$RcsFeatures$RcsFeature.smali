.class public final enum Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;
.super Ljava/lang/Enum;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RcsFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

.field public static final enum RCSE:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

.field public static final enum RCS_BB_FULL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

.field public static final enum RCS_BB_PARTIAL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

.field public static final enum RCS_CPR:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

.field public static final enum RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

.field public static final enum UNKNOWN:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->UNKNOWN:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    const-string v1, "RCSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCSE:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    const-string v1, "RCS_BB_PARTIAL_BRANDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_BB_PARTIAL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    const-string v1, "RCS_BB_FULL_BRANDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_BB_FULL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    const-string v1, "RCS_EXTRAS_RCS_UI_FOR_OPEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    const-string v1, "RCS_CPR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_CPR:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->UNKNOWN:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCSE:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_BB_PARTIAL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_BB_FULL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_CPR:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->$VALUES:[Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->$VALUES:[Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    return-object v0
.end method

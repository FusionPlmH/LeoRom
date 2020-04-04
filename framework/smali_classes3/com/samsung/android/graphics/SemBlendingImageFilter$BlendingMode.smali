.class public final enum Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;
.super Ljava/lang/Enum;
.source "SemBlendingImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemBlendingImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum BURN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum DARKEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum DIFFERENCE:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum DODGE:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum EXCLUSION:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum GLOW:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum HARD_LIGHT:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum LIGHTEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum MULTIPLY:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum NEGATION:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum NORMAL:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum OVERLAY:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum SCREEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field public static final enum SOFT_LIGHT:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->NORMAL:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "MULTIPLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->MULTIPLY:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "SCREEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->SCREEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "DARKEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DARKEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "LIGHTEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->LIGHTEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "DODGE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DODGE:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "BURN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->BURN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "DIFFERENCE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DIFFERENCE:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "NEGATION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->NEGATION:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "EXCLUSION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->EXCLUSION:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "OVERLAY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->OVERLAY:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "HARD_LIGHT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->HARD_LIGHT:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "SOFT_LIGHT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->SOFT_LIGHT:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    new-instance v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const-string v1, "GLOW"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->GLOW:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->NORMAL:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->MULTIPLY:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->SCREEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DARKEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->LIGHTEN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DODGE:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->BURN:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->DIFFERENCE:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->NEGATION:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->EXCLUSION:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->OVERLAY:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->HARD_LIGHT:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->SOFT_LIGHT:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v14

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->GLOW:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    aput-object v1, v0, v15

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->$VALUES:[Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;
    .locals 1

    const-class v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->$VALUES:[Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v0}, [Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    return-object v0
.end method

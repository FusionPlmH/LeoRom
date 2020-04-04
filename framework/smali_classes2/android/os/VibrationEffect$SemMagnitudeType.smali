.class public final enum Landroid/os/VibrationEffect$SemMagnitudeType;
.super Ljava/lang/Enum;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemMagnitudeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/VibrationEffect$SemMagnitudeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_NOTIFICATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_CALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_MAX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_MIN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_EXTRA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_FORCE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/os/VibrationEffect$SemMagnitudeType;

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    aput-object v1, v0, v8

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->$VALUES:[Landroid/os/VibrationEffect$SemMagnitudeType;

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

.method public static valueOf(Ljava/lang/String;)Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 1

    const-class v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object v0
.end method

.method public static values()[Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 1

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->$VALUES:[Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v0}, [Landroid/os/VibrationEffect$SemMagnitudeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object v0
.end method

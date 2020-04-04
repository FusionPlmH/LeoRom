.class final enum Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;
.super Ljava/lang/Enum;
.source "FingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

.field public static final enum ENROLL:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

.field public static final enum NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

.field public static final enum PAUSE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    const-string v1, "PAUSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    const-string v1, "ENROLL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;
    .locals 1

    const-class v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    invoke-virtual {v0}, [Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    return-object v0
.end method

.class final enum Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;
.super Ljava/lang/Enum;
.source "FingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReduceScreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

.field public static final enum KBD:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

.field public static final enum NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    const-string v1, "KBD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->KBD:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->KBD:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;
    .locals 1

    const-class v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    invoke-virtual {v0}, [Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fingerprint/FingerprintEnrollActivity$ReduceScreenMode;

    return-object v0
.end method

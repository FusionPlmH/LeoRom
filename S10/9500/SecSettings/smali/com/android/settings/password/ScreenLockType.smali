.class public final enum Lcom/android/settings/password/ScreenLockType;
.super Ljava/lang/Enum;
.source "ScreenLockType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ScreenLockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ScreenLockType;

.field public static final enum CHANGE_LOCK_TYPE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum DIRECTION_LOCK:Lcom/android/settings/password/ScreenLockType;

.field public static final enum ENTERPRISE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FACE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FACE_SCAN_SUW:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FINGERPRINT:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FINGERPRINT_KNOX:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FINGERPRINT_PLUS:Lcom/android/settings/password/ScreenLockType;

.field public static final enum INTELLIGENT_SCAN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum INTELLIGENT_SCAN_SUW:Lcom/android/settings/password/ScreenLockType;

.field public static final enum IRIS:Lcom/android/settings/password/ScreenLockType;

.field public static final enum IRIS_KNOX:Lcom/android/settings/password/ScreenLockType;

.field public static final enum MANAGED:Lcom/android/settings/password/ScreenLockType;

.field private static final MAX_QUALITY:Lcom/android/settings/password/ScreenLockType;

.field private static final MIN_QUALITY:Lcom/android/settings/password/ScreenLockType;

.field public static final enum NONE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PASSWORD:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PATTERN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PIN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum SMART_CARD:Lcom/android/settings/password/ScreenLockType;

.field public static final enum SWIPE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum TWO_FACTOR:Lcom/android/settings/password/ScreenLockType;


# instance fields
.field public final defaultQuality:I

.field public final maxQuality:I

.field public final preferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "NONE"

    const-string/jumbo v2, "unlock_set_off"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "SWIPE"

    const-string/jumbo v2, "unlock_set_none"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "PATTERN"

    const-string/jumbo v2, "unlock_set_pattern"

    const/4 v5, 0x2

    const/high16 v6, 0x10000

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v8, "PIN"

    const-string/jumbo v12, "unlock_set_pin"

    const/4 v9, 0x3

    const/high16 v10, 0x20000

    const/high16 v11, 0x30000

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v14, "PASSWORD"

    const-string/jumbo v18, "unlock_set_password"

    const/4 v15, 0x4

    const/high16 v16, 0x40000

    const/high16 v17, 0x60000

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "INTELLIGENT_SCAN_SUW"

    const-string/jumbo v2, "unlock_set_ib"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->INTELLIGENT_SCAN_SUW:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "FACE_SCAN_SUW"

    const-string/jumbo v2, "unlock_set_face"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->FACE_SCAN_SUW:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "MANAGED"

    const-string/jumbo v2, "unlock_set_managed"

    const/4 v8, 0x7

    const/high16 v9, 0x80000

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "DIRECTION_LOCK"

    const-string/jumbo v2, "unlock_set_direction"

    const/16 v9, 0x8

    const v10, 0x10001

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->DIRECTION_LOCK:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "SMART_CARD"

    const-string/jumbo v2, "unlock_set_cac_pin"

    const/16 v10, 0x9

    const/high16 v11, 0x70000

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->SMART_CARD:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "TWO_FACTOR"

    const-string/jumbo v2, "unlock_set_two_factor"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v11, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->TWO_FACTOR:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "ENTERPRISE"

    const-string/jumbo v2, "unlock_set_enterprise_identity"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v12, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->ENTERPRISE:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "FINGERPRINT_KNOX"

    const-string/jumbo v2, "unlock_set_fingerprint"

    const/16 v13, 0xc

    const v14, 0x61000

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->FINGERPRINT_KNOX:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "IRIS_KNOX"

    const-string/jumbo v2, "unlock_set_iris"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v14, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->IRIS_KNOX:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "INTELLIGENT_SCAN"

    const-string/jumbo v2, "switch_intelligentscan"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->INTELLIGENT_SCAN:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "FACE"

    const-string/jumbo v2, "switch_face"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->FACE:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "IRIS"

    const-string/jumbo v2, "switch_iris"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->IRIS:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "FINGERPRINT"

    const-string/jumbo v2, "switch_fingerprint"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->FINGERPRINT:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "FINGERPRINT_PLUS"

    const-string/jumbo v2, "switch_knox_fingerprint_plus"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->FINGERPRINT_PLUS:Lcom/android/settings/password/ScreenLockType;

    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "CHANGE_LOCK_TYPE"

    const-string v2, "pref_lock_type"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->CHANGE_LOCK_TYPE:Lcom/android/settings/password/ScreenLockType;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/settings/password/ScreenLockType;

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->INTELLIGENT_SCAN_SUW:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->FACE_SCAN_SUW:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->DIRECTION_LOCK:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->SMART_CARD:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->TWO_FACTOR:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->ENTERPRISE:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->FINGERPRINT_KNOX:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->IRIS_KNOX:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->INTELLIGENT_SCAN:Lcom/android/settings/password/ScreenLockType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->FACE:Lcom/android/settings/password/ScreenLockType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->IRIS:Lcom/android/settings/password/ScreenLockType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->FINGERPRINT:Lcom/android/settings/password/ScreenLockType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->FINGERPRINT_PLUS:Lcom/android/settings/password/ScreenLockType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->CHANGE_LOCK_TYPE:Lcom/android/settings/password/ScreenLockType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->$VALUES:[Lcom/android/settings/password/ScreenLockType;

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->MIN_QUALITY:Lcom/android/settings/password/ScreenLockType;

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->MAX_QUALITY:Lcom/android/settings/password/ScreenLockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    iput p4, p0, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    iput-object p5, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/high16 v0, 0x900000

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;
    .locals 5

    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromQuality(I)Lcom/android/settings/password/ScreenLockType;
    .locals 1

    if-eqz p0, :cond_4

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    return-object v0

    :cond_3
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    return-object v0

    :cond_4
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;
    .locals 1

    const-class v0, Lcom/android/settings/password/ScreenLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ScreenLockType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/password/ScreenLockType;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->$VALUES:[Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v0}, [Lcom/android/settings/password/ScreenLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ScreenLockType;

    return-object v0
.end method

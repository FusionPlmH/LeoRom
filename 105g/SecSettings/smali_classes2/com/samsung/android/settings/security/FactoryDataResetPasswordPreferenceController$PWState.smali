.class final enum Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;
.super Ljava/lang/Enum;
.source "FactoryDataResetPasswordPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PWState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

.field public static final enum CONFIRM:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

.field public static final enum CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

.field public static final enum NEW:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    const-string v1, "CURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    new-instance v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    const-string v1, "NEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->NEW:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    new-instance v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    const-string v1, "CONFIRM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CONFIRM:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    sget-object v1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->NEW:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CONFIRM:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->$VALUES:[Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->$VALUES:[Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    return-object v0
.end method

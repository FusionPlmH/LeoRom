.class public final enum Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;
.super Ljava/lang/Enum;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

.field public static final enum INDICATOR:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

.field public static final enum QUICKHEADER:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    const-string v1, "INDICATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->INDICATOR:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    const-string v1, "QUICKHEADER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->QUICKHEADER:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->INDICATOR:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->QUICKHEADER:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->$VALUES:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->$VALUES:[Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager$GroupType;

    return-object v0
.end method

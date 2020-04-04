.class final enum Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;
.super Ljava/lang/Enum;
.source "SecVolumeLimiterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

.field public static final enum ConfirmWrong:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

.field public static final enum Introduction:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

.field public static final enum NeedToConfirm:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f121548

    const v4, 0x7f12154a

    const v5, 0x7f120dad

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    const-string v8, "NeedToConfirm"

    const/4 v9, 0x1

    const v10, 0x7f120d92

    const v11, 0x7f120da6

    const v12, 0x7f1213fa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    const-string v2, "ConfirmWrong"

    const/4 v3, 0x2

    const v4, 0x7f120d8c

    const v5, 0x7f1215e1

    const v6, 0x7f120dad

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    sget-object v1, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->$VALUES:[Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->alphaHint:I

    iput p4, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->numericHint:I

    iput p5, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->$VALUES:[Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    return-object v0
.end method

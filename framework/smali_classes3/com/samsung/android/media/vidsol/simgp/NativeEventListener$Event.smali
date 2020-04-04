.class public final enum Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;
.super Ljava/lang/Enum;
.source "NativeEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

.field public static final enum ERROR:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

.field public static final enum INFO:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

.field public static final enum NONE:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

.field public static final enum WARN:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->NONE:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const-string v1, "INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->INFO:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const-string v1, "WARN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->WARN:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->ERROR:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->NONE:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->INFO:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->WARN:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->ERROR:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;
    .locals 1

    const-class v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    return-object v0
.end method

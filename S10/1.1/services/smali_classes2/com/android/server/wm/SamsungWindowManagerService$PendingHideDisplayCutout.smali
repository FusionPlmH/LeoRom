.class Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;
.super Ljava/lang/Object;
.source "SamsungWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingHideDisplayCutout"
.end annotation


# instance fields
.field density:I

.field height:I

.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;

.field width:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;Lcom/android/server/wm/SamsungWindowManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->setPendingHideDisplayCutout(III)V

    return-void
.end method

.method private setPendingHideDisplayCutout(III)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->width:I

    iput p2, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->height:I

    iput p3, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->density:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->density:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

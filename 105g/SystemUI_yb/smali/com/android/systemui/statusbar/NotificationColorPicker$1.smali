.class Lcom/android/systemui/statusbar/NotificationColorPicker$1;
.super Landroid/os/Handler;
.source "NotificationColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationColorPicker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker$1;->this$0:Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker$1;->this$0:Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->access$000(Lcom/android/systemui/statusbar/NotificationColorPicker;)V

    nop

    :goto_0
    return-void
.end method
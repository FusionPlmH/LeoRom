.class Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;
.super Landroid/os/Handler;
.source "AirplaneModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->access$000(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    nop

    :goto_0
    return-void
.end method

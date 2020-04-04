.class Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$2;
.super Ljava/lang/Object;
.source "UserNamePreferenceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "PrefControllerMixin"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$302(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$400(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "PrefControllerMixin"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->access$302(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method

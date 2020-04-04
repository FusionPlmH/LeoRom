.class Lcom/samsung/android/settings/GigaLteSettings$1;
.super Landroid/database/ContentObserver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GigaLteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->access$000(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->access$100(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->access$200(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings$1;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaLteSettings;->access$200(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

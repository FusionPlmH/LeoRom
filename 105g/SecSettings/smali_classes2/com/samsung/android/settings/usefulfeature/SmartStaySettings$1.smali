.class Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;
.super Landroid/database/ContentObserver;
.source "SmartStaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->access$000(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->access$000(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->access$100(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method

.class Lcom/samsung/android/settings/display/StatusBar$1;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/StatusBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/StatusBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/StatusBar$1;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    const-string/jumbo v0, "simple_status_bar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$1;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/StatusBar;->access$000(Lcom/samsung/android/settings/display/StatusBar;)V

    goto :goto_0

    :cond_0
    const-string v0, "display_battery_percentage"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$1;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/StatusBar;->access$200(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$1;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->access$100(Lcom/samsung/android/settings/display/StatusBar;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_battery_percentage"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$1;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/StatusBar;->access$300(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar$1;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/StatusBar;->access$300(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/StatusBar$ShowNetworkInfoHelper;->updateSwitchBox()V

    :cond_3
    :goto_0
    return-void
.end method

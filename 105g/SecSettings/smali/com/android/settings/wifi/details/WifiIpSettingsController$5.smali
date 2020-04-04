.class Lcom/android/settings/wifi/details/WifiIpSettingsController$5;
.super Ljava/lang/Object;
.source "WifiIpSettingsController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiIpSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "WifiIpSettingsController"

    const-string v1, "OnFocusChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->updateImeOptionsForEditText()V

    return-void
.end method

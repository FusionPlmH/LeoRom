.class Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog$1;
.super Ljava/lang/Object;
.source "WifiSetupFrpWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupFrpWarningDialog;->forget(Landroid/content/Context;)V

    return-void
.end method

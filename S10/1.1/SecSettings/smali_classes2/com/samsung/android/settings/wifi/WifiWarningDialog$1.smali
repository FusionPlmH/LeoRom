.class Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWarningDialog;->showSimRemovedDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const-string v1, "WifiWarningDialog"

    const-string v2, "SimRemovedDialog press BACK key"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->access$000(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

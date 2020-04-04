.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$9;
.super Ljava/lang/Object;
.source "SecEdgeColorBalanceProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->showEdgeColorBalanceWasStoppedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$9;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$9;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$1000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$9;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->finish()V

    return-void
.end method

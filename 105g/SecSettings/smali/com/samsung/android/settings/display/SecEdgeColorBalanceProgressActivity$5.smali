.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$5;
.super Ljava/lang/Object;
.source "SecEdgeColorBalanceProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->showEdgeColorBalanceCancelDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$5;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$5;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1d22

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$4;
.super Ljava/lang/Object;
.source "SecEdgeColorBalanceSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->showEdgeColorBalanceApplyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/16 v0, 0x1d24

    const/16 v1, 0x1d21

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$600(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V

    return-void
.end method

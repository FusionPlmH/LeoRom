.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$6;
.super Ljava/lang/Object;
.source "SecEdgeColorBalanceSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->showEdgeColorBalanceWriteErrorOccuredOnBootDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$6;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$6;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$700(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->removeEfsEdgeColorBalanceErrorOccurredOnBoot()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

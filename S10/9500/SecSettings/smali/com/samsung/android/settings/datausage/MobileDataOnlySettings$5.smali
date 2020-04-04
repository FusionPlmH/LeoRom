.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$300(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$200(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/net/UrspManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/UrspManager;->getUrspMode(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$400(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$200(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/net/UrspManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/UrspManager;->getUrspMode(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$400(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->notifyDataSetChanged()V

    return-void
.end method

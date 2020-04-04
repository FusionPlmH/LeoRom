.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

.field final synthetic val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v1, v1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->access$1400(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->access$1500(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/net/UrspManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v2, v2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/net/UrspManager;->setUrspRule(IZI)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->access$1600(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->access$1600(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v2, v2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->access$1700(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f121571

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    const/16 v0, 0x1be9

    const/16 v1, 0x1bec

    if-eqz p2, :cond_2

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
